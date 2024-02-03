package com.project.Hard.controller;

import com.project.Hard.model.answers;
import com.project.Hard.model.question;
import com.project.Hard.service.AnswersService;
import com.project.Hard.service.QuestionService;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;

@Controller
public class discussionController{
    QuestionService questionService;
    AnswersService answersService;
    @Autowired
    public discussionController(QuestionService theQuestionService, AnswersService theAnswersService){
        questionService=theQuestionService;
        answersService=theAnswersService;
    }
    int qid=0;
    @GetMapping("/discussion")
    public String discussionForm(Model theModel){
        List<question> listQuestions=questionService.findAllByOrderByIdDesc();
        theModel.addAttribute("listQuestion",listQuestions);
        return "discussion";
    }

    @GetMapping("/questionForm")
    public String questionForm(Model theModel){
        theModel.addAttribute("question",new question());
        return "questionForm";
    }
    @GetMapping("/answers")
    public String answers(@RequestParam("questionId")int qid, HttpServletRequest request, Model theModel){
        List<answers> allAns=answersService.findAllByQid(qid);
        this.qid=qid;
        theModel.addAttribute("allAns",allAns);
        return "answers";
    }
    @GetMapping("/answerQuestion")
    public String answersQuestion(Model theModel){
        theModel.addAttribute("answeringQuestion",new answers());
        return "answersForm";
    }
    @PostMapping("/submitquestion")
    public String submitQuestion(HttpSession session, @RequestParam("Question")String questionText){
        String username=(String)session.getAttribute("USER");
        question q=new question(questionText,username);
        questionService.save(q);
        return "redirect:/discussion";
    }
    @PostMapping("/submitanswer")
  public String submitAnswer(HttpSession session, @RequestParam("answer")String answerText){
        String username=(String)session.getAttribute("USER");
        answers a=new answers(answerText,username,qid);
        answersService.save(a);
        return "redirect:/discussion";
    }

}
