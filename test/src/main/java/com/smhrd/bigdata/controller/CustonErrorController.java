package com.smhrd.bigdata.controller;

import java.util.Optional;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.boot.web.server.ErrorPage;
import org.springframework.boot.web.servlet.error.ErrorController;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.smhrd.bigdata.model.TestMember;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/errors")
public class CustonErrorController implements ErrorController{
	@GetMapping
    public String handleError(HttpServletRequest request) {
        Optional<Object> maybeStatus =
                Optional.ofNullable(request.getAttribute(RequestDispatcher.ERROR_STATUS_CODE));
        if(maybeStatus.isPresent()) {
            Integer statusCode = Integer.valueOf(maybeStatus.get().toString());
            if(statusCode == HttpStatus.NOT_FOUND.value())
                return "error/error-404";}
        if(maybeStatus.isPresent()) {
            Integer statusCode = Integer.valueOf(maybeStatus.get().toString());
            if(statusCode == HttpStatus.INTERNAL_SERVER_ERROR.value())
                return "error/error-500";
        }
        return "error/error-500";
    }
}