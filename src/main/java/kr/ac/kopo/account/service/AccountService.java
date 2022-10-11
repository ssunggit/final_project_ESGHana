package kr.ac.kopo.account.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.ac.kopo.account.dao.AccountDAO;
import kr.ac.kopo.account.vo.AccountVO;

@Service
public class AccountService {
	
	@Autowired
	private AccountDAO accountDAO;
	
	public List<AccountVO> selectAccountList(String id){

		List<AccountVO> accountList = accountDAO.selectAccountList(id); 
		
		return accountList;
	}
}
      