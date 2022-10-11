package kr.ac.kopo.donationHistory.vo;

import org.springframework.format.annotation.DateTimeFormat;

public class DonationHistoryVO {
	
	private int donationHistoryNo;
	private String donationTitle;
	private int donationAmount;
	private String donationCompany;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String donationStartDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String donationEndDate;
	
	private int donationNo;
	private int mbNo;
	private String name;
	
	public int getDonationHistoryNo() {
		return donationHistoryNo;
	}
	public void setDonationHistoryNo(int donationHistoryNo) {
		this.donationHistoryNo = donationHistoryNo;
	}
	public String getDonationTitle() {
		return donationTitle;
	}
	public void setDonationTitle(String donationTitle) {
		this.donationTitle = donationTitle;
	}
	public int getDonationAmount() {
		return donationAmount;
	}
	public void setDonationAmount(int donationAmount) {
		this.donationAmount = donationAmount;
	}
	public String getDonationCompany() {
		return donationCompany;
	}
	public void setDonationCompany(String donationCompany) {
		this.donationCompany = donationCompany;
	}
	
	public String getDonationStartDate() {
		return donationStartDate;
	}
	public void setDonationStartDate(String donationStartDate) {
		this.donationStartDate = donationStartDate;
	}
	public String getDonationEndDate() {
		return donationEndDate;
	}
	public void setDonationEndDate(String donationEndDate) {
		this.donationEndDate = donationEndDate;
	}
	public int getDonationNo() {
		return donationNo;
	}
	public void setDonationNo(int donationNo) {
		this.donationNo = donationNo;
	}
	public int getMbNo() {
		return mbNo;
	}
	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	@Override
	public String toString() {
		return "DonationHistoryVO [donationHistoryNo=" + donationHistoryNo + ", donationTitle=" + donationTitle
				+ ", donationAmount=" + donationAmount + ", donationCompany=" + donationCompany + ", donationStartDate="
				+ donationStartDate + ", donationEndDate=" + donationEndDate + ", donationNo=" + donationNo + ", mbNo="
				+ mbNo + ", name=" + name + "]";
	}
	
	
	
}
