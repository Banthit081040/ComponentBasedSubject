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
public class ReportArea {
    public List<Area> Data;
    public String Source;
    public String DevBy;
    public String SeverBy;

    public List<Area> getData() {
        return Data;
    }

    public void setData(List<Area> Data) {
        this.Data = Data;
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
