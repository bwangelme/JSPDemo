package model;

import javax.servlet.http.HttpSession;
import java.util.ArrayList;

public class Records {
    private HttpSession session;

    public Records(HttpSession session) {
        this.session = session;
    }

    private ArrayList<Record> getRecords() {
        Object objRecords = this.session.getAttribute("records");
        ArrayList<Record> records;
        if(objRecords == null) {
            records = new ArrayList<Record>();
        } else {
            records = (ArrayList<Record>)objRecords;
        }

        return records;
    }

    private void setRecords(ArrayList<Record> records) {
        this.session.setAttribute("records", records);
    }

    public void add(String name) {
        Record r = new Record(name);
        ArrayList<Record> records = this.getRecords();
        records.add(r);

        this.setRecords(records);
    }

    public ArrayList<Record> all() {
        ArrayList<Record> records = this.getRecords();
        return records;
    }
}

