/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;

/**
 *
 * @author BanditK
 */
//59050245 Banthit Khongchati
public class ReportSummaryTimeline {

    public String UpdateDate;
    public String Source;
    public String DevBy;
    public String SeverBy;
    public List<ReportTimeline> Data;

    public String getUpdateDate() {
        return UpdateDate;
    }

    public String getSource() {
        return Source;
    }

    public String getDevBy() {
        return DevBy;
    }

    public String getSeverBy() {
        return SeverBy;
    }

    public List<ReportTimeline> getData() {
        return Data;
    }

}
