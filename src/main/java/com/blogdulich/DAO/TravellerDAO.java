package com.blogdulich.DAO;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.entity.Tours;
import com.blogdulich.entity.Travelers;
@Repository
public interface TravellerDAO extends JpaRepository<Travelers, Integer> {

}