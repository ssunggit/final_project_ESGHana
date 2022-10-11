package kr.ac.kopo.challenge.vo;

public class ChallengeHistoryVO {
	private int challengeHistoryNo;
	private String challengeCode;
	private int challengePoint;
	private String challengeDate;
	private String id;
	public int getChallengeHistoryNo() {
		return challengeHistoryNo;
	}
	public void setChallengeHistoryNo(int challengeHistoryNo) {
		this.challengeHistoryNo = challengeHistoryNo;
	}
	public String getChallengeCode() {
		return challengeCode;
	}
	public void setChallengeCode(String challengeCode) {
		this.challengeCode = challengeCode;
	}
	public int getChallengePoint() {
		return challengePoint;
	}
	public void setChallengePoint(int challengePoint) {
		this.challengePoint = challengePoint;
	}
	public String getChallengeDate() {
		return challengeDate;
	}
	public void setChallengeDate(String challengeDate) {
		this.challengeDate = challengeDate;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	@Override
	public String toString() {
		return "ChallengeHistoryVO [challengeHistoryNo=" + challengeHistoryNo + ", challengeCode=" + challengeCode
				+ ", challengePoint=" + challengePoint + ", challengeDate=" + challengeDate + ", id=" + id + "]";
	}
	
	
	
}
