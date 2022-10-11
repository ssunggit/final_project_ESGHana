package kr.ac.kopo.challenge.vo;

public class ChallengeVO {
	private String challengeCode;
	private String challengeName;
	private int challengeRewardAmount;
	private String challengeContractorCode;
	private String challengeInfo;
	private String companyCode;
	private String challengeImage;
	
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
	public int getChallengeRewardAmount() {
		return challengeRewardAmount;
	}
	public void setChallengeRewardAmount(int challengeRewardAmount) {
		this.challengeRewardAmount = challengeRewardAmount;
	}
	public String getChallengeContractorCode() {
		return challengeContractorCode;
	}
	public void setChallengeContractorCode(String challengeContractorCode) {
		this.challengeContractorCode = challengeContractorCode;
	}
	public String getChallengeInfo() {
		return challengeInfo;
	}
	public void setChallengeInfo(String challengeInfo) {
		this.challengeInfo = challengeInfo;
	}
	public String getCompanyCode() {
		return companyCode;
	}
	public void setCompanyCode(String companyCode) {
		this.companyCode = companyCode;
	}
	public String getChallengeImage() {
		return challengeImage;
	}
	public void setChallengeImage(String challengeImage) {
		this.challengeImage = challengeImage;
	}
	@Override
	public String toString() {
		return "ChallengeVO [challengeCode=" + challengeCode + ", challengeName=" + challengeName
				+ ", challengeRewardAmount=" + challengeRewardAmount + ", challengeContractorCode="
				+ challengeContractorCode + ", challengeInfo=" + challengeInfo + ", companyCode=" + companyCode
				+ ", challengeImage=" + challengeImage + "]";
	}
	
	
	
}
