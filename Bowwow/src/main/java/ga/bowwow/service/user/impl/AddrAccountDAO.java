package ga.bowwow.service.user.impl;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;

import ga.bowwow.service.user.AddrAccount;
import ga.bowwow.service.user.UserAccount;

@Repository("AddrAccountDAO")
public class AddrAccountDAO {
	@Autowired
	@Qualifier("local")
	private SqlSessionTemplate mybatis;
	
	public AddrAccountDAO() {
		System.out.println(">> AddrAccountDAO() 객체생성");
	}
	public void insertAddrAccount(AddrAccount addrAccount) {
		mybatis.insert("AddrAccount.insertTemporaryAddrAccount", addrAccount);
	}
	public AddrAccount searchAddrAccount(AddrAccount addrAccount) {
		return mybatis.selectOne("AddrAccount.getAddrAccount", addrAccount);
	}
}