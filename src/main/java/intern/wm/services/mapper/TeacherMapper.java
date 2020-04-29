package intern.wm.services.mapper;


import intern.wm.domain.*;
import intern.wm.services.dto.TeacherDTO;

import org.mapstruct.*;

/**
 * Mapper for the entity {@link Teacher} and its DTO {@link TeacherDTO}.
 */
@Mapper(componentModel = "spring", uses = {})
public interface TeacherMapper extends EntityMapper<TeacherDTO, Teacher> {



    default Teacher fromId(Long id) {
        if (id == null) {
            return null;
        }
        Teacher teacher = new Teacher();
        teacher.setId(id);
        return teacher;
    }
}
