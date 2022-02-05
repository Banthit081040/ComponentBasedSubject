<%-- 
    Document   : SumCase
    Created on : May 10, 2020, 5:30:17 PM
    Author     : BanditK
--%>

<%@page import="model.ReportSummaryCase"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary Case</title>
        <!--59050245 Banthit Khongchati-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <% ReportSummaryCase reportSummaryCase = ReportSummaryCase.class.cast(request.getAttribute("ReportSummaryCase"));%>
        <% String[] province = String[].class.cast(request.getAttribute("Province")); %>
        <% String[] nation = String[].class.cast(request.getAttribute("Nation")); %>
        <% String[] gender = String[].class.cast(request.getAttribute("Gender")); %>
        <h1>ข้อมูลสรุปจากเคส</h1>
    <center>
        <table border="0" width="90%">
            <thead>
                <tr>
                    <th>ยอดรวมแต่ละจังหวัด</th>
                    <th>ยอดรวมแต่ละสัญชาติ</th>
                    <th>ยอดรวมแต่ละเพศ</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td align="center" valign="top" width="30%">
                        <table border="1" width="90%">
                            <thead>
                                <tr>
                                    <th>Province</th>
                                    <th>Count</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    for (int i = 0; i < province.length; i++) {
                                        out.print("<tr>");
                                        out.print("<td>" + province[i].split("=")[0] + "</td>");
                                        out.print("<td>" + province[i].split("=")[1] + "</td>");
                                        out.print("</tr>");
                                    }
                                %>
                            </tbody>
                        </table>
                    </td>
                    <td align="center" valign="top" width="30%">
                        <table border="1" width="90%">
                            <thead>
                                <tr>
                                    <th>Nation</th>
                                    <th>Count</th>
                                </tr>
                            </thead>
                            <%
                                for (int i = 0; i < nation.length; i++) {
                                    out.print("<tr>");
                                    out.print("<td>" + nation[i].split("=")[0] + "</td>");
                                    out.print("<td>" + nation[i].split("=")[1] + "</td>");
                                    out.print("</tr>");
                                }
                            %>
                        </table>
                    </td>
                    <td align="center" valign="top" width="30%">
                        <table border="1" width="90%">
                            <thead>
                                <tr>
                                    <th>Gender</th>
                                    <th>Count</th>
                                </tr>
                            </thead>
                            <tbody>
                                <% for (int i = 0; i < gender.length; i++) {
                                        out.print("<tr>");
                                        out.print("<td>" + gender[i].split("=")[0] + "</td>");
                                        out.print("<td>" + gender[i].split("=")[1] + "</td>");
                                        out.print("</tr>");
                                    }
                                %>
                            </tbody>
                        </table>
                    </td>
                </tr>
            </tbody>
        </table>
    </center>
    <br>
    <% out.print("Last Data : " + reportSummaryCase.getLastData());%><br>
    <% out.print("Update Date : " + reportSummaryCase.getUpdateDate());%><br>
    <% out.print("Source : " + reportSummaryCase.getSource());%><br>
    <% out.print("DevBy : " + reportSummaryCase.getDevBy());%><br>
    <% out.print("SeverBy : " + reportSummaryCase.getSeverBy());%><br>
    <br><a href="index.html"><button>Back</button></a><br><br>
</body>
</html>
