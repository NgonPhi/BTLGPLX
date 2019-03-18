package com.ngonphikp.gplx.Model;

public class Luat {

    private String ten;
    private String moTa;
    private String tienPhat;
    private int hinhAnh;
    private String loai;

    public String getTen() {
        return ten;
    }

    public void setTen(String ten) {
        this.ten = ten;
    }

    public String getMoTa() {
        return moTa;
    }

    public void setMoTa(String moTa) {
        this.moTa = moTa;
    }

    public String getTienPhat() {
        return tienPhat;
    }

    public void setTienPhat(String tienPhat) {
        this.tienPhat = tienPhat;
    }

    public int getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(int hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getLoai() {
        return loai;
    }

    public void setLoai(String loai) {
        this.loai = loai;
    }

    public Luat(String ten, String moTa, String tienPhat, int hinhAnh, String loai) {
        this.ten = ten;
        this.moTa = moTa;
        this.tienPhat = tienPhat;
        this.hinhAnh = hinhAnh;
        this.loai = loai;
    }
}
