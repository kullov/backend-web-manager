package intern.wm.services.mapper;


import org.mapstruct.Mapper;
import org.mapstruct.Mapping;

import intern.wm.domain.AbilityCategory;
import intern.wm.services.dto.AbilityCategoryDTO;

/**
 * Mapper for the entity {@link AbilityCategory} and its DTO {@link AbilityCategoryDTO}.
 */
@Mapper(componentModel = "spring", uses = {})
public interface AbilityCategoryMapper extends EntityMapper<AbilityCategoryDTO, AbilityCategory> {


    @Mapping(target = "abilityTypes", ignore = true)
    @Mapping(target = "removeAbilityType", ignore = true)
    AbilityCategory toEntity(AbilityCategoryDTO abilityCategoryDTO);

    default AbilityCategory fromId(Long id) {
        if (id == null) {
            return null;
        }
        AbilityCategory abilityCategory = new AbilityCategory();
        abilityCategory.setId(id);
        return abilityCategory;
    }
}
