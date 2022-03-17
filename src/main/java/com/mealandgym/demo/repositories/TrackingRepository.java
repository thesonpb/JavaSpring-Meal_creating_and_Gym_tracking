package com.mealandgym.demo.repositories;

import com.mealandgym.demo.models.Tracking;
import org.springframework.data.repository.CrudRepository;

public interface TrackingRepository extends CrudRepository<Tracking, Integer> {
}
