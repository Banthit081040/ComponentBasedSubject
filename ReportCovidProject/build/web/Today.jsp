<%-- 
    Document   : Today
    Created on : May 7, 2020, 8:41:53 PM
    Author     : BanditK
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Daily</title>
        <!--59050245 Banthit Khongchati-->
        <link rel="stylesheet" type="text/css" href="css/style.css" />
    </head>
    <body>
    <center><h1>แสดงค่าประจำวัน</h1></center>
    <table border="0" width="50%" align="center" valign="middle">
        <tr>
            <td colspan="3" align="center" bgcolor="#ff9999">
                <h2>Cases</h2>
                <h3><%= request.getAttribute("confirmed")%></h3>
                <h4><%= request.getAttribute("newConfirmed")%></h4>
            </td>
        </tr>
        <tr>
            <td align="center" bgcolor="#99ff99">
                <h2>Remedied</h2>
                <h3><%= request.getAttribute("recovered")%></h3>
                <h4><%= request.getAttribute("newRecovered")%></h4>
            </td>
            <td align="center" bgcolor="#99ffff">
                <h2>Hospitalized</h2>
                <h3><%= request.getAttribute("hospitalized")%></h3>
                <h4><%= request.getAttribute("newHospitalized")%></h4>
            </td>
            <td align="center" bgcolor="#999999">
                <h2>Deceased</h2>
                <h3><%= request.getAttribute("deaths")%></h3>
                <h4><%= request.getAttribute("newDeaths")%></h4>
            </td>
        </tr>
    </table>
    <br>
    UpdateDate : <%= request.getAttribute("updateDate")%><br>
    Source : <%= request.getAttribute("source")%><br>
    DevBy : <%= request.getAttribute("devBy")%><br>
    SeverBy : <%= request.getAttribute("serverBy")%><br>
    <br>
    <a href="index.html"><button>Back</button></a><br><br>
</body>
</html>
