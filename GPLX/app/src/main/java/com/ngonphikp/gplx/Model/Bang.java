package com.ngonphikp.gplx.Model;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class Bang {

    @SerializedName("Ten")
    @Expose
    private String ten;
    @SerializedName("NoiDung")
    @Expose
    private String noiDung;

    public Bang(String ten, String noiDung) {
        this.ten = ten;
        this.noiDung = noiDung;
    }

    public String getTen() {
    return ten;
    }

    public void setTen(String ten) {
    this.ten = ten;
    }

    public String getNoiDung() {
    return noiDung;
    }

    public void setNoiDung(String noiDung) {
    this.noiDung = noiDung;
    }

}