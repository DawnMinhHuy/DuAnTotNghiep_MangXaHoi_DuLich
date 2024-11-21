package com.blogdulich.DAO;

import com.blogdulich.entity.Tour;
import org.springframework.data.jpa.repository.JpaRepository;

public interface TourDAO extends JpaRepository<Tour, Long> {
}	