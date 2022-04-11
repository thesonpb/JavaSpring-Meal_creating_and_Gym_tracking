package com.mealandgym.demo.controllers;

import com.mealandgym.demo.CustomUserDetails;
import com.mealandgym.demo.models.Food;
import com.mealandgym.demo.models.User;
import com.mealandgym.demo.repositories.FoodRepository;
import com.mealandgym.demo.repositories.UserRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping(path = "")
public class MainController {
    @Autowired
    private FoodRepository foodRepository;

    @Autowired
    private UserRepository userRepository;

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String viewHomePage(@AuthenticationPrincipal CustomUserDetails userDetails, ModelMap modelMap) {
        if (userDetails == null) return "main";
        User user = userRepository.findById(userDetails.getUserId()).get();
        String id = userDetails.getUserId().toString();
        modelMap.addAttribute("userId", id);
        modelMap.addAttribute("loggedInUser", user);
        modelMap.addAttribute("fullName", userDetails.getFullName());
        return "main";
    }

    @RequestMapping(value = "/register", method = RequestMethod.GET)
    public String showSignUpForm(ModelMap modelMap) {
        modelMap.addAttribute("user", new User());
        return "signup_form";
    }

    @PostMapping("/process_register")
    public String processRegistration(User user) {
        BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();
        String encodedPassword = passwordEncoder.encode(user.getPassword());
        user.setPassword(encodedPassword);

        userRepository.save(user);

        return "register_success";
    }

    @GetMapping("/profile/{id}")
    public String getProfile(@AuthenticationPrincipal CustomUserDetails userDetails, ModelMap modelMap, @PathVariable String id) {
        User user = userRepository.findById(Long.parseLong(id)).get();
        User loggedInUser = userRepository.findById(userDetails.getUserId()).get();
        modelMap.addAttribute("firstName", user.getFirstName());
        modelMap.addAttribute("lastName", user.getLastName());
        modelMap.addAttribute("email", user.getEmail());
        modelMap.addAttribute("loggedInUser", loggedInUser);

        //gender, age, weight, height, exercise level
        return "profile";
    }

//    @GetMapping("/login")
//    public String login() {
//        return "login";
//    }

    @RequestMapping(value = "bulking/{calo}", method = RequestMethod.GET)
    public String bulking(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }

    @RequestMapping(value = "cutting/{calo}", method = RequestMethod.GET)
    public String cutting(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }

    @RequestMapping(value = "maintenance/{calo}", method = RequestMethod.GET)
    public String maintenance(ModelMap modelMap, @PathVariable String calo) {
        Iterable<Food> foods = foodRepository.findAll();
        modelMap.addAttribute("tdee", calo);
        modelMap.addAttribute("foods", foods);
        return "food";
    }
}
