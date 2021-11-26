<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.*" %>
<%@page import="model.*" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%!
    List<Profile> profileList; String img_url; int j = 0, k = 2;
%>
<html>
<head>
    <link href="css/styles.css" rel="stylesheet" type="text/css">
    <title>자동매칭 페이지</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    <style>
        @font-face {
            font-family: 'SBAggroB';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroB.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        @font-face {
            font-family: 'SBAggroL';
            src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2108@1.1/SBAggroL.woff') format('woff');
            font-weight: normal;
            font-style: normal;
        }
        html, body {
            magrin: 0;
            width: auto;
            height: auto;
            margin-bottom: 4%;
        }
        a {
            font-family: SBAggroL;
        }
        h1 {
            padding-top: 10px;
            font-family: SBAggroB;
        }
        .card-margin {
            margin-left: 5%;
            font-family: SBAggroL;
        }
        .mb-3 {
            cursor: pointer;
            float: left;
            border-radius: 10px;
            width: 40%;
            margin: 0px 0% 100px 5%;
        }
        .page-float {
            clear: left;
            position: absolute;
            bottom: 1px;
            right: 43%
        }
    </style>
</head>
<body>
<div class="container">
    <header class="blog-header py-3">
        <div class="row flex-nowrap justify-content-between align-items-center">
            <div class="col-4 pt-1">
                <a class="blog-header-logo text-dark" href="${pageContext.request.contextPath}/student/main"><h1>Roomie 루미</h1></a>
            </div>
            <div class="col-4 text-center">
            </div>
            <div class="col-4 d-flex justify-content-end align-items-center">
            </div>
        </div>
    </header>
</div>

<% profileList = (List<Profile>) request.getAttribute("profileList"); %>
<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
    <div class="carousel-indicators">
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
        <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
    </div>
    <form name="form">
        <div class="carousel-inner">
<%--            <c:forEach var="profile" items="${profileList}">--%>
<%--                <div class="carousel-item">--%>
<%--                    <div class="card-margin">--%>
<%--                        <div class="card mb-3" style="border-radius: 10px; max-width: 600px;" onclick="location.href='/student/main/detail?s_id=' + ${profile.s_id}">--%>
<%--                            <div class="row g-0">--%>
<%--                                <div class="col-md-4">--%>
<%--                                    <c:if test="${profile.pr_img eq 0}"><%img_url = "/images/man1.png";%></c:if>--%>
<%--                                    <c:if test="${profile.pr_img eq 1}"><%img_url = "/images/man2.png";%></c:if>--%>
<%--                                    <c:if test="${profile.pr_img eq 2}"><%img_url = "/images/woman1.png";%></c:if>--%>
<%--                                    <c:if test="${profile.pr_img eq 3}"><%img_url = "/images/woman2.png";%></c:if>--%>
<%--                                    <img style="border-radius: 10px;" src="<c:url value='<%=img_url%>' />" class="img-fluid rounded-start" alt="...">--%>
<%--                                </div>--%>
<%--                                <div class="col-md-8">--%>
<%--                                    <div class="card-body">--%>
<%--                                        <h5 class="card-title">${profile.name}</h5>--%>
<%--                                        <p class="card-text">${profile.major} (${(profile.grade)+1}학년)&emsp;&emsp;&emsp;&emsp;&emsp; <br>${profile.age}세&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;</p>--%>
<%--                                        <p class="card-text"><small class="text-muted"></small></p>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </c:forEach>--%>
            <div class="carousel-item active">
                <img src="/images/woman1.png" class="d-block w-100" alt="...">
            </div>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </form>
</div>
</body>
</html>

