package kr.ac.kopo.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.service.MemberService;
import kr.ac.kopo.member.vo.MemberVO;

@SessionAttributes("loginVO")
@Controller
public class MemberController {

	@Autowired
	private MemberService memberService;
	
	@GetMapping("/login")
	public String loginForm() {
		
		return "member/login";
	}
	
	@PostMapping("/login")
	public String login(MemberVO member, Model model, HttpSession session) {
		
		MemberVO loginVO = memberService.login(member);
		
		if(loginVO == null) {
			String msg = "아이디 또는 패스워드가 잘못되었습니다";
			model.addAttribute("msg", msg);
			
			return "member/login";
		}
		
		model.addAttribute("loginVO", loginVO);
		System.out.println("loginVO" + loginVO);

		session.setAttribute("loginVO",loginVO);
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String logout(SessionStatus sessionStatus) {
		System.out.println(sessionStatus.isComplete());
		sessionStatus.setComplete();
		return "redirect:/";
	}
	
	@GetMapping("/signup")
	public String singup() {
		return "member/signup";
	}
	
	@PostMapping("/signup")
	public String singupPost(MemberVO member) {
		
		memberService.signup(member);
		return "redirect:/login";
	}
	
	@GetMapping("/signupCompany")
	public String signupCompany() {
		return "member/signupCompany";
	}
	
	@ResponseBody
	@PostMapping("/companyCheck")
	public String companyCheck(CompanyVO company, Model model, HttpSession session) {
		
		CompanyVO companyVO = memberService.companyCheck(company);
		if(companyVO == null) {
			 return null;
		}
		
		String companyCode = companyVO.getCompanyCode();
		System.out.println("companyVO : " + companyVO);
		return companyCode;
	}
	

}
