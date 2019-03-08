package com.ngonphikp.gplx.Model;

public class HocLyThuyet {

    private int hinhAnh;
    private String tieuDe;
    private int current;
    private int size;

    public HocLyThuyet(int hinhAnh, String tieuDe, int current, int size) {
        this.hinhAnh = hinhAnh;
        this.tieuDe = tieuDe;
        this.current = current;
        this.size = size;
    }

    public int getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(int hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getTieuDe() {
        return tieuDe;
    }

    public void setTieuDe(String tieuDe) {
        this.tieuDe = tieuDe;
    }

    public int getCurrent() {
        return current;
    }

    public void setCurrent(int current) {
        this.current = current;
    }

    public int getSize() {
        return size;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
