package com.mealandgym.demo.entities;

public class FoodWeight {
    private String name;
    private Long weight;
    public FoodWeight() {}

    public FoodWeight(String name, Long weight) {
        this.name = name;
        this.weight = weight;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Long getWeight() {
        return weight;
    }

    public void setWeight(Long weight) {
        this.weight = weight;
    }
}
