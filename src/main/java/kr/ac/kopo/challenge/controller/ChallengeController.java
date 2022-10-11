package kr.ac.kopo.challenge.controller;

import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
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
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import kr.ac.kopo.challenge.Service.ChallengeService;
import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.challenge.vo.ChallengeVO;
import kr.ac.kopo.challengeCompanyJoin.vo.ChallengeCompanyJoinVO;
import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.member.vo.MemberVO;

@Controller
public class ChallengeController {
	
	@Autowired
	private ChallengeService challengeService;
	
	@GetMapping("/mycompanychallengeList")
	public String showCompanyChallengeList(HttpSession session, Model model) {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String companyCode = loginVO.getCompanyCode();
		
		CompanyVO companyVO = challengeService.userCompanyInfo(companyCode);
		model.addAttribute("companyVO", companyVO);
		return "challenge/companyChallengeList";
	}
	
	@GetMapping("/mycompanychallenge")
	public String showCompanyChallenge(HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		
		String companyCode = loginVO.getCompanyCode();
		
		CompanyVO companyVO = challengeService.userCompanyInfo(companyCode);
		ChallengeVO challengeVO = challengeService.userCompanyChallenge(companyCode);
		
		Map rank1member = challengeService.userChallengeRank1(challengeVO.getChallengeCode());
		Map rank2member = challengeService.userChallengeRank2(challengeVO.getChallengeCode());
		Map rank3member = challengeService.userChallengeRank3(challengeVO.getChallengeCode());
		System.out.println("rank1member : "+rank1member);
		
		int rank1memberCount = challengeService.userChallengeRankCount1(challengeVO.getChallengeCode());
		int rank2memberCount = challengeService.userChallengeRankCount2(challengeVO.getChallengeCode());
		int rank3memberCount = challengeService.userChallengeRankCount3(challengeVO.getChallengeCode());
	
		model.addAttribute("loginVO", loginVO);
		model.addAttribute("companyVO", companyVO);
		model.addAttribute("challengeVO", challengeVO);
		
		model.addAttribute("rank1member", rank1member);
		model.addAttribute("rank2member", rank2member);
		model.addAttribute("rank3member", rank3member);
		
		model.addAttribute("rank1memberCount", rank1memberCount);
		model.addAttribute("rank2memberCount", rank2memberCount);
		model.addAttribute("rank3memberCount", rank3memberCount);
		
		return "challenge/companyChallengeDetail";
		
	}
	
	@ResponseBody
	@PostMapping("/uploadfile")
	public String fileUpload(
			@RequestParam("file1") MultipartFile file, 
			@RequestParam("challengeCode") String challengeCode,
			@RequestParam("challengePoint") int challengePoint,
			Model model, HttpSession session) 
			throws IllegalStateException, IOException {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		if(!file.isEmpty()) {
			String fullPath = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/"+file.getOriginalFilename();
			//String fullPath = "D:/Lecture/spring-workspace/final_project_mzhana/src/main/webapp/resources/file/"+file.getOriginalFilename();
			file.transferTo(new File(fullPath));
			
			String fileOCR = challengeService.fileOCR(file.getOriginalFilename());
			
			if(fileOCR == "성공") {
				ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
				challengeHistoryVO.setChallengeCode(challengeCode);
				challengeHistoryVO.setChallengePoint(challengePoint);
				challengeHistoryVO.setId(loginId);
				challengeService.challengePoint(challengeHistoryVO);
				
			}
			
			return fileOCR;
			
		}
	
		return "실패";
	}
	
