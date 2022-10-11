package kr.ac.kopo.challenge.Service;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;

import java.util.List;
import java.util.Map;
import java.util.UUID;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.challenge.dao.ChallengeDAO;
import kr.ac.kopo.challenge.vo.ChallengeHistoryVO;
import kr.ac.kopo.challenge.vo.ChallengeVO;
import kr.ac.kopo.challengeCompanyJoin.vo.ChallengeCompanyJoinVO;
import kr.ac.kopo.company.vo.CompanyVO;
import kr.ac.kopo.member.dao.MemberDAO;

@Service
public class ChallengeService {
	
	@Autowired
	private ChallengeDAO challengeDAO;
	
	@Autowired
	private MemberDAO memberDAO;
	

	
	public String fileOCR(String fileName) {
		String apiURL = "https://djx0da1gzr.apigw.ntruss.com/custom/v1/17777/ba10717a99dbf20ff72bfa72e37f8e1aafbe7adc51f39e8889ac42ea06b59a52/general";
		String secretKey = "anNabHpVZlNIS1hhVHJsbFhUU1BZT1JRTUxEY01xYXQ=";
		String imageFile = "C:/Lecture/workspace/final_project_mzhana-main/src/main/webapp/resources/file/"+fileName; // 파일 입력 
		//String imageFile = "D:/Lecture/spring-workspace/final_project_mzhana/src/main/webapp/resources/file/"+fileName; // 파일 입력 

		try {
			URL url = new URL(apiURL);
			HttpURLConnection con = (HttpURLConnection)url.openConnection();
			con.setUseCaches(false);
			con.setDoInput(true);
			con.setDoOutput(true);
			con.setReadTimeout(30000);
			con.setRequestMethod("POST");
			String boundary = "----" + UUID.randomUUID().toString().replaceAll("-", "");
			con.setRequestProperty("Content-Type", "multipart/form-data; boundary=" + boundary);
			con.setRequestProperty("X-OCR-SECRET", secretKey);

			JSONObject json = new JSONObject();
			json.put("version", "V2");
			json.put("requestId", UUID.randomUUID().toString());
			json.put("timestamp", System.currentTimeMillis());
			JSONObject image = new JSONObject();
			image.put("format", "jpg");
			image.put("name", "demo");
			JSONArray images = new JSONArray();
			images.put(image);
			json.put("images", images);
			String postParams = json.toString();

			con.connect();
			DataOutputStream wr = new DataOutputStream(con.getOutputStream());
			long start = System.currentTimeMillis();
			File file = new File(imageFile);
			writeMultiPart(wr, postParams, file, boundary);
			wr.close();

			int responseCode = con.getResponseCode();
			BufferedReader br;
			if (responseCode == 200) {
				br = new BufferedReader(new InputStreamReader(con.getInputStream()));
			} else {
				br = new BufferedReader(new InputStreamReader(con.getErrorStream()));
			}
			String inputLine;
			StringBuffer response = new StringBuffer();
			while ((inputLine = br.readLine()) != null) {
				response.append(inputLine);
			}
			
			br.close();
			System.out.println(response);
			String result= response.toString();
			
			boolean torf = result.contains("개인컵");
			System.out.println("개인컵 여부 : " + torf);
			
			if(torf) {
				// 포인트 지급 dao
				return "성공";
			}
			
		} catch (Exception e) {
			System.out.println(e);
		}
		return "실패";
	}
	
