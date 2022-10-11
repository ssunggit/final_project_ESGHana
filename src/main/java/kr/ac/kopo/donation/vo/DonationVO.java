package kr.ac.kopo.donation.vo;

import org.springframework.format.annotation.DateTimeFormat;

public class DonationVO {
	
	private int donationNo;
	private String donationTitle;
	private String donationInfo;
	private String donationCompany;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String donationStartDate;
	
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	private String donationEndDate;
	private long donationGoal;
	private long donationCurrentAmount;
	
	public int getDonationNo() {
		return donationNo;
	}
	public void setDonationNo(int donationNo) {
		this.donationNo = donationNo;
	}
	public String getDonationTitle() {
		return donationTitle;
	}
	public void setDonationTitle(String donationTitle) {
		this.donationTitle = donationTitle;
	}
	public String getDonationInfo() {
		return donationInfo;
	}
	public void setDonationInfo(String donationInfo) {
		this.donationInfo = donationInfo;
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
	public long getDonationGoal() {
		return donationGoal;
	}
	public void setDonationGoal(long donationGoal) {
		this.donationGoal = donationGoal;
	}
	
	public long getDonationCurrentAmount() {
		return donationCurrentAmount;
	}
	public void setDonationCurrentAmount(long donationCurrentAmount) {
		this.donationCurrentAmount = donationCurrentAmount;
	}
	
	@Override
	public String toString() {
		return "DonationVO [donationNo=" + donationNo + ", donationTitle=" + donationTitle + ", donationInfo="
				+ donationInfo + ", donationCompany=" + donationCompany + ", donationStartDate=" + donationStartDate
				+ ", donationEndDate=" + donationEndDate + ", donationGoal=" + donationGoal + ", donationCurrentAmount="
				+ donationCurrentAmount + "]";
	}
	

}
