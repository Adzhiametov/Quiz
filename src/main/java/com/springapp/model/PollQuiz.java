package com.springapp.model;

/**
 * Created by Arsen Adzhiametov on 7/31/13.
 */
@javax.persistence.Table(name = "poll_quiz", schema = "", catalog = "poll_kpi")
@javax.persistence.Entity
public class PollQuiz {
    private int idpollQuiz;
    private String choiceName;
    private Integer voteCounter;

    @javax.persistence.Column(name = "idpoll_quiz")
    @javax.persistence.Id
    public int getIdpollQuiz() {
        return idpollQuiz;
    }

    public void setIdpollQuiz(int idpollQuiz) {
        this.idpollQuiz = idpollQuiz;
    }

    @javax.persistence.Column(name = "choice_name")
    @javax.persistence.Basic
    public String getChoiceName() {
        return choiceName;
    }

    public void setChoiceName(String choiceName) {
        this.choiceName = choiceName;
    }

    @javax.persistence.Column(name = "vote_counter")
    @javax.persistence.Basic
    public Integer getVoteCounter() {
        return voteCounter;
    }

    public void setVoteCounter(Integer voteCounter) {
        this.voteCounter = voteCounter;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        PollQuiz pollQuiz = (PollQuiz) o;

        if (idpollQuiz != pollQuiz.idpollQuiz) return false;
        if (choiceName != null ? !choiceName.equals(pollQuiz.choiceName) : pollQuiz.choiceName != null) return false;
        if (voteCounter != null ? !voteCounter.equals(pollQuiz.voteCounter) : pollQuiz.voteCounter != null)
            return false;

        return true;
    }

    @Override
    public int hashCode() {
        int result = idpollQuiz;
        result = 31 * result + (choiceName != null ? choiceName.hashCode() : 0);
        result = 31 * result + (voteCounter != null ? voteCounter.hashCode() : 0);
        return result;
    }
}
