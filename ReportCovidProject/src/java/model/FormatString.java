/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package model;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

/**
 *
 * @author BanditK
 */
//59050245 Banthit Khongchati
public class FormatString {
    public String httpRequestGetMethod(String api) throws IOException {

        HttpURLConnection httpClient = (HttpURLConnection) new URL(api).openConnection();
        httpClient.setRequestMethod("GET");
        httpClient.setRequestProperty("User-Agent", "Mozilla/5.0");

        try (BufferedReader in = new BufferedReader(new InputStreamReader(httpClient.getInputStream()))) {

            String result = "";
            String line;

            while ((line = in.readLine()) != null) {
                result = line;
            }
            
            return result ;

        }
    }
    
        public String[] convertString(String text) {

        text = text.replace("{", "").replace("}", "").replace("=", " = ");

        String[] data = text.split(",");
        
        return data;

    }
}
