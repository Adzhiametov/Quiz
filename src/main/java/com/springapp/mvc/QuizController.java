package com.springapp.mvc;

import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping("/quote")
public class QuizController {

    @RequestMapping(method = RequestMethod.POST)
    public String doQuote(ModelMap model){
        model.addAttribute("message", "Hello world!");
        return "hello";
    }
}
