package kr.ac.kopo.moneybox.controller;


import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import kr.ac.kopo.account.service.AccountService;
import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.donation.service.DonationService;
import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.moneybox.service.MoneyBoxService;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;
import kr.ac.kopo.saving.vo.SavingVO;

@Controller
public class MoneyBoxController {

	@Autowired
	private MoneyBoxService moneyBoxService;

	@Autowired
	private AccountService accountService;
	
	@Autowired
	private DonationService donationService;
	/**
	 * 기부 저금통 개설 폼 이동
	 */
	@GetMapping("/moneybox/moneybox_openform/{donationNo}")
	public String openformMoneyBox(@PathVariable("donationNo") int donationNo,HttpSession session, Model model) {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		// 사용자의 계좌번호 조회
		List<AccountVO> accountList =accountService.selectAccountList(loginVO.getId());
		DonationVO donation = donationService.getDonationDetail(donationNo);
		String sysdate = moneyBoxService.getSysdate();
		model.addAttribute("accountList", accountList);
		model.addAttribute("donation", donation);
		model.addAttribute("sysdate", sysdate);
		return "moneybox/moneybox_openform";
	}
	
	/**
	 * 기부저금통 개설
	 */
	@PostMapping("/insertMoneyBox")
	public String insertMoneyBox(MoneyBoxVO moneyBoxVO, HttpSession session) {
		System.out.println("moneyBoxVO : " + moneyBoxVO);
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		moneyBoxVO.setId(loginVO.getId());

		moneyBoxService.insertMoneyBox(moneyBoxVO);
		
		return "redirect:/showMoneyBoxList";
	}
	
	/**
	 * 로그인 한 유저의 기부저금통 목록 조회 
	 */
	@GetMapping("/showMoneyBoxList")
	public String showMoneyBoxList(HttpServletRequest request, HttpSession session) {
		
		String loginId = ((MemberVO)session.getAttribute("loginVO")).getId();
		
		List<MoneyBoxVO> moneyBoxList = new ArrayList<>();
		
		moneyBoxList = moneyBoxService.showMoneyBoxList(loginId);

		
		for (MoneyBoxVO moneyBox : moneyBoxList) {
			
			double percent =  ((double)moneyBox.getBalance() / (double)moneyBox.getDonationAmount() ) * 100;
			
			long mbPercent = Math.round(percent);
			
			moneyBox.setMbPercent(mbPercent);
			
		}
		
		request.setAttribute("moneyBoxList", moneyBoxList);
		
		return "moneybox/moneybox_list";
	}
	
	/**
	 * 기부저금통 상세페이지
	 * @throws ParseException 
	 */
	@RequestMapping("/moneyboxDetail/{mbNo}")
	public String showMoneyBoxOne(@PathVariable("mbNo") int mbNo, Model model, HttpSession session) throws ParseException {
		MoneyBoxVO moneyBox = moneyBoxService.showMoneyBoxOne(mbNo);
		String loginName = ((MemberVO)session.getAttribute("loginVO")).getName();
		
		List<SavingVO> saving = moneyBoxService.showSavingList(mbNo);
		
		double percent =  ((double)moneyBox.getBalance() / (double)moneyBox.getDonationAmount() ) * 100;
		
		long mbPercent = Math.round(percent);
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		// 현재날짜
		String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜
				
		String mbEndDate = moneyBox.getMbEndDate();
		String mbStartDate = moneyBox.getMbStartDate();
		
		Date startDate = sdf.parse(mbStartDate);
		Date endDate = sdf.parse(mbEndDate);
		Date today = sdf.parse(todayFm);
		
		String startDateSdf = sdf.format(startDate); 
        String endDateSdf = sdf.format(endDate); 
        
        moneyBox.setMbStartDate(startDateSdf);
        moneyBox.setMbEndDate(endDateSdf);

		long diffSec = (endDate.getTime() - today.getTime()) / 1000;
		
		long dDays = diffSec / (24*60*60); 
		System.out.println("moneyBox : " + moneyBox);
		
		model.addAttribute("loginName",loginName);
		model.addAttribute("sysdate",todayFm);
		model.addAttribute("dDay",dDays);
		model.addAttribute("mb_percent",mbPercent);
		model.addAttribute("moneyBox",moneyBox);
		model.addAttribute("saving",saving);
		
		return "moneybox/moneybox_detail";
	}
	
	/**
	 * 기부리스트 폼 이동
	 * @return
	 */
	@RequestMapping("/moneybox/moneyboxlist")
	public String showdonationList() {
		
		return "moneybox/moneybox_list";
	}
	/*
	@Scheduled(cron = "* * * * * *")
	public void MonthlySaving1test() {
		System.out.println("MonthlySaving1test");
		List<MoneyBoxVO> moneyBoxList = moneyBoxService.showAllMoneyBoxList1days();
		
		for (MoneyBoxVO moneyBoxVO : moneyBoxList) {
			moneyBoxService.monthlySaving(moneyBoxVO);
		}
	}
	
	*/
	/**
	 * 자동저금 1일
	 */
//	@Scheduled(cron = "* * * * * *")
	@Scheduled(cron = "0 0 10 1 * *")
	public void monthlySaving1() {
		System.out.println("monthlySaving1");
		List<MoneyBoxVO> moneyBoxList = moneyBoxService.showAllMoneyBoxList1days();
		for (MoneyBoxVO moneyBoxVO : moneyBoxList) {
			moneyBoxService.monthlySaving(moneyBoxVO);
		}
	}
	
	

	/**
	 * 자동저금 10일
	 */
	@Scheduled(cron = "0 0 10 10 * *")
	public void monthlySaving10() {
		System.out.println("monthlySaving10");
		
		List<MoneyBoxVO> moneyBoxList = moneyBoxService.showAllMoneyBoxList10days();
		
		for (MoneyBoxVO moneyBoxVO : moneyBoxList) {
			moneyBoxService.monthlySaving(moneyBoxVO);
		}
	}
	

	/**
	 * 자동저금 15일
	 */
	@Scheduled(cron = "0 0 10 15 * *")
	public void monthlySaving15() {
		System.out.println("monthlySaving15");
		List<MoneyBoxVO> moneyBoxList = moneyBoxService.showAllMoneyBoxList15days();
		for (MoneyBoxVO moneyBoxVO : moneyBoxList) {
			moneyBoxService.monthlySaving(moneyBoxVO);
		}
	}
	

	/**
	 * 자동저금 20일
	 */
	@Scheduled(cron = "0 0 10 20 * *")
	public void monthlySaving20() {
		System.out.println("monthlySaving20");
		List<MoneyBoxVO> moneyBoxList = moneyBoxService.showAllMoneyBoxList20days();
		for (MoneyBoxVO moneyBoxVO : moneyBoxList) {
			moneyBoxService.monthlySaving(moneyBoxVO);
		}
	}
	
}
