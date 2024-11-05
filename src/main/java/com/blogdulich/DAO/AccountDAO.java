package com.blogdulich.DAO;


import org.springframework.data.jpa.repository.JpaRepository;

import com.blogdulich.entity.Account;

public interface AccountDAO extends JpaRepository<Account, Long> {
	

}
