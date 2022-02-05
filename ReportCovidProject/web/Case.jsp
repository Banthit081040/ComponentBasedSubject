<%-- 
    Document   : Case
    Created on : May 10, 2020, 5:10:34 PM
    Author     : BanditK
--%>

<%@page import="model.ReportCase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Report Case</title>
        <!--59050245 Banthit Khongchati-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <% ReportCase reportCase = ReportCase.class.cast(request.getAttribute("ReportCase"));%>
        <h1>ข้อมูลแต่ละเคส</h1>
    <center>
        <table border="1" width="90%">
            <thead>
                <tr>
                    <th>Confirm Date</th>
                    <th>No</th>
                    <th>Age</th>
                    <th>Gender</th>
                    <th>GenderEn</th>
                    <th>Nation</th>
                    <th>NationEn</th>
                    <th>ProvinceID</th>
                    <th>Province</th>
                    <th>ProvinceEn</th>
                    <th>District</th>
                </tr>
            </thead>
            <tbody>

                <%
                    for (int i = reportCase.getData().size() - 1; i >= 0; i--) {
                        out.print("<tr>");
                        out.print("<td>" + reportCase.getData().get(i).getConfirmDate() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getNo() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getAge() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getGender() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getGenderEn() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getNation() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getNationEn() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getProvinceId() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getProvince() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getProvinceEn() + "</td>");
                        out.print("<td>" + reportCase.getData().get(i).getDistrict() + "</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </center>
    <br>
    <% out.print("Last Data : " + reportCase.getLastData());%><br>
    <% out.print("Update Date : " + reportCase.getUpdateDate());%><br>
    <% out.print("Source : " + reportCase.getSource());%><br>
    <% out.print("DevBy : " + reportCase.getDevBy());%><br>
    <% out.print("SeverBy : " + reportCase.getSeverBy());%><br>
    <br><a href="index.html"><button>Back</button></a><br><br>
</body>
</html>
