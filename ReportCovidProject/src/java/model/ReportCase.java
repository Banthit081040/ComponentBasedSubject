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
public class ReportCase {
    public List<Case> Data;
    public String LastData;
    public String UpdateDate;
    public String Source;
    public String DevBy;
    public String SeverBy;

    public List<Case> getData() {
        return Data;
    }

    public String getLastData() {
        return LastData;
    }

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
}
