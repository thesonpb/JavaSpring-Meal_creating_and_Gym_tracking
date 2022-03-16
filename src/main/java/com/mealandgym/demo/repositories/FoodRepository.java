package com.mealandgym.demo.repositories;

import com.mealandgym.demo.models.Food;
import org.springframework.data.repository.CrudRepository;

public interface FoodRepository extends CrudRepository<Food, Integer> {
}
