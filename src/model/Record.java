package model;

import java.util.Date;

public class Record {
    public String name;
    public Date time;

    public Record(String name) {
        this.name = name;
        this.time = new Date();
    }
}
