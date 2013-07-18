<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="windows-1252"%>
<!DOCTYPE html>
<html>
    <head>
        <style type="text/css">
            body{
                font-family: verdana;
            }
            
            h3{
                margin-bottom: 8px;
                border-bottom: 1px solid bisque;
            }
            .result{
                margin-bottom: 15px;
                border: 1px solid burlywood;
                padding: 5px 10px;
                width: 200px;
            }
            
            p{
                margin: 0px;
            }
        </style>
        <meta http-equiv="Content-Type" content="text/html; charset=windows-1252">
        <title>JSP Page</title>
    </head>
    <body>
        <h3>Result</h3>
        <div id="content">
            <c:forEach items="${contacts}" var="contact">
                <div class="result">
                    <p>${contact.name}</p>
                    <p>${contact.email}</p>
                    <p>${contact.phone}</p>
                </div>
            </c:forEach>
        </div>
    </body>
</html>
