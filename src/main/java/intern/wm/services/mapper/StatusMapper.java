package intern.wm.services.mapper;


import intern.wm.domain.*;
import intern.wm.services.dto.StatusDTO;

import org.mapstruct.*;

/**
 * Mapper for the entity {@link Status} and its DTO {@link StatusDTO}.
 */
@Mapper(componentModel = "spring", uses = {})
public interface StatusMapper extends EntityMapper<StatusDTO, Status> {


    @Mapping(target = "requests", ignore = true)
    @Mapping(target = "removeRequest", ignore = true)
    @Mapping(target = "requestAssignments", ignore = true)
    @Mapping(target = "removeRequestAssignment", ignore = true)
    Status toEntity(StatusDTO statusDTO);

    default Status fromId(Long id) {
        if (id == null) {
            return null;
        }
        Status status = new Status();
        status.setId(id);
        return status;
    }
}
