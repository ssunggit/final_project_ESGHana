package kr.ac.kopo.donationHistory.service;

import java.util.List;

import javax.mail.internet.MimeMessage;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.FileSystemResource;
import org.springframework.mail.javamail.JavaMailSenderImpl;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.donationHistory.dao.DonationHistoryDAO;
import kr.ac.kopo.donationHistory.vo.DonationHistoryVO;
import kr.ac.kopo.moneybox.dao.MoneyBoxDAO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;

@Service
public class DonationHistoryService {
	@Autowired
	private DonationHistoryDAO donationHistoryDAO;
	@Autowired
	private MoneyBoxDAO moneyBoxDAO;
	
	@Autowired
	private JavaMailSenderImpl mailSender;
	
	
	@Transactional
	public void donateNow(DonationHistoryVO donationHistoryVO) {
		MoneyBoxVO moneyBoxVO = new MoneyBoxVO();
		moneyBoxVO.setMbNo(donationHistoryVO.getMbNo());	
		moneyBoxVO.setBalance(0);
		moneyBoxVO.setStatus("e");
		moneyBoxDAO.updateDonate(moneyBoxVO);
		
		donationHistoryDAO.insertdonateNow(donationHistoryVO);
	}

	public List<DonationHistoryVO> showDonationHistoryList(String loginName) {
		List<DonationHistoryVO> donationHistoryList = donationHistoryDAO.showDonationHistoryList(loginName);
		return donationHistoryList;
	}

	public DonationHistoryVO showTaxDetail(int donationHistoryNo) {
		DonationHistoryVO donationHistoryVO = donationHistoryDAO.showTaxDetail(donationHistoryNo);
		return donationHistoryVO;
	}
	
	
	
	public void mailSend(String setForm,String toMail,String title,String content) {
		MimeMessage message = mailSender.createMimeMessage();
		String filename = "C:\\Lecture\\workspace\\final_project_mzhana-main\\src\\main\\webapp\\resources\\pdf\\tax.pdf";
		
		try {
			MimeMessageHelper helper = new MimeMessageHelper(message,true,"utf-8");
			helper.setFrom(setForm);
			helper.setTo(toMail);
			helper.setSubject(title);
			// 파일첨부
			FileSystemResource fsr = new FileSystemResource(filename);
			helper.addAttachment("tax.pdf", fsr);
			
			helper.setText(content,true);
			mailSender.send(message);
			
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public void taxEmail(String email) {
		
		String setForm = "gustjd68@gmail.com";
		String toMail = email;
		String title="ESG HANA 기부증서 지급 메일입니다.";
		
		String content = 
				"ESG HANA 기부증서 지급 메일입니다.";
		
		mailSend(setForm, toMail, title, content);
		
	}

}
