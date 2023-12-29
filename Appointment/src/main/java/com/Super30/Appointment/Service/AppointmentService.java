package com.Super30.Appointment.Service;

import com.Super30.Appointment.Model.Appointment;
import com.Super30.Appointment.Repository.AppointmentRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class AppointmentService {

    @Autowired
    private AppointmentRepository appointmentRepository;

    public List<Appointment> getAllAppointments()
    {
        return appointmentRepository.findAll();
    }

    public void updateAppointment(Long Id) {
        if (Id != null) {
            Optional<Appointment> existing = appointmentRepository.findById(Id);

            if (existing.isPresent()) {
                Appointment existingAppointment = existing.get();
                existingAppointment.setStatus("Confirm");
                appointmentRepository.save(existingAppointment);
            }
        }
    }
}
