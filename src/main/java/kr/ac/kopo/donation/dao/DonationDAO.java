package kr.ac.kopo.donation.dao;

import java.util.List;
import java.util.Map;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.page.vo.Criteria;

@Repository
public class DonationDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<DonationVO> showDonationList() {
		List<DonationVO> donationList = sqlSessionTemplate.selectList("donation.dao.donationDAO.selectDonationList");
		return donationList;
	}

	public 	List<DonationVO>  showDonationPagingList(Criteria cri) {
		List<DonationVO> donationList = sqlSessionTemplate.selectList("donation.dao.donationDAO.selectDonationPagingList", cri);
		return donationList;
	}

	public List<DonationVO> showDonationKeywordList(String keyword) {
		System.out.println(keyword);
		List<DonationVO> donationList = sqlSessionTemplate.selectList("donation.dao.donationDAO.selectDonationKeywordList", keyword);
	    System.out.println("donationList DAO: "+donationList);
		return donationList;
	}

	public DonationVO getDonationDetail(int donationNo) {
		DonationVO donation = sqlSessionTemplate.selectOne("donation.dao.donationDAO.selectDonationOne", donationNo);
		return donation;
	}

	
}
