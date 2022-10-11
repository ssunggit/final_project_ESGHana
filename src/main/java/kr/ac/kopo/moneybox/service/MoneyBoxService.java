package kr.ac.kopo.moneybox.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.moneybox.dao.MoneyBoxDAO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;
import kr.ac.kopo.saving.dao.SavingDAO;
import kr.ac.kopo.saving.vo.SavingVO;

@Service
public class MoneyBoxService {

	@Autowired
	private MoneyBoxDAO moneyBoxDAO;
	@Autowired
	private AccountDAO accountDAO;
	@Autowired
	private SavingDAO savingDAO;

	public void insertMoneyBox(MoneyBoxVO moneyBoxVO) {
		moneyBoxDAO.insertMoneyBox(moneyBoxVO);
	}

	public List<MoneyBoxVO> showMoneyBoxList(String loginId) {
		List<MoneyBoxVO> moneyBoxList = moneyBoxDAO.showMoneyBoxList(loginId);
		return moneyBoxList;
	}

	public MoneyBoxVO showMoneyBoxOne(int mbNo) {
		MoneyBoxVO moneyBox = moneyBoxDAO.showMoneyBoxOne(mbNo);
		return moneyBox;
	}

	public String getSysdate() {
		return moneyBoxDAO.getSysdate();
	}
	
	@Transactional
	public void monthlySaving(MoneyBoxVO moneyBoxVO) {
		accountDAO.updatebalance(moneyBoxVO);
		moneyBoxDAO.updatebalance(moneyBoxVO);
		savingDAO.insert(moneyBoxVO);
	}

	public List<MoneyBoxVO> showAllMoneyBoxList1days() {
		List<MoneyBoxVO> moneyBoxList = moneyBoxDAO.showAllMoneyBoxList1days();
		return moneyBoxList;
	}
	public List<MoneyBoxVO> showAllMoneyBoxList10days() {
		List<MoneyBoxVO> moneyBoxList = moneyBoxDAO.showAllMoneyBoxList10days();
		return moneyBoxList;
	}
	public List<MoneyBoxVO> showAllMoneyBoxList15days() {
		List<MoneyBoxVO> moneyBoxList = moneyBoxDAO.showAllMoneyBoxList15days();
		return moneyBoxList;
	}
	public List<MoneyBoxVO> showAllMoneyBoxList20days() {
		List<MoneyBoxVO> moneyBoxList = moneyBoxDAO.showAllMoneyBoxList20days();
		return moneyBoxList;
	}

	public List<SavingVO> showSavingList(int mbNo) {
		List<SavingVO> savingList = savingDAO.showSavingList(mbNo);
		return savingList;
	}


	
	
	
	
}
