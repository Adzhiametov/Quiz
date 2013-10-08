package com.springapp.mvc;

import com.springapp.dao.PollQuizDaoImpl;
import com.springapp.model.PollQuiz;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Component
@RequestMapping("/vote")
public class QuizController {

    @Autowired
    PollQuizDaoImpl pollQuizDao;

    @RequestMapping(value = "/{id}", method = RequestMethod.GET)
    public String doQuote(@PathVariable("id")String id, ModelMap model){
        PollQuiz pollQuiz = pollQuizDao.read(Integer.valueOf(id));
        int votes = pollQuiz.getVoteCounter();
        pollQuiz.setVoteCounter(++votes);
        pollQuizDao.update(pollQuiz);
        model.addAttribute("message", "Hello world!");
        return "hello";
    }
}
