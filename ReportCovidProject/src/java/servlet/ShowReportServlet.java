/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import com.fasterxml.jackson.databind.ObjectMapper;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Area;
import model.FormatString;
import model.ReportArea;
import model.ReportCase;
import model.ReportSummaryCase;
import model.ReportSummaryTimeline;
import model.ReportToday;

/**
 *
 * @author BanditK
 */
//59050245 Banthit Khongchati
public class ShowReportServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        FormatString formatString = new FormatString();
        ObjectMapper mapper = new ObjectMapper();

        if (request.getParameter("today") != null) {
            
            String apiCovid = formatString.httpRequestGetMethod("https://covid19.th-stat.com/api/open/today");
            ReportToday reportToday = mapper.readValue(apiCovid, ReportToday.class);
            request.setAttribute("confirmed", reportToday.getConfirmed());
            request.setAttribute("recovered", reportToday.getRecovered());
            request.setAttribute("hospitalized", reportToday.getHospitalized());
            request.setAttribute("deaths", reportToday.getDeaths());

            if (reportToday.getNewConfirmed() > 0) {
                
                request.setAttribute("newConfirmed", "[Increase " + reportToday.getNewConfirmed() + " ]" + "");
                
            } else {
                
                request.setAttribute("newConfirmed", "");
                
            }

            if (reportToday.getNewRecovered() > 0) {
                
                request.setAttribute("newRecovered", "[Increase " + reportToday.getNewRecovered() + " ]" + "");
                
            } else {
                
                request.setAttribute("newRecovered", "");
                
            }

            if (reportToday.getNewHospitalized() > 0) {
                
                request.setAttribute("newHospitalized", "[Increase " + reportToday.getNewHospitalized() + " ]" + "");
                
            } else {
                
                request.setAttribute("newHospitalized", "");
                
            }

            if (reportToday.getNewDeaths() > 0) {
                
                request.setAttribute("newDeaths", "[Increase " + reportToday.getNewDeaths() + " ]" + "");
                
            } else {
                
                request.setAttribute("newDeaths", "");
                
            }

            request.setAttribute("updateDate", reportToday.getUpdateDate());
            request.setAttribute("source", reportToday.getSource());
            request.setAttribute("devBy", reportToday.getDevBy());
            request.setAttribute("serverBy", reportToday.getSeverBy());
            request.getRequestDispatcher("Today.jsp").forward(request, response);
            
        } else if (request.getParameter("sumtimeline") != null) {
            
            String apiCovid = formatString.httpRequestGetMethod("https://covid19.th-stat.com/api/open/timeline");
            ReportSummaryTimeline reportSummaryTimeline = mapper.readValue(apiCovid, ReportSummaryTimeline.class);
            request.setAttribute("ReportSummaryTimeline", reportSummaryTimeline);
            request.getRequestDispatcher("SumTimeline.jsp").forward(request, response);
            
        } else if (request.getParameter("case") != null) {
            
            String apiCovid = formatString.httpRequestGetMethod("https://covid19.th-stat.com/api/open/cases");
            ReportCase reportCase = mapper.readValue(apiCovid, ReportCase.class);
            request.setAttribute("ReportCase", reportCase);
            request.getRequestDispatcher("Case.jsp").forward(request, response);
            
        } else if (request.getParameter("sumCase") != null) {

            String apiCovid = formatString.httpRequestGetMethod("https://covid19.th-stat.com/api/open/cases/sum");
            ReportSummaryCase reportSummaryCase = mapper.readValue(apiCovid, ReportSummaryCase.class);
            String[] province = formatString.convertString(reportSummaryCase.getProvince().toString());
            String[] nation = formatString.convertString(reportSummaryCase.getNation().toString());
            String[] gender = formatString.convertString(reportSummaryCase.getGender().toString());
            request.setAttribute("Province", province);
            request.setAttribute("Nation", nation);
            request.setAttribute("Gender", gender);
            request.setAttribute("ReportSummaryCase", reportSummaryCase);
            request.getRequestDispatcher("SumCase.jsp").forward(request, response);
            
        } else if (request.getParameter("area") != null) {
            String apiCovid = formatString.httpRequestGetMethod("https://covid19.th-stat.com/api/open/area");
            ReportArea reportArea = mapper.readValue(apiCovid, ReportArea.class);
            List<Area> data = new ArrayList();
            Area area = new Area();
            area.setAnnounceBy("Warning");
            area.setDate("05/02/2020");
            area.setDetail("Covid");
            area.setLocation("Lomsak");
            area.setProvince("Phetchabun");
            area.setProvinceEn("Phetchabun");
            area.setRecommend("Test");
            area.setTime("00:00:00");
            area.setUpdate("Dev");
            data.add(area);
            reportArea.setData(data);
            request.setAttribute("ReportArea", reportArea);
            request.getRequestDispatcher("Area.jsp").forward(request, response);
            
        }
    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
