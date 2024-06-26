package anushibin007.roominator.backend.dtos;

import lombok.Getter;
import lombok.Setter;

import java.util.List;

@Getter
@Setter
public class LocationDTO {
    private String id;
    private String name;
    //Remove and add CountryLocationDTO.
    private CountryDTO country;
    private List<String> buildings;
}
