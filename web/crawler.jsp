<%-- 
    Document   : crawler
    Created on : Oct 31, 2018, 9:06:51 AM
    Author     : Administrator
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="./content/css/style.css">
        <title>Health Store</title>
    </head>
    <body>
        <div id="top_nav">
            <div id="logo"><img src="./content/logo/logo.jpg"/></div>
        </div>
        <div id="container" class="center">
            <form action="ProcessServlet" method="POST">
                <input type="hidden" value="Start" name="toolAction"/>
                <input type="hidden" value="${param.token}" name="token"/>
                <button type="submit" value="Crawler" name="btnAction">Start Crawler</button>
            </form>
            <form action="ProcessServlet" method="POST">
                <input type="hidden" value="Stop" name="toolAction" />
                <input type="hidden" value="${param.token}" name="token" />
                <button type="submit" value="Crawler" name="btnAction">Stop Crawler</button>
            </form>
        </div>
    </body>
</html>
