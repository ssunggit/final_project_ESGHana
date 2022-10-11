package kr.ac.kopo.admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.ac.kopo.challenge.Service.ChallengeService;
import kr.ac.kopo.challenge.vo.ChallengeVO;
import kr.ac.kopo.donation.service.DonationService;
import kr.ac.kopo.donation.vo.DonationVO;

@Controller
public class AdminController {
	
	@Autowired
	private ChallengeService challengeService;
	@Autowired
	private DonationService donationService;
	
	
	@GetMapping("/admin")
	public String showAdminPage(Model model) {
		
		List<ChallengeVO> challengeList = challengeService.allChallenge();
		List<DonationVO> donationList = donationService.showDonationList();
		
		model.addAttribute("challengeList", challengeList);
		model.addAttribute("donationList", donationList);
		
		return "admin/admin_index";
	}
}

