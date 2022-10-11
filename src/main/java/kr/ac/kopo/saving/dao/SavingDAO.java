package kr.ac.kopo.saving.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.moneybox.vo.MoneyBoxVO;
import kr.ac.kopo.saving.vo.SavingVO;

@Repository
public class SavingDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;
	
	public void insert(MoneyBoxVO moneyBoxVO) {
		SavingVO savingVO = new SavingVO();
		
		savingVO.setAccountNo(moneyBoxVO.getAccountNo());
		savingVO.setSavingAmount(moneyBoxVO.getSavingAmount());
		savingVO.setMbNo(moneyBoxVO.getMbNo());
		
		sqlSessionTemplate.insert("saving.dao.savingDAO.insertSavingHistory",savingVO);
	}

	public List<SavingVO> showSavingList(int mbNo) {
		List<SavingVO> savingList = sqlSessionTemplate.selectList("saving.dao.savingDAO.selectSavinglList",mbNo);
		return savingList;
	}

}
