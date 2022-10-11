package kr.ac.kopo.account.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.ac.kopo.account.vo.AccountVO;
import kr.ac.kopo.moneybox.vo.MoneyBoxVO;


@Repository
public class AccountDAO {
	@Autowired
	private SqlSessionTemplate sqlSessionTemplate;

	public List<AccountVO> selectAccountList(String id) {
		List<AccountVO> accountList = sqlSessionTemplate.selectList("account.dao.accountDAO.selectAccountList",id);
		
		return accountList;
	
	}

	public void updatebalance(MoneyBoxVO moneyBoxVO) {
		
		AccountVO accountVO = new AccountVO();
		accountVO.setBalance(moneyBoxVO.getBalance());
		accountVO.setAccountNo(moneyBoxVO.getAccountNo());
		
		sqlSessionTemplate.update("account.dao.accountDAO.updateBalance", accountVO);
		
	}
}
