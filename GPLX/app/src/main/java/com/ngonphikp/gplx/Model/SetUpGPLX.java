package com.ngonphikp.gplx.Model;

public class SetUpGPLX {

    private String type;
    private String content;

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public SetUpGPLX(String type, String content) {
        this.type = type;
        this.content = content;
    }
}
