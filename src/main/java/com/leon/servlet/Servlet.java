package com.leon.servlet;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
//@WebServlet("/ser1")
@WebServlet(name = "com.leon.servlet.Servlet", value = "/com.leon.servlet.Servlet")
public class Servlet extends HttpServlet {
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        super.service(req, resp);
    }
}
