package com.mealandgym.demo.repositories;

import com.mealandgym.demo.models.Tracking;
import com.mealandgym.demo.models.User;
import org.springframework.data.repository.CrudRepository;

import java.util.Optional;

public interface TrackingRepository extends CrudRepository<Tracking, Integer> {
    Optional<Tracking> findByUserId(Long userId);

}
