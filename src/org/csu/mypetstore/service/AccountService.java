package org.csu.mypetstore.service;

import org.csu.mypetstore.domain.Account;
import org.csu.mypetstore.persistence.AccountDAO;
import org.csu.mypetstore.persistence.Impl.AccountDAOImpl;

public class AccountService {

    private AccountDAO accountDAO;
    //实现Dao类
    public AccountService(){
        accountDAO = new AccountDAOImpl();
    }
    //根据名字查用户
    public Account getAccount(String username) {
        return accountDAO.getAccountByUsername(username);
    }
    //根据名字和密码查用户
    public Account getAccount(String username, String password) {
        Account account = new Account();
        account.setUsername(username);
        account.setPassword(password);
        return accountDAO.getAccountByUsernameAndPassword(account);
    }
    //注册用户
    public void insertAccount(Account account) {
        accountDAO.insertAccount(account);
        accountDAO.insertProfile(account);
        accountDAO.insertSignon(account);
    }
    //用户信息更新
    public void updateAccount(Account account) {
        accountDAO.updateAccount(account);
        accountDAO.updateProfile(account);

        if (account.getPassword() != null && account.getPassword().length() > 0) {
            accountDAO.updateSignon(account);
        }
    }

    public boolean userNameIsExist(String username) {
        Account user = accountDAO.getAccountByUsername(username);
        if (user != null) {
            return true;
        }
        return false;
    }
}
