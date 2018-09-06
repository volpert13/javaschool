package ru.javasch.metro.service.Implementations;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import ru.javasch.metro.DAO.Interfaces.GraphDAO;
import ru.javasch.metro.model.Station;
import ru.javasch.metro.model.Status;
import ru.javasch.metro.model.Graph;
import ru.javasch.metro.service.Interfaces.GraphService;
import ru.javasch.metro.service.Interfaces.StationService;

import javax.transaction.Transactional;
import java.util.List;

@Service
public class GraphServiceImpl implements GraphService {
    @Autowired
    GraphDAO graphDAO;

    @Autowired
    StationService stationService;

    @Override
    @Transactional
    public void changeWeight (String stationName) {
        Station station = stationService.findByName(stationName);
        Status status = station.getStatus();
        List<Graph> graph = graphDAO.getAllNodes(station);
        for (Graph gr : graph)
            if (status.getStatusName().equals("CLOSED")) {
                gr.setOldWeight(gr.getWeight());
                gr.setWeight(100000L);
            } else {
                gr.setWeight(gr.getOldWeight());
                gr.setOldWeight(null);
            }
    }
}
