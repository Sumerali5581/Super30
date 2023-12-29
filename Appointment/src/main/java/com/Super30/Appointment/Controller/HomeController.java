package com.Super30.Appointment.Controller;

import com.Super30.Appointment.Model.Appointment;
import com.Super30.Appointment.Model.Doctor;
import com.Super30.Appointment.Repository.AppointmentRepository;
import com.Super30.Appointment.Repository.DoctorRepository;
import com.Super30.Appointment.Service.AppointmentService;
import com.Super30.Appointment.Service.DoctorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.ui.Model;

import java.util.ArrayList;
import java.sql.Date;
import java.util.List;

@Controller
public class HomeController {

    @Autowired
    private AppointmentRepository appointmentRepository;


    @RequestMapping("/patient")
    public String showPage(Model model)
    {
        System.out.println("Welcome");
        return "index";
    }

    @Autowired
    private DoctorService doctorService;

    @RequestMapping("/appointmentForm")
    public String appoinmentForm(Model model){
        List<Doctor> doctors=doctorService.getAllDoctors();
        model.addAttribute("doctors",doctors);

        System.out.println("Appointment_Form");
        return "Appointment";
    }

    @PostMapping("/submitAppointment")
    public String submit(@RequestParam("patientName") String patient_name,
                         @RequestParam("doctorName") String doctor_name,
                         @RequestParam("appointmentDate") Date date)
    {
        Appointment appointment=new Appointment();
        appointment.setPatient_name(patient_name);
        appointment.setDoctor_name(doctor_name);
        appointment.setDate(date);
        appointmentRepository.save(appointment);
        System.out.println("Data Saved");
        return "submitAppointment";
    }

    @Autowired
    private AppointmentService appointmentService;

    @GetMapping("/checkAppointment")
    public String checkAppointment(Model model)
    {
        List<Appointment> appointments=appointmentService.getAllAppointments();
        model.addAttribute("appointments",appointments);
        for(Appointment appointment:appointments)
        {
            System.out.println(appointment);
        }
        return "checkAppointment";
    }

    @RequestMapping("/doctor")
    public String Confirm(Model model)
    {
        List<Appointment> appointments=appointmentService.getAllAppointments();
        model.addAttribute("appointments",appointments);
        return "confirm";
    }

    @PostMapping("/confirmAppointment")
    public String confirmAppointment(@RequestParam("confirming") Long Id)
    {
        appointmentService.updateAppointment(Id);
        return "submitConfirm";
    }
}
