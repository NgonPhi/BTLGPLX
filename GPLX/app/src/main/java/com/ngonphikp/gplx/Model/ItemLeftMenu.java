package com.ngonphikp.gplx.Model;

public class ItemLeftMenu {

    private String content;
    private int image;

    public ItemLeftMenu(String content, int image) {
        this.content = content;
        this.image = image;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public int getImage() {
        return image;
    }

    public void setImage(int image) {
        this.image = image;
    }
}
