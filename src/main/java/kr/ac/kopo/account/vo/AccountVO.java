package kr.ac.kopo.account.vo;

public class AccountVO {

	private String accountNo;
	private String accountPW;
	private String accountAlias;
	private int balance;
	private String bankCode;
	private String openDate;
	private String bankName;
	private String id;
	
	public String getAccountNo() {
		return accountNo;
	}
	public void setAccountNo(String accountNo) {
		this.accountNo = accountNo;
	}
	public String getAccountPW() {
		return accountPW;
	}
	public void setAccountPW(String accountPW) {
		this.accountPW = accountPW;
	}
	public String getAccountAlias() {
		return accountAlias;
	}
	public void setAccountAlias(String accountAlias) {
		this.accountAlias = accountAlias;
	}
	public int getBalance() {
		return balance;
	}
	public void setBalance(int balance) {
		this.balance = balance;
	}
	public String getBankCode() {
		return bankCode;
	}
	public void setBankCode(String bankCode) {
		this.bankCode = bankCode;
	}
	public String getOpenDate() {
		return openDate;
	}
	public void setOpenDate(String openDate) {
		this.openDate = openDate;
	}
	public String getBankName() {
		return bankName;
	}
	public void setBankName(String bankName) {
		this.bankName = bankName;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "AccountVO [accountNo=" + accountNo + ", accountPW=" + accountPW + ", accountAlias=" + accountAlias
				+ ", balance=" + balance + ", bankCode=" + bankCode + ", openDate=" + openDate + ", bankName="
				+ bankName + ", id=" + id + "]";
	}
	
	
	
	
}
