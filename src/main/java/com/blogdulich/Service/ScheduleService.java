package com.blogdulich.Service;

import java.util.List;

import com.blogdulich.entity.Schedule;
import com.blogdulich.entity.Tours;

public interface ScheduleService {
	Schedule findById(Integer id);
	List<Schedule> findAll();
	Schedule save(Schedule schedule);
	void update(Schedule schedule);
	void deleteById(Integer id);
	boolean existedById(Integer id);

}
