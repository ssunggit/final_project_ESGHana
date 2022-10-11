package kr.ac.kopo.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.dao.MemberDAO;
import kr.ac.kopo.member.vo.MemberVO;

@Service
public class MemberService {

	@Autowired
	private MemberDAO memberDAO;
	
	public MemberVO login(MemberVO member) {
		MemberVO loginMember = memberDAO.login(member);
		return loginMember;
	}

	public CompanyVO companyCheck(CompanyVO company) {
		CompanyVO companyVO = memberDAO.companyCheck(company);
		return companyVO;
	}

	public void signup(MemberVO member) {
		memberDAO.signup(member);
		
	}
}
