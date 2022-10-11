package kr.ac.kopo.challengeCompanyJoin.vo;

public class ChallengeCompanyJoinVO {
	private String challengeCompanyJoinCode;
	private String challengeCode;
	private String challengeName;
	private String joinDate;
	private String companyCode;

	
	public String getChallengeCompanyJoinCode() {
		return challengeCompanyJoinCode;
	}
	public void setChallengeCompanyJoinCode(String challengeCompanyJoinCode) {
		this.challengeCompanyJoinCode = challengeCompanyJoinCode;
	}
	public String getChallengeCode() {
		return challengeCode;
	}
	public void setChallengeCode(String challengeCode) {
		this.challengeCode = challengeCode;
	}
	public String getChallengeName() {
		return challengeName;
	}
	public void setChallengeName(String challengeName) {
		this.challengeName = challengeName;
	}
	public String getJoinDate() {
		return joinDate;
	}
	public void setJoinDate(String joinDate) {
		this.joinDate = joinDate;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	@Override
	public String toString() {
		return "ChallengeCompanyJoinVO [challengeCompanyJoinCode=" + challengeCompanyJoinCode + ", challengeCode="
				+ challengeCode + ", challengeName=" + challengeName + ", joinDate=" + joinDate + ", companyCode="
				+ companyCode + "]";
	}
	
	

}
