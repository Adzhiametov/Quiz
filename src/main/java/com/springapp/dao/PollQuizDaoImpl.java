package com.springapp.dao;

import com.springapp.model.PollQuiz;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PollQuizDaoImpl implements Dao {

    @Autowired
    SessionFactory sessionFactory;

    public void setSessionFactory(SessionFactory factory) {
        this.sessionFactory = factory;
    }

    @Override
    public boolean create(PollQuiz pollQuiz) {
        if (this.sessionFactory.openSession().save(pollQuiz) != null) {
            return true;
        }
        return false;
    }

    @Override
    public PollQuiz read(int id) {
        return (PollQuiz) this.sessionFactory.openSession().get(PollQuiz.class, id);
    }

    @Override
    public boolean update(PollQuiz pollQuiz) {
        try {
            this.sessionFactory.openSession().update(pollQuiz);
            if (this.sessionFactory.openSession().merge(pollQuiz) != null) {
                return true;
            }
            return false;
        } catch (DataAccessException ex) {
            return false;
        }
    }

    @Override
    public boolean delete(PollQuiz pollQuiz) {
        try {
            this.sessionFactory.openSession().delete(pollQuiz);
            return true;
        } catch (DataAccessException ex) {
            return false;
        }
    }

    @Override
    public List<PollQuiz> findAll() {
        return sessionFactory.openSession().createCriteria(PollQuiz.class).list();
    }
}
