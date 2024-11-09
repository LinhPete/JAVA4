package com.poly.utils;

public class XMessage {
    private String type;
    private String content;

    public static XMessage generateMessage(String type, String content) {
        return new XMessage(type, content);
    }

    private XMessage(String type, String content) {
        setType(type);
        setContent(content);
    }

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
}
