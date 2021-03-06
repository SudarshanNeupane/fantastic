<%-- 
    Document   : baseLayout
    Created on : Jun 7, 2015, 10:06:17 PM
    Author     : bipin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title><tiles:insertAttribute name="title"/></title>
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
        <style type="text/css">
        .login{
          width:450px;
          margin:0px auto;
          padding:25px;
          background-color: #ccc;
         -webkit-border-radius: 25px;
		 -moz-border-radius: 25px;
		 border-radius: 25px;
		 box-shadow: 10px 10px 5px #888888;
		 
          
        }
        </style>
    </head>
    <body>
        <header>
            <tiles:insertAttribute name="header"/>
            <tiles:insertAttribute name="subHeader"/>
        </header>
        <nav><tiles:insertAttribute name="menu"/></nav>
        <section><tiles:insertAttribute name="body"/></section>
        <footer><tiles:insertAttribute name="footer"/></footer>
    </body>
</html>
