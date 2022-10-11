package kr.ac.kopo.challenge.dao;


import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.challenge.vo.ChallengeVO;
import kr.ac.kopo.challengeCompanyJoin.vo.ChallengeCompanyJoinVO;
import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.vo.MemberVO;

@Repository
public class ChallengeDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public CompanyVO userCompanyInfo(String companyCode) {
		CompanyVO companyVO = sqlSessionTemplate.selectOne("company.dao.companyDAO.userCompanyInfo",companyCode);
		return companyVO;
	}

	public ChallengeVO userCompanyChallenge(String companyCode) {
		ChallengeVO challengeVO = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userCompanyChallenge",companyCode);
		return challengeVO;
	}

	public void challengePoint(ChallengeHistoryVO challengeHistoryVO) {
		sqlSessionTemplate.insert("challenge.dao.challengeDAO.insertChallengePoint",challengeHistoryVO);
	}

	public List<ChallengeHistoryVO> challengeHistory(ChallengeHistoryVO challengeHistoryVO) {
		List<ChallengeHistoryVO> challengeHistoryList = sqlSessionTemplate.selectList("challenge.dao.challengeDAO.selectChallengeHistory",challengeHistoryVO);
		return challengeHistoryList;
	}

	public int sumChallengePoint(ChallengeHistoryVO challengeHistoryVO) {
		int sumChallengePoint= 
				sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.sumChallengePoint",challengeHistoryVO);
		return sumChallengePoint;
	}

	public Map userChallengeRank1(String challengeCode) {
		Map member1 = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRank1", challengeCode);
		
		return member1;
	}

	public Map userChallengeRank2(String challengeCode) {
		Map member2 = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRank2", challengeCode);
		
		return member2;
	}

	public Map userChallengeRank3(String challengeCode) {
		Map member3 = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRank3", challengeCode);
		
		return member3;
	}

	public int userChallengeRankCount1(String challengeCode) {
		int rank1memberCount = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRankCount1", challengeCode);
		return rank1memberCount;
	}

	public int userChallengeRankCount2(String challengeCode) {
		int rank2memberCount = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRankCount2", challengeCode);
		return rank2memberCount;
	}

	public int userChallengeRankCount3(String challengeCode) {
		int rank3memberCount = sqlSessionTemplate.selectOne("challenge.dao.challengeDAO.userChallengeRankCount3", challengeCode);
		return rank3memberCount;
	}

	public List<Map<String, String>> companyMemberList(String companyCode) {
		List<Map<String, String>> companyMemberList = sqlSessionTemplate.selectList("challenge.dao.challengeDAO.companyMemberList", companyCode);
		return companyMemberList;
	}

	public List<ChallengeVO> allChallenge() {
		List<ChallengeVO> challengeList 
		= sqlSessionTemplate.selectList("challenge.dao.challengeDAO.allChallenge");
		return challengeList;
	}

	public void insertChallenge(ChallengeVO challengeVO) {
		sqlSessionTemplate.insert("challenge.dao.challengeDAO.insertChallenge",challengeVO);
		
	}

	public void challengeCompanyJoin(ChallengeCompanyJoinVO challengeCompanyJoin) {
		sqlSessionTemplate.insert("challenge.dao.challengeDAO.insertchallengeCompanyJoin",challengeCompanyJoin);
	}

	public List<ChallengeCompanyJoinVO> companyChallengeList(String loginCompanyCode) {
		List<ChallengeCompanyJoinVO> challengeJoinList = sqlSessionTemplate.selectList("challenge.dao.challengeDAO.selectCompanyChallengeList",loginCompanyCode);
		
		return challengeJoinList;
	}
	
	
}
