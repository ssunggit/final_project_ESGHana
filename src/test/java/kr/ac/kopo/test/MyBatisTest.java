package kr.ac.kopo.test;

import static org.junit.Assert.assertNotNull;

import java.util.List;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.ac.kopo.donation.vo.DonationVO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;
import kr.ac.kopo.saving.vo.SavingVO;


@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:config/spring/spring-mvc.xml"})
public class MyBatisTest {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	@Test
	public void myBatisT(){
		assertNotNull(sqlSessionTemplate);
	}
	
	@Test
    public void donationListSelectAll() {
		String keyword = "cat";
	    List<DonationVO> donationList = sqlSessionTemplate.selectList("donation.dao.donationDAO.selectDonationKeywordList", keyword);
	    for(DonationVO donation : donationList) {
	    	System.out.println(donation);
       }
    }
	
	@Test
	public void updateBalance() {
		MoneyBoxVO money = new MoneyBoxVO();
		money.setMbNo(1);
		money.setSavingAmount(1000);
		
		sqlSessionTemplate.update("moneyBox.dao.moneyBoxDAO.updateBalance", money);
		
	}
	
	@Test
	public void selectSavinglList() {
		
		List<SavingVO> li =  sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.updateBalance", 20);
		 for(SavingVO l : li) {
		    	System.out.println(l);
	       }
		
	}
	
	
	

}