	// 챌린지별 포인트 
	@GetMapping("/myPoint/{challengeCode}")
	public String myPoint(@PathVariable("challengeCode") String challengeCode,HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
		
		challengeHistoryVO.setId(loginId);
		challengeHistoryVO.setChallengeCode(challengeCode);

		List<ChallengeHistoryVO> challengeHistoryList = challengeService.challengeHistory(challengeHistoryVO);
		int sumChallengePoint = challengeService.sumChallengePoint(challengeHistoryVO);
		
		model.addAttribute("challengeCode", challengeCode);
		model.addAttribute("challengeHistoryList", challengeHistoryList);
		model.addAttribute("sumChallengePoint", sumChallengePoint);
		
		return "challenge/point";
		
	}
	@ResponseBody
	@PostMapping("/myPoint/calendar")
	public List<Map<String, String>> myPointCalendar(@RequestParam("challengeCode") String challengeCode,HttpSession session, Model model) {
		System.out.println("calendar ajax 테스트 :" + challengeCode);
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginId = loginVO.getId();
		
		ChallengeHistoryVO challengeHistoryVO = new ChallengeHistoryVO();
		
		challengeHistoryVO.setId(loginId);
		challengeHistoryVO.setChallengeCode(challengeCode);
		
		List<ChallengeHistoryVO> challengeHistoryList = challengeService.challengeHistory(challengeHistoryVO);
		int i = 1;
		for (ChallengeHistoryVO challengeHistory : challengeHistoryList) {
			System.out.println("challengeHistoryList controller: " + i+challengeHistory);
			i++;
		}
		List<Map<String, String>> calendarList = new ArrayList<Map<String, String>>();
		 
		for (ChallengeHistoryVO challengeHistory : challengeHistoryList) {
			HashMap<String, String> map = new HashMap<String, String>();
			
			map.put("title", challengeHistory.getChallengeCode());
			map.put("start", challengeHistory.getChallengeDate());
            
            calendarList.add(map);
		}
		System.out.println("calendarList: " + calendarList);
		return calendarList;
		
	}
	
	@GetMapping("/companyManager")
	public String companyManager(HttpSession session, Model model) {
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		List<Map<String, String>> companyMemberList =  challengeService.companyMemberList(loginVO.getCompanyCode());
		
		model.addAttribute("companyMemberList", companyMemberList);
		
		return "manager/companymanager";
	}
	
	@PostMapping("/admin/challengeInsert")
	public String insertChallenge(ChallengeVO challengeVO,  @RequestParam("challengeImageFile") MultipartFile file) throws IllegalStateException, IOException {
		// 이 경로에 챌린지 사진 저장 
		//String fullPath = "D:/Lecture/spring-workspace/final_project_mzhana/src/main/webapp/resources/file/challenge/"+file.getOriginalFilename();
		String fullPath = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/challenge/"+file.getOriginalFilename();
		file.transferTo(new File(fullPath));
		
		challengeVO.setChallengeImage(file.getOriginalFilename());
		
		challengeService.insertChallenge(challengeVO);
		return "redirect:/admin";
		
	} 
	

	@GetMapping("/challengeChoice")
	public String showAdminPage(Model model, HttpSession session) {
		
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginCompanyCode = loginVO.getCompanyCode();
		List<ChallengeCompanyJoinVO> challengeJoinList = challengeService.companyChallengeList(loginCompanyCode);
		
		
		List<ChallengeVO> challengeList = challengeService.allChallenge();
		
		model.addAttribute("challengeList", challengeList);
		model.addAttribute("challengeJoinList", challengeJoinList);
		
		return "manager/companyChallengeChoice";
	}
	
	@PostMapping("/challengeCompanyJoin")
	public String challengeCompanyJoin(String[] challengeCode, String[] challengeName, HttpSession session){
		MemberVO loginVO = (MemberVO)session.getAttribute("loginVO");
		String loginCompanyCode = loginVO.getCompanyCode();
		
		for(int i=0; i < challengeName.length; i++) {
			
			ChallengeCompanyJoinVO challengeCompanyJoin = new ChallengeCompanyJoinVO();
			
			challengeCompanyJoin.setCompanyCode(loginCompanyCode);
			challengeCompanyJoin.setChallengeCode(challengeCode[i]);
			challengeCompanyJoin.setChallengeName(challengeName[i]);
			
			challengeService.challengeCompanyJoin(challengeCompanyJoin);
			
		}
		
		return "redirect:/challengeChoice";
		
	} 
	
	
	
}
