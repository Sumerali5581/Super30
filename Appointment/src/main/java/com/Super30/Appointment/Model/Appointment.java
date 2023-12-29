package com.Super30.Appointment.Model;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;

import java.sql.Date;


@Entity
public class Appointment {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private Long Id;
    private String patient_name;
    private String doctor_name;
    private Date date;
    private String status;
    @Override
    public String toString() {
        return "Prescription{" +
                "Id=" + Id +
                ", patient_name='" + patient_name + '\'' +
                ", doctor_name='" + doctor_name + '\'' +
                ", date=" + date +
                ", status='" + status + '\'' +
                '}';
    }


    public Long getId() {
        return Id;
    }

    public void setId(Long id) {
        Id = id;
    }

    public String getPatient_name() {
        return patient_name;
    }

    public void setPatient_name(String patient_name) {
        this.patient_name = patient_name;
    }

    public String getDoctor_name() {
        return doctor_name;
    }

    public void setDoctor_name(String doctor_name) {
        this.doctor_name = doctor_name;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }



    public Appointment(Long id, String patient_name, String doctor_name, Date date, String status) {
        Id = id;
        this.patient_name = patient_name;
        this.doctor_name = doctor_name;
        this.date = date;
        this.status = status;
    }

    public Appointment() {
        this.status="Pending";
    }




}
