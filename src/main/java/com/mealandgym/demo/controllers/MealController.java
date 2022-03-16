package com.mealandgym.demo.controllers;

import com.mealandgym.demo.entities.Form;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(path = "meal")
public class MealController {
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
        tdee = Math.round(tdee);
        modelMap.addAttribute("tdee", tdee);
        return "tdee";
    }
}
