package kr.ac.kopo.donationHistory.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kr.ac.kopo.donationHistory.service.DonationHistoryService;
import kr.ac.kopo.donationHistory.vo.DonationHistoryVO;
import kr.ac.kopo.member.vo.MemberVO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;

@Controller
public class DonationHistoryController {
	
	@Autowired
	private DonationHistoryService donationHistoryService;
	
	@PostMapping("/donateNow")
	public String donateNow(DonationHistoryVO donationHistoryVO, HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		donationHistoryVO.setName(loginVO.getName());

		donationHistoryService.donateNow(donationHistoryVO);
		
		return "redirect:/";
	}
	
	@GetMapping("/showDonationHistoryList")
	public String showMoneyBoxList(HttpServletRequest request, HttpSession session) {
		
		String loginName = ((MemberVO)session.getAttribute("loginVO")).getName();
		
		List<DonationHistoryVO> donationHistoryList = new ArrayList<>();
		
		donationHistoryList = donationHistoryService.showDonationHistoryList(loginName);
		
		request.setAttribute("donationHistoryList", donationHistoryList);
		
		return "tax/tax_list";
	}
	
	@RequestMapping("/taxDetail/{donationHistoryNo}")
	public String showTaxDetail(@PathVariable("donationHistoryNo") int donationHistoryNo, Model model, HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		DonationHistoryVO donationHistoryVO = donationHistoryService.showTaxDetail(donationHistoryNo);
		
		model.addAttribute("donationHistory", donationHistoryVO);
		model.addAttribute("loginVO", loginVO);
		
		return "tax/tax_detail";
	}
	
	@ResponseBody
	@RequestMapping("/taxMail/{donationHistoryNo}")
	public HashMap<String, String> taxMail(@PathVariable("donationHistoryNo") int donationHistoryNo, Model model, HttpSession session) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String email = loginVO.getEmail();
		System.out.println("donationHistoryNo 메일 테스트 " + donationHistoryNo);
		
		donationHistoryService.taxEmail(email);
		
		HashMap<String, String> response = new HashMap<String, String>();
		response.put("response", "메일전송성공!");
		
		return response;

	}
	
	
	
	
}
