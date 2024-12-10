package com.blogdulich.DAO;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.blogdulich.entity.Schedule;
import com.blogdulich.entity.Tours;
@Repository
public interface ScheduleDAO extends JpaRepository<Schedule, Integer> {

}