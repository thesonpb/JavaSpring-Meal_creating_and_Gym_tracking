package com.mealandgym.demo.controllers;

import com.mealandgym.demo.CustomUserDetails;
import com.mealandgym.demo.models.Tracking;
import com.mealandgym.demo.repositories.TrackingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.util.Collections;
import java.util.Optional;

@Controller
@RequestMapping(path = "gym")
public class GymController {
    @Autowired
    private TrackingRepository trackingRepository;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getGym(@AuthenticationPrincipal CustomUserDetails userDetails, ModelMap modelMap) {
        Optional<Tracking> optionalTracking = trackingRepository.findByUserId(userDetails.getUserId());
        String fullName = userDetails.getFullName();
        String id = userDetails.getUserId().toString();

        Iterable<Tracking> trackings = optionalTracking.map(Collections::singleton)
                .orElseGet(Collections::emptySet);

        modelMap.addAttribute("fullName", fullName);
        modelMap.addAttribute("id", id);
        modelMap.addAttribute("trackings", trackings);
        return "gym";
    }

    @RequestMapping(value = "add", method = RequestMethod.POST)
    public String addGymActivity(ModelMap modelMap,
                                 @Valid @ModelAttribute("tracking") Tracking tracking,
                                 BindingResult bindingResult) {
        if (bindingResult.hasErrors()) return "redirect:/gym";
        try {
            trackingRepository.save(tracking);
        } catch (Exception e) {
            return "redirect:/gym";
        }
        return "redirect:/gym";
    }
}
