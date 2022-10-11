package kr.ac.kopo.moneybox.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.moneybox.vo.MoneyBoxVO;

@Repository
public class MoneyBoxDAO {
	
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public void insertMoneyBox(MoneyBoxVO moneyBoxVO) {
		sqlSessionTemplate.insert("moneyBox.dao.moneyBoxDAO.insertMoneyBox",moneyBoxVO);
	}

	public List<MoneyBoxVO> showMoneyBoxList(String loginId) {
		List<MoneyBoxVO> moneyBoxList = sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.selectMoneyBoxList",loginId);		
		return moneyBoxList;
	}

	public MoneyBoxVO showMoneyBoxOne(int mbNo) {
		MoneyBoxVO moneyBox = sqlSessionTemplate.selectOne("moneyBox.dao.moneyBoxDAO.selectMoneyBoxOne",mbNo);
		return moneyBox;
	}

	public String getSysdate() {
		return sqlSessionTemplate.selectOne("moneyBox.dao.moneyBoxDAO.selectSysdate");
	}

	public void updatebalance(MoneyBoxVO moneyBoxVO) {
		sqlSessionTemplate.update("moneyBox.dao.moneyBoxDAO.updateBalance", moneyBoxVO);
	}

	public List<MoneyBoxVO> showAllMoneyBoxList1days() {
		List<MoneyBoxVO> moneyBoxList = sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.selectAllMoneyBoxListAuto1days");		
		return moneyBoxList;
	}
	
	public List<MoneyBoxVO> showAllMoneyBoxList10days() {
		List<MoneyBoxVO> moneyBoxList = sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.selectAllMoneyBoxListAuto10days");		
		return moneyBoxList;
	}
	
	public List<MoneyBoxVO> showAllMoneyBoxList15days() {
		List<MoneyBoxVO> moneyBoxList = sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.selectAllMoneyBoxListAuto15days");		
		return moneyBoxList;
	}
	
	public List<MoneyBoxVO> showAllMoneyBoxList20days() {
		List<MoneyBoxVO> moneyBoxList = sqlSessionTemplate.selectList("moneyBox.dao.moneyBoxDAO.selectAllMoneyBoxListAuto20days");		
		return moneyBoxList;
	}

	public void updateDonate(MoneyBoxVO moneyBoxVO) {
		sqlSessionTemplate.update("moneyBox.dao.moneyBoxDAO.updateMoneyBox", moneyBoxVO);
		
	}
	
	
	
}
