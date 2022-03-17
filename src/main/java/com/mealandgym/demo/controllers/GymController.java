package com.mealandgym.demo.controllers;

import com.mealandgym.demo.models.Tracking;
import com.mealandgym.demo.repositories.TrackingRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.validation.Valid;

@Controller
@RequestMapping(path = "gym")
public class GymController {
    @Autowired
    private TrackingRepository trackingRepository;

    @RequestMapping(value = "", method = RequestMethod.GET)
    public String getGym(ModelMap modelMap) {
        Iterable<Tracking> trackings = trackingRepository.findAll();
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
