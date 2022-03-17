package com.mealandgym.demo.controllers;

import com.mealandgym.demo.entities.FoodWeight;
import com.mealandgym.demo.entities.Form;
import com.mealandgym.demo.models.Food;
import com.mealandgym.demo.repositories.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.*;

@Controller
@RequestMapping(path = "meal")
public class MealController {
    @Autowired
    private  FoodRepository foodRepository;

    @RequestMapping(value = "calculator", method = RequestMethod.GET)
    public String getCalculator() {
        return "calculator";
    }

    @RequestMapping(value = "tdee", method = RequestMethod.POST)
    public String calculateTdee(ModelMap modelMap, @ModelAttribute("form") Form form) {
        int age = form.getAge();
        int height = form.getHeight();
        int weight = form.getWeight();
        System.out.println("AGE::::;"+form.getAge());
        String exerciseLevel = form.getExerciseLevel();
        String gender = form.getGender();
        double bmr;
        double tdee = 0;
        if (gender.equals("male")) {
            bmr = 66 + 13.7 * weight + 5 * height - 6.8 * age;
        } else {
            bmr = 655 + 9.6 * weight + 1.8 * height - 4.7 * age;
        }
        switch (exerciseLevel) {
            case "little or no exercise":
                tdee = bmr * 1.2;
                break;
            case "light exercise":
                tdee = bmr * 1.375;
                break;
            case "moderate exercise":
                tdee = bmr * 1.55;
                break;
            case "hard exercise":
                tdee = bmr * 1.725;
                break;
            case "very hard exercise":
                tdee = bmr * 1.9;
                break;
            default:
                break;
        }
        int tdeeFinal = (int) tdee;
        modelMap.addAttribute("tdee", tdeeFinal);
        return "tdee";
    }

    @RequestMapping(value = "final/{calo}", method = RequestMethod.GET)
    public String getMeal(ModelMap modelMap, @PathVariable String calo, @RequestParam(name="food") List<String> query) {
        List<Food> mealVegetable = new ArrayList<Food>();
        List<Food> mealDrink = new ArrayList<Food>();
        List<Food> mealFood = new ArrayList<Food>();

        query.forEach(id -> {
            Food food = foodRepository.findById(Integer.parseInt(id)).get();
            if (food.isDrink()) mealDrink.add(food);
            else if (food.isVegetable()) mealVegetable.add(food);
            else mealFood.add(food);
        });
        var caloVege = new Object(){ int ordinal = 0; };
        var caloDrink = new Object(){ int ordinal = 0; };
        var caloFood = new Object(){ int ordinal = 0; };

        mealVegetable.forEach((vege) -> {
                caloVege.ordinal += 4 * vege.getProtein() + 4 * vege.getCarb() + 9 * vege.getFat();
        });
        if (mealVegetable.size() == 0) caloVege.ordinal = 0;
        else caloVege.ordinal /= mealVegetable.size();

        mealDrink.forEach((drink) -> {
                caloDrink.ordinal += 4 * drink.getProtein() + 4 * drink.getCarb() + 9 * drink.getFat();
        });
        if (mealDrink.size() == 0) caloDrink.ordinal = 0;
        else caloDrink.ordinal /= mealDrink.size();

        mealFood.forEach((food) -> {
                caloFood.ordinal += 4 * food.getProtein() + 4 * food.getCarb() + 9 * food.getFat();
        });
        if (mealFood.size() == 0) caloFood.ordinal = 0;
        else caloFood.ordinal /= mealFood.size();

        //1vegetable, 2food, 1drink
        double weight = Integer.parseInt(calo) / (caloDrink.ordinal + 2 * caloFood.ordinal + caloVege.ordinal);
        List<FoodWeight> foodWeight = new ArrayList<FoodWeight>();
        mealVegetable.forEach((vege) -> {
            FoodWeight foodWeight1 = new FoodWeight(vege.getName(), Math.round(weight / mealVegetable.size()) * 100);
            foodWeight.add(foodWeight1);
        });
        mealDrink.forEach((drink) -> {
            FoodWeight foodWeight1 = new FoodWeight(drink.getName(), Math.round(weight / mealVegetable.size()) * 100);
            foodWeight.add(foodWeight1);
        });
        mealFood.forEach((food) -> {
            FoodWeight foodWeight1 = new FoodWeight(food.getName(), Math.round(weight / mealVegetable.size()) * 100);
            foodWeight.add(foodWeight1);
        });
        modelMap.addAttribute("foodWeight", foodWeight);
        return "meal";
    }
}
