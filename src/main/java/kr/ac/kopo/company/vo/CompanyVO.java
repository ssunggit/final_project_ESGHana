package kr.ac.kopo.company.vo;

public class CompanyVO {
	private String companyCode; // 회사 코드
	private String companyName; // 회사 이름
	private String companyNumber; // 사업자 등록번호
	private String regDate; // 등록일 
	
	public String getCompanyCode() {
		return companyCode;
	}

	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}


	public String getCompanyName() {
		return companyName;
	}


	public void setCompanyName(String companyName) {
		this.companyName = companyName;
	}


	public String getCompanyNumber() {
		return companyNumber;
	}


	public void setCompanyNumber(String companyNumber) {
		this.companyNumber = companyNumber;
	}


	public String getRegDate() {
		return regDate;
	}


	public void setRegDate(String regDate) {
		this.regDate = regDate;
	}


	@Override
	public String toString() {
		return "CompanyVO [companyCode=" + companyCode + ", companyName=" + companyName + ", companyNumber="
				+ companyNumber + ", regDate=" + regDate + "]";
	}

	
}
