package ru.javasch.metro.service.interfaces;

import org.springframework.stereotype.Service;
import ru.javasch.metro.model.Train;

@Service
public interface TrainService {
    Long add (String trainName);
    void delete (Long Id);
    Train findById(Long Id);
}
