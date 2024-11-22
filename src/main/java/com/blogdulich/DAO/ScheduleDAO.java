package com.blogdulich.DAO;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.blogdulich.entity.Schedule;

@Repository
public interface ScheduleDAO extends JpaRepository<Schedule, Long> {
    // Add custom query methods if needed
}
