<%-- 
    Document   : SumTimeline
    Created on : May 9, 2020, 1:49:16 PM
    Author     : BanditK
--%>

<%@page import="model.ReportSummaryTimeline"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Summary Timeline</title>
        <!--59050245 Banthit Khongchati-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
        <% ReportSummaryTimeline reportSummaryTimeline = ReportSummaryTimeline.class.cast(request.getAttribute("ReportSummaryTimeline"));%>
        <h1>ข้อมูลสรุปตามช่วงเวลา (เริ่มตั้งแต่วันที่ 01/01/20)</h1>
    <center>
        <table border="1" width="90%">
            <thead>
                <tr>
                    <th>Date</th>
                    <th>New Confirmed</th>
                    <th>New Recovered</th>
                    <th>New Hospitalized</th>
                    <th>New Deaths</th>
                    <th>Confirmed</th>
                    <th>Recovered</th>
                    <th>Hospitalized</th>
                    <th>Deaths</th>
                </tr>
            </thead>
            <tbody>
                <%
                    for (int i = 0; i < reportSummaryTimeline.getData().size(); i++) {
                        out.print("<tr>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getDate() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getNewConfirmed() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getNewRecovered() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getNewHospitalized() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getNewDeaths() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getConfirmed() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getRecovered() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getHospitalized() + "</td>");
                        out.print("<td>" + reportSummaryTimeline.getData().get(i).getDeaths() + "</td>");
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </center>
    <br>
    <% out.print("Update Date : " + reportSummaryTimeline.getUpdateDate());%><br>
    <% out.print("Source : " + reportSummaryTimeline.getSource());%><br>
    <% out.print("DevBy : " + reportSummaryTimeline.getDevBy());%><br>
    <% out.print("SeverBy : " + reportSummaryTimeline.getSeverBy());%><br>
    <br><a href="index.html"><button>Back</button></a><br><br>
</body>
</html>
