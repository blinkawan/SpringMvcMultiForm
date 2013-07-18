<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <style type="text/css">
            #table{
                margin-bottom: 10px;
                margin-right: 20px;
                float: left;
                border:1px solid chocolate;
                padding: 5px;
            }
            
            #submit{
                clear: both;
            }
            
            h3{
                border-bottom: 1px solid burlywood;
            }
        </style>
        
        <script type="text/javascript" src="<c:url value="/js/jquery-1.7.1.min.js" />"></script>
        <script type="text/javascript">
            $(document).ready(function(){
                $("#quantity").on("change",function(){
                    var quantity=$("#quantity").val();
                    $("#more").html("");
                    for(var i=1;i<=quantity;i++){
                       $("#more").append("<table id=\"table\">\n\
                                           <tr>\n\
                                                <td>Name</td>\n\
                                                <td><input name=\"contacts["+i+"].name\" type=\"text\"/></td>\n\
                                           </tr>\n\
                                           <tr>\n\
                                                <td>Email</td>\n\
                                                <td><input name=\"contacts["+i+"].email\" type=\"text\"/></td>\n\
                                           </tr>\n\
                                           <tr>\n\
                                                <td>Phone</td>\n\
                                                <td><input name=\"contacts["+i+"].phone\" type=\"text\"/></td>\n\
                                           </tr>\n\
                                          </table>");
                    }
                });
            });
        </script>
        <title>Multi Form Submit</title>
    </head>
    <body>
        <div id="content">
         <h3>Registration</h3>
            <form:form method="post" action="/result" modelAttribute="formContact">
                <table id="table">
                    <tr>
                        <td>Name</td>
                        <td><input name="contacts[0].name" tpe="text"/></td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td><input name="contacts[0].email" tpe="text"/></td>
                    </tr>
                    <tr>
                        <td>Phone</td>
                        <td><input name="contacts[0].phone" tpe="text"/></td>
                    </tr>
                </table>
                
                <div id="more"></div>
                <div id="submit">
                    <input type="submit" value="Post"/>
                </div>
            </form:form>
            <input type="range" name="quantity" id="quantity" min="0" max="4" value="0"/>
        </div>        
    </body>
</html>
