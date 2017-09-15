package com.blog.domain;

public class Catalog {
    private Integer id;

    private String name;

    private String keywords;

    private Boolean type;

    private String desci;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getKeywords() {
        return keywords;
    }

    public void setKeywords(String keywords) {
        this.keywords = keywords == null ? null : keywords.trim();
    }

    public Boolean getType() {
        return type;
    }

    public void setType(Boolean type) {
        this.type = type;
    }

    public String getdesci() {
        return desci;
    }

    public void setdesci(String desci) {
        this.desci = desci == null ? null : desci.trim();
    }
}