package kr.ac.kopo.saving.vo;

public class SavingVO {
	private int savingHistoryNo;
	private String accountNo;
	private int savingAmount;
	private String savingDate;
	private String savingType;
	private int mbNo;
	
	public int getSavingHistoryNo() {
		return savingHistoryNo;
	}
	public void setSavingHistoryNo(int savingHistoryNo) {
		this.savingHistoryNo = savingHistoryNo;
	}
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public int getSavingAmount() {
		return savingAmount;
	}
	public void setSavingAmount(int savingAmount) {
		this.savingAmount = savingAmount;
	}
	public String getSavingDate() {
		return savingDate;
	}
	public void setSavingDate(String savingDate) {
		this.savingDate = savingDate;
	}
	public String getSavingType() {
		return savingType;
	}
	public void setSavingType(String savingType) {
		this.savingType = savingType;
	}
	public int getMbNo() {
		return mbNo;
	}
	public void setMbNo(int mbNo) {
		this.mbNo = mbNo;
	}
	@Override
	public String toString() {
		return "SavingVO [savingHistoryNo=" + savingHistoryNo + ", accountNo=" + accountNo + ", savingAmount="
				+ savingAmount + ", savingDate=" + savingDate + ", savingType=" + savingType + ", mbNo=" + mbNo + "]";
	}
	
	
	
}
