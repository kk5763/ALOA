package com.aloa.account;

import org.springframework.data.jpa.repository.JpaRepository;
public interface AccountRepository extends JpaRepository<Account, String>{
	Account findByEmail(String email);
}
