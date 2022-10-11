package kr.ac.kopo.donation.service;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.donation.dao.DonationDAO;
import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.page.vo.Criteria;

@Service
public class DonationService {
	
	@Autowired
	private DonationDAO donationDAO;

	public List<DonationVO> showDonationList() {
		
		List<DonationVO> donationList = donationDAO.showDonationList();
		return donationList;
	}

	// 페이징 기부 리스트
	public 	List<DonationVO> showDonationPagingList(Criteria cri) {
		List<DonationVO> donationList = donationDAO.showDonationPagingList(cri);
		return donationList;
	}

	public List<DonationVO> showDonationKeywordList(String keyword) {
		List<DonationVO> donationList = donationDAO.showDonationKeywordList(keyword);
		System.out.println("showDonationKeywordList service");
		return donationList;
	}

	public DonationVO getDonationDetail(int donationNo) {
		DonationVO donation = donationDAO.getDonationDetail(donationNo);
		return donation;
	}
}