	private static void writeMultiPart(OutputStream out, String jsonMessage, File file, String boundary) throws IOException {
		StringBuilder sb = new StringBuilder();
		
		sb.append("--").append(boundary).append("\r\n");
		sb.append("Content-Disposition:form-data; name=\"message\"\r\n\r\n");
		sb.append(jsonMessage);
		sb.append("\r\n");
	
		out.write(sb.toString().getBytes("UTF-8"));
		out.flush();
	
		if (file != null && file.isFile()) {
			out.write(("--" + boundary + "\r\n").getBytes("UTF-8"));
			StringBuilder fileString = new StringBuilder();
			fileString
				.append("Content-Disposition:form-data; name=\"file\"; filename=");
			fileString.append("\"" + file.getName() + "\"\r\n");
			fileString.append("Content-Type: application/octet-stream\r\n\r\n");
			out.write(fileString.toString().getBytes("UTF-8"));
			out.flush();
	
			try (FileInputStream fis = new FileInputStream(file)) {
				byte[] buffer = new byte[8192];
				int count;
				while ((count = fis.read(buffer)) != -1) {
					out.write(buffer, 0, count);
				}
				out.write("\r\n".getBytes());
			}
	
			out.write(("--" + boundary + "--\r\n").getBytes("UTF-8"));
		}
		out.flush();
	}

	public CompanyVO userCompanyInfo(String companyCode) {
		CompanyVO companyVO = challengeDAO.userCompanyInfo(companyCode);
		return companyVO;
	}

	public ChallengeVO userCompanyChallenge(String companyCode) {
		ChallengeVO challengeVO = challengeDAO.userCompanyChallenge(companyCode);
		return challengeVO;
	}
	
	@Transactional
	public void challengePoint(ChallengeHistoryVO challengeHistoryVO) {
		challengeDAO.challengePoint(challengeHistoryVO);
		memberDAO.updatePoint(challengeHistoryVO);
		
	}

	public List<ChallengeHistoryVO> challengeHistory(ChallengeHistoryVO challengeHistoryVO) {
		List<ChallengeHistoryVO> challengeHistoryList = challengeDAO.challengeHistory(challengeHistoryVO);
		return challengeHistoryList;
	}

	public int sumChallengePoint(ChallengeHistoryVO challengeHistoryVO) {
		
		int sumChallengePoint = challengeDAO.sumChallengePoint(challengeHistoryVO);
		return sumChallengePoint;
	}

	public Map userChallengeRank1(String challengeCode) {
		Map member1 =  challengeDAO.userChallengeRank1(challengeCode);
		return member1;
	}

	public Map userChallengeRank2(String challengeCode) {
		Map member2 =  challengeDAO.userChallengeRank2(challengeCode);
		return member2;
	}

	public Map userChallengeRank3(String challengeCode) {
		Map member3 =  challengeDAO.userChallengeRank3(challengeCode);
		return member3;
	}

	public int userChallengeRankCount1(String challengeCode) {
		int rank1memberCount = challengeDAO.userChallengeRankCount1(challengeCode);
		return rank1memberCount;
	}

	public int userChallengeRankCount2(String challengeCode) {
		int rank2memberCount = challengeDAO.userChallengeRankCount2(challengeCode);
		return rank2memberCount;
	}

	public int userChallengeRankCount3(String challengeCode) {
		int rank3memberCount = challengeDAO.userChallengeRankCount3(challengeCode);
		return rank3memberCount;
	}

	public List<Map<String, String>> companyMemberList(String companyCode) {
		List<Map<String, String>> companyMemberList =  challengeDAO.companyMemberList(companyCode);
		return companyMemberList;
	}

	public List<ChallengeVO> allChallenge() {
		List<ChallengeVO> challengeList =  challengeDAO.allChallenge();
		return challengeList;
	}

	public void insertChallenge(ChallengeVO challengeVO) {
		
		challengeDAO.insertChallenge(challengeVO);
	}

	public void challengeCompanyJoin(ChallengeCompanyJoinVO challengeCompanyJoin) {
		challengeDAO.challengeCompanyJoin(challengeCompanyJoin);
		
	}

	public List<ChallengeCompanyJoinVO> companyChallengeList(String loginCompanyCode) {
		
		List<ChallengeCompanyJoinVO> challengeJoinList = challengeDAO.companyChallengeList(loginCompanyCode);
		return challengeJoinList;
	}
	
	
	
   

}
