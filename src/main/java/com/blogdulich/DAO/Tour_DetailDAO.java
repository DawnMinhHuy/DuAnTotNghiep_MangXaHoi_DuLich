package com.blogdulich.DAO;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.entity.Tour_Detail;
import com.blogdulich.entity.Tours;
@Repository
public interface Tour_DetailDAO extends JpaRepository<Tour_Detail, Integer> {

}