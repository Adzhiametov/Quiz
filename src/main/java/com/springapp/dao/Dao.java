package com.springapp.dao;

import com.springapp.model.PollQuiz;

import java.util.List;

/**
 * Created by Arsen Adzhiametov on 7/31/13.
 */
public interface Dao {

    boolean create(PollQuiz pollQuiz);

    PollQuiz read(int id);

    boolean update(PollQuiz pollQuiz);

    boolean delete(PollQuiz pollQuiz);

    List<PollQuiz> findAll();
}
