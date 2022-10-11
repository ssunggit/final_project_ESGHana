package kr.ac.kopo.member.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class MemberDAO {

	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public MemberVO login(MemberVO member) {
		
		MemberVO loginMember = sqlSessionTemplate.selectOne("member.dao.memberDAO.login", member);
		
		return loginMember;
	}

	public CompanyVO companyCheck(CompanyVO company) {
		System.out.println("dao" + company);
		CompanyVO companyVO  = sqlSessionTemplate.selectOne("company.dao.companyDAO.checkCompany", company);
		System.out.println("dao: "+ companyVO);
		return companyVO;
	}

	public void signup(MemberVO member) {
		sqlSessionTemplate.insert("member.dao.memberDAO.signupCompany",member);
	}

	public void updatePoint(ChallengeHistoryVO challengeHistoryVO) {
		MemberVO memberVO = new MemberVO();
		memberVO.setId(challengeHistoryVO.getId());
		memberVO.setPoint(challengeHistoryVO.getChallengePoint());
		System.out.println("memberDAO pointTest");
		sqlSessionTemplate.update("member.dao.memberDAO.updatePoint",memberVO);
	}
}
