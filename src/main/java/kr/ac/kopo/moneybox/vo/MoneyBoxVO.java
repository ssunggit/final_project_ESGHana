package kr.ac.kopo.moneybox.vo;

public class MoneyBoxVO {
	private int mbNo;
	private String mbTitle;
	private int balance;
	private int donationAmount;
	private int savingAmount;
	private String status; // 기부저금통 사용여부 (사용 : a, 종료 : e)
	private String id;
	private String accountNo;
	private String donationTitle;
	private String donationInfo;
	private String mbStartDate;
	private String mbEndDate;
	private String autoDepositDate;
	private long mbPercent;
	
	public MoneyBoxVO() {
		
	}
	
	public int getMbNo() {
		return mbNo;
	}


	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}

	

	public String getMbTitle() {
		return mbTitle;
	}

	public void setMbTitle(String mbTitle) {
		this.mbTitle = mbTitle;
	}

	public int getBalance() {
		return balance;
	}


	public void setBalance(int balance) {
		this.balance = balance;
	}


	public int getDonationAmount() {
		return donationAmount;
	}


	public void setDonationAmount(int donationAmount) {
		this.donationAmount = donationAmount;
	}



	

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getId() {
		return id;
	}


	public void setId(String id) {
		this.id = id;
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

	public String getMbStartDate() {
		return mbStartDate;
	}

	public void setMbStartDate(String mbStartDate) {
		this.mbStartDate = mbStartDate;
	}

	public String getMbEndDate() {
		return mbEndDate;
	}

	public void setMbEndDate(String mbEndDate) {
		this.mbEndDate = mbEndDate;
	}

	public String getAccountNo() {
		return accountNo;
	}

	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}

	
	public long getMbPercent() {
		return mbPercent;
	}

	public void setMbPercent(long mbPercent) {
		this.mbPercent = mbPercent;
	}

	public String getAutoDepositDate() {
		return autoDepositDate;
	}

	public void setAutoDepositDate(String autoDepositDate) {
		this.autoDepositDate = autoDepositDate;
	}

	
	
	public int getSavingAmount() {
		return savingAmount;
	}

	public void setSavingAmount(int savingAmount) {
		this.savingAmount = savingAmount;
	}

	@Override
	public String toString() {
		return "MoneyBoxVO [mbNo=" + mbNo + ", mbTitle=" + mbTitle + ", balance=" + balance + ", donationAmount="
				+ donationAmount + ", savingAmount=" + savingAmount + ", status=" + status + ", id=" + id
				+ ", accountNo=" + accountNo + ", donationTitle=" + donationTitle + ", donationInfo=" + donationInfo
				+ ", mbStartDate=" + mbStartDate + ", mbEndDate=" + mbEndDate + ", autoDepositDate=" + autoDepositDate
				+ ", mbPercent=" + mbPercent + "]";
	}


	

}
