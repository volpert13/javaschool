package ru.javasch.metro.dto;

import java.io.Serializable;

public class StationDTO implements Serializable {
    String name;
    String branchColor;
    String status;

    public String getName() { return name; }
    public void setName(String name) { this.name = name; }

    public String getBranchColor() { return branchColor; }
    public void setBranchColor(String branchColor) { this.branchColor = branchColor; }

    public String getStatus() { return status; }
    public void setStatus(String status) { this.status = status; }
}
