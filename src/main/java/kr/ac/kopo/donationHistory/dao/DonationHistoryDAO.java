package kr.ac.kopo.donationHistory.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.donationHistory.vo.DonationHistoryVO;

@Repository
public class DonationHistoryDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertdonateNow(DonationHistoryVO donationHistoryVO) {
		sqlSessionTemplate.insert("donationHistory.dao.donationHistoryDAO.insertDonate",donationHistoryVO);
	}

	public List<DonationHistoryVO> showDonationHistoryList(String name) {
		List<DonationHistoryVO> donationHistoryList = sqlSessionTemplate.selectList("donationHistory.dao.donationHistoryDAO.selectDonationHistoryList", name);
		return donationHistoryList;
	}

	public DonationHistoryVO showTaxDetail(int donationHistoryNo) {
		DonationHistoryVO donationHistoryVO= sqlSessionTemplate.selectOne("donationHistory.dao.donationHistoryDAO.selectOnedonationHistory",donationHistoryNo);
		return donationHistoryVO;
	}
}
