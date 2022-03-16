package com.mealandgym.demo.controllers;

import com.mealandgym.demo.models.Food;
import com.mealandgym.demo.repositories.FoodRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(path = "")
public class MainController {
    @Autowired
    private FoodRepository foodRepository;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String main() {
        return "index";
    }
    @RequestMapping(value = "bulking/{calo}", method = RequestMethod.GET)
    public String bulking(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }@RequestMapping(value = "cutting/{calo}", method = RequestMethod.GET)
    public String cutting(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }@RequestMapping(value = "maintenance/{calo}", method = RequestMethod.GET)
    public String maintenance(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }
}
