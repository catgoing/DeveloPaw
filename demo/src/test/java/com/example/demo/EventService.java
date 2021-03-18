package com.example.demo;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class EventService {
	public List<Event> getEvents() {
		Event event1 = Event.builder()
				.name("mvc study")
				.limitOfEnrollment(5)
				.startDateTime(LocalDateTime.of(2019, 1, 10, 10, 10))
				.endDateTime(LocalDateTime.of(2019, 1, 10, 11, 10))
				.build();
		Event event2 = Event.builder()
				.name("mvc study2")
				.limitOfEnrollment(5)
				.startDateTime(LocalDateTime.of(2019, 1, 11, 10, 10))
				.endDateTime(LocalDateTime.of(2019, 1, 11, 11, 10))
				.build();
		List list = new ArrayList();
		list.add(event1);
		list.add(event2);
		return list;
	}
}
