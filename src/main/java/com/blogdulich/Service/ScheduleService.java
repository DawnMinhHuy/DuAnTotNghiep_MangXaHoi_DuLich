package com.blogdulich.Service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.blogdulich.DAO.ScheduleDAO;
import com.blogdulich.entity.Schedule;

@Service
public class ScheduleService {

	@Autowired
	private ScheduleDAO scheduleDao;

	public List<Schedule> findAll() {
		return scheduleDao.findAll();
	}

	public Optional<Schedule> findById(Long id) {
		return scheduleDao.findById(id); // Returns an Optional for safe handling
	}

	public Schedule save(Schedule entity) {
		return scheduleDao.save(entity);
	}

	public void deleteById(Long id) {
		scheduleDao.deleteById(id);
	}

	public boolean existsById(Long id) {
		return scheduleDao.existsById(id);
	}

	public boolean isScheduleOverlapping(Long tourId, Date startDate, Date endDate) {
		List<Schedule> schedules = scheduleDao.findAll();
		for (Schedule schedule : schedules) {
			if (schedule.getTour().getTourId().equals(tourId) && startDate.before(schedule.getEndDate())
					&& endDate.after(schedule.getStartDate())) {
				return true; // Overlapping
			}
		}
		return false; // No overlap
	}

}

	public Schedule findByIdOrThrow(Long id) {
		return scheduleDao.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Schedule with ID " + id + " not found"));
	}

}
