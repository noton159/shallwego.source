<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="cpath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<style>
*{margin: 0; padding: 0;}
ul,li{list-style: none;}
a{text-decoration: none;color: rgb(24, 24, 24);}
a:hover {text-decoration: none;color: rgb(24, 24, 24);}

</style>

<title>떠나볼까?</title>
<meta name="google-site-verification" content="nERiBNqxg1sFpetHtzwMVydsumihA9YnyytsjfzYEGI" />
<meta name="description" content="Javascript date range picker - lightweight, no jQuery. Date Range Picker can be attached to input element to pop up one or more calendars for selecting dates.">
<!-- <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="https://unpkg.com/lightpick@latest/css/lightpick.css"> -->
<link href="${cpath }/resources/css/calender/lightpick.css" rel="stylesheet" type="text/css">  

<link href="${cpath }/resources/css/index.css" rel="stylesheet" type="text/css"> 
<link href="${cpath }/resources/css/main.css" rel="stylesheet" type="text/css"> 
<link href="${cpath }/resources/css/header.css" rel="stylesheet" type="text/css">
<link href="${cpath }/resources/css/footer.css" rel="stylesheet" type="text/css">

    <script type="text/javascript" async="" src="https://cdn.treasuredata.com/sdk/2.1.0/td.min.js"></script>
    <script type="text/javascript" async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script async="" src="https://www.google-analytics.com/analytics.js"></script>
    <script async="" src="https://www.googletagmanager.com/gtm.js?id=GTM-MTS2224"></script>
    <!-- <script src="scripts/vendor/modernizr.js"></script> -->
    <script src="https://code.jquery.com/jquery-1.12.4.js"></script>
    <script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
    <script src="${cpath }/resources/js/jquery/jquery.transit.min.js"></script>
    <script src="${cpath }/resources/js/jquery/jquery-3.3.1.js"></script>

    
    <script src="${cpath }/resources/js/index_header.js"></script>
    <script src="${cpath }/resources/js/index.js"></script>

<link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@100&display=swap" rel="stylesheet">
