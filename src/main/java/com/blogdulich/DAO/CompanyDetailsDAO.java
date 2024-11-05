package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;

import com.blogdulich.entity.CompanyDetails;

public interface CompanyDetailsDAO extends JpaRepository<CompanyDetails, Long> {
	
}
