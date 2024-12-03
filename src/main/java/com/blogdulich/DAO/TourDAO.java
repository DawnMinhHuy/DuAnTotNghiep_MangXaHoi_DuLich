package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.Entity.Tour;
@Repository
public interface TourDAO extends JpaRepository<Tour, Long> {

}
