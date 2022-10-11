package kr.ac.kopo.page.vo;

import org.springframework.web.util.UriComponents;
import org.springframework.web.util.UriComponentsBuilder;


public class PageVO {
	private Criteria cri;
	private int totalCount; // 전체 데이터 수
	private int startPage;  // 현재 화면에서 보이는 startPage 번호
	private int endPage;  // 현재 화면에 보이는 endPage 번호
	private boolean prev; // 페이징 이전 버튼 활성화 여부
	private boolean next; // 페이징 다음 버튼 활서화 여부
	
	private int displayPageNum = 5; // 화면에서 한번에 보여질 페이지 번호의 개수 ( 1,2,3)
	
	 
	public void setCri(Criteria cri) {
		this.cri = cri;
	}
	
	public void setTotalCount(int totalCount) {
		this.totalCount = totalCount;
		calcData();
	}
	
	public int getTotalCount() {
		return totalCount;
	}
	
	public int getStartPage() {
		return startPage;
	}
	
	public int getEndPage() {
		return endPage;
	}
	
	public boolean isPrev() {
		return prev;
	}
	
	public boolean isNext() {
		return next;
	}
	
	public int getDisplayPageNum() {
	return displayPageNum;
	}
	
	public Criteria getCri() {
		return cri;
	}
	 
	private void calcData() {
		endPage = (int) (Math.ceil(cri.getPage() / (double)displayPageNum) * displayPageNum);
		startPage = (endPage - displayPageNum) + 1;
		  
		int tempEndPage = (int) (Math.ceil(totalCount / (double)cri.getPerPageNum()));
		if (endPage > tempEndPage){
			endPage = tempEndPage;}
		  
		prev = startPage == 1 ? false : true;
		next = endPage * cri.getPerPageNum() >= totalCount ? false : true;
	 }
	 
	 public String makeQuery(int page){
		 UriComponents uriComponents = UriComponentsBuilder.newInstance().queryParam("page", page).queryParam("perPageNum", cri.getPerPageNum()).build();
	    
		 return uriComponents.toUriString();
	 	}
	}