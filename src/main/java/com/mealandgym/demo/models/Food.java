package com.mealandgym.demo.models;

import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Food")
public class Food {
    @Id
    private int id;
    private String name;
    private int carb;
    private int protein;
    private int fat;
    private boolean isDrink;
    private boolean isVegetable;

    public Food() {}

    public Food(String name, int carb, int protein, int fat, boolean isDrink, boolean isVegetable) {
        this.name = name;
        this.carb = carb;
        this.protein = protein;
        this.fat = fat;
        this.isDrink = isDrink;
        this.isVegetable = isVegetable;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public int getCarb() {
        return carb;
    }

    public void setCarb(int carb) {
        this.carb = carb;
    }

    public int getProtein() {
        return protein;
    }

    public void setProtein(int protein) {
        this.protein = protein;
    }

    public int getFat() {
        return fat;
    }

    public void setFat(int fat) {
        this.fat = fat;
    }

    public boolean isDrink() {
        return isDrink;
    }

    public void setDrink(boolean drink) {
        isDrink = drink;
    }

    public boolean isVegetable() {
        return isVegetable;
    }

    public void setVegetable(boolean vegetable) {
        isVegetable = vegetable;
    }
}
