package anushibin007.roominator.backend.services;

import anushibin007.roominator.backend.dtos.RoomDetailsViewDTO;
import anushibin007.roominator.backend.models.RoomView;
import anushibin007.roominator.backend.repositories.RoomViewRepository;
import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityNotFoundException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RoomViewService {
    private RoomViewRepository roomViewRepository;
    private EntityManager entityManager;
    private final String queryRoomsById = "SELECT r.id AS roomId, r.name AS roomName, r.floor AS floorId, r.capacity as capacity, b.id AS buildingId, b.name AS buildingName, l.id AS  locationId, l.name AS locationName, c.id AS countryId, c.name AS countryName, r.directions as directions, r.stationery as stationery, r.images as images " +
            "FROM room r " +
            "INNER JOIN building b ON r.building_id = b.id " +
            "INNER JOIN location l ON b.location_id = l.id " +
            "INNER JOIN country c ON l.country_id = c.id " +
            "WHERE r.id = '%s'";

    private final String queryRoomsByName = "SELECT r.id AS roomId, r.name AS roomName, r.floor AS floorId, r.capacity as capacity, b.id AS buildingId, b.name AS buildingName, l.id AS  locationId, l.name AS locationName, c.id AS countryId, c.name AS countryName, r.directions as directions, r.stationery as stationery, r.images as images " +
            "FROM room r " +
            "INNER JOIN building b ON r.building_id = b.id " +
            "INNER JOIN location l ON b.location_id = l.id " +
            "INNER JOIN country c ON l.country_id = c.id " +
            "WHERE r.building_id = '%s' AND " +
            "UPPER(r.name) like UPPER('%s')";

    @Autowired
    public RoomViewService(RoomViewRepository roomViewRepository, EntityManager entityManager) {
        this.roomViewRepository = roomViewRepository;
        this.entityManager = entityManager;
    }

    public List<RoomView> getRoomViews() {
        return roomViewRepository.findAllRoomViews();
    }

    public List<RoomView> getRoomsByBuildingId(String buildingId) {
        return roomViewRepository.findRoomViewsByBuildingIdAndRoomName(buildingId);
    }

    public RoomDetailsViewDTO getRoomDetailsViewDTO(String roomId) throws EntityNotFoundException {
        String q = String.format(queryRoomsById, roomId);
        List result =
                entityManager.createNativeQuery(q, "RoomDetailsViewDTOMapping").getResultList();
        if(result.size() == 0)
            throw new EntityNotFoundException("Room with ID: " + roomId + " does not exist");
        return (RoomDetailsViewDTO) result.get(0);
    }

    /**
     * Given Room Name, returns all rooms that has name matching the roomName.
     * @param roomName Name of the room to search for.
     * @return List of RoomDetailsViewDTO items.
     */
    public List<RoomView> findRoomViewsByBuildingIdAndRoomName(String buildingId, String roomName) {
        return roomViewRepository.findRoomViewsByBuildingIdAndRoomName(buildingId, "%" + roomName.toUpperCase() + "%");
    }

    public  List<RoomView>  findRoomViewsByBuildingIdAndCapacity(String buildingId, Integer seatingCapacity) {
        return roomViewRepository.findRoomViewsByBuildingIdAndCapacity(buildingId, seatingCapacity);
    }
}
