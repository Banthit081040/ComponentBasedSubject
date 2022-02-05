<%-- 
    Document   : Area
    Created on : May 10, 2020, 6:42:36 PM
    Author     : BanditK
--%>

<%@page import="model.ReportArea"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Announce</title>
<!--        59050245 Banthit Khongchati-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <% ReportArea reportArea = ReportArea.class.cast(request.getAttribute("ReportArea"));%>
        <h1>แจ้งเตือนพื้นที่ตามคำประกาศ</h1>
    <center>
        <table border="1" width="90%">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Time</th>
                    <th>Announce By</th>
                    <th>Recommend</th>
                    <th>Province</th>
                    <th>ProvinceEn</th>
                    <th>Location</th>
                    <th>Detail</th>
                    <th>Update</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < reportArea.getData().size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + reportArea.getData().get(i).getDate() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getTime() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getAnnounceBy() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getRecommend() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getProvince() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getProvinceEn() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getLocation() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getDetail() + "</td>");
                        out.print("<td>" + reportArea.getData().get(i).getUpdate() + "</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </center>
    <br>
    <% out.print("Source : " + reportArea.getSource());%><br>
    <% out.print("DevBy : " + reportArea.getDevBy());%><br>
    <% out.print("SeverBy : " + reportArea.getSeverBy());%><br>
    <br><a href="index.html"><button>Back</button></a><br><br>
</body>
</html>
