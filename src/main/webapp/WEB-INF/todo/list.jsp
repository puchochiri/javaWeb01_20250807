<%--
  Created by IntelliJ IDEA.
  User: doawi
  Date: 2025-05-27
  Time: 오후 9:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
    <title>Title</title>

</head>
<body>
<h1>jstl List Page</h1>
    <ul>
        <c:forEach var="dto" items="${list}">
            <li>${dto}</li>
        </c:forEach>
    </ul>
<h1>jstl List Page</h1>
    <ul>
        <c:forEach var="num" begin="1" end="10">
            <li>${num}</li>

        </c:forEach>
    </ul>
<h1>jstl List Page</h1>
    <ul>
        <c:if test="${list.size() % 2 == 0}">
            짝수
        </c:if>
        <c:if test="${list.size() % 2 != 0}">
            홀수
        </c:if>
    </ul>
<h1>jstl List Page</h1>
    <ul>
        <c:choose>
            <c:when test="${list.size() % 2 == 0}">
                짝수
            </c:when>
            <c:otherwise>
                홀수
            </c:otherwise>
        </c:choose>

    </ul>
<h1>jstl List Page</h1>
    <ul>
        <c:forEach var="num" begin="1" end="10">
            <c:if test="${num == target}">

            </c:if>
        </c:forEach>
    </ul>

<h1>EL List Page</h1>
${list[0].tno} --- ${list[0].title}
<h1>EL List Page</h1>
<h4>${list[0].title}</h4>
<h4>${list[0].getTitle()}</h4>
<h1>EL List Page</h1>
${list}

</body>
</html>
