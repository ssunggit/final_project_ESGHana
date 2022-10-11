package kr.ac.kopo.donation.controller;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.ac.kopo.donation.service.DonationService;
import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;
import kr.ac.kopo.page.vo.Criteria;
import kr.ac.kopo.page.vo.PageVO;


@Controller
public class DonationController {
	
	@Autowired
	private DonationService donationService;
	
	/**
	 * 기부리스트 폼 이동
	 */
	@RequestMapping("/donation_list")
	public ModelAndView showdonationList(@ModelAttribute("cri") Criteria cri, Model model) throws Exception {
		
		ModelAndView mav = new ModelAndView("donation/donation_list");
		PageVO page = new PageVO();
		page.setCri(cri);
		
		// donation 테이블 게시글 수 99
		page.setTotalCount(99);

		List<DonationVO> donationList =  donationService.showDonationPagingList(cri);
		
		mav.addObject("donationList", donationList);
		mav.addObject("page", page);
		
		return mav;
	}
	
	/**
	 * 기부 정보 검색 
	 * @param keyword
	 * @param model
	 * @return
	 */
	@GetMapping("/getSearchList")
	@ResponseBody
	public List<DonationVO> getSearchList(@RequestParam("keyword") String keyword, Model model) {
		List<DonationVO> donationList = donationService.showDonationKeywordList(keyword);

		return donationList;
	}
	
	/**
	 * 기부 상세페이지
	 * @throws ParseException 
	 */
	@RequestMapping("/donationDetail/{donationNo}")
	public String getDonationDetail(@PathVariable("donationNo") int donationNo, Model model) throws ParseException {
		DonationVO donation = donationService.getDonationDetail(donationNo);
		
		// 현재날짜
		String todayFm = new SimpleDateFormat("yyyy-MM-dd").format(new Date(System.currentTimeMillis())); // 오늘날짜
		
		
		String donationStartDate = donation.getDonationStartDate();
		String donationEndDate = donation.getDonationEndDate();
		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		
		// date형으로 변환한 후 
		Date startDate = sdf.parse(donationStartDate);
		Date endDate = sdf.parse(donationEndDate);
		
		Date today = new SimpleDateFormat("yyyy-MM-dd").parse(todayFm);
	 
        long diffSec = (startDate.getTime() - today.getTime()) / 1000; //초 차이
//        long diffMin = (format1.getTime() - format2.getTime()) / 60000; //분 차이
//        long diffHor = (format1.getTime() - format2.getTime()) / 3600000; //시 차이
        
        long diffDays = diffSec / (24*60*60); //일자수 차이
        
        // 데이터 포멧 적용
        String donationStartDateSdf = sdf.format(startDate); 
        String donationEndDateSdf = sdf.format(endDate); 
        
        donation.setDonationStartDate(donationStartDateSdf);
        donation.setDonationEndDate(donationEndDateSdf);
        
        double percent =  ((double)donation.getDonationCurrentAmount() / (double)donation.getDonationGoal() ) * 100;
		
		long doPercent = Math.round(percent);
        
        
        model.addAttribute("dDay",diffDays);
        model.addAttribute("donation",donation);
        model.addAttribute("doPercent",doPercent);
        
		return "donation/donation_detail";
	}
	
}
