package intern.wm.services.impl;

import intern.wm.services.RequestAssignmentService;
import intern.wm.domain.RequestAssignment;
import intern.wm.repositories.RequestAssignmentRepository;
import intern.wm.services.dto.RequestAssignmentDTO;
import intern.wm.services.mapper.RequestAssignmentMapper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.LinkedList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;

/**
 * Service Implementation for managing {@link RequestAssignment}.
 */
@Service
@Transactional
public class RequestAssignmentServiceImpl implements RequestAssignmentService {

    private final Logger log = LoggerFactory.getLogger(RequestAssignmentServiceImpl.class);

    private final RequestAssignmentRepository requestAssignmentRepository;

    private final RequestAssignmentMapper requestAssignmentMapper;

    public RequestAssignmentServiceImpl(RequestAssignmentRepository requestAssignmentRepository, RequestAssignmentMapper requestAssignmentMapper) {
        this.requestAssignmentRepository = requestAssignmentRepository;
        this.requestAssignmentMapper = requestAssignmentMapper;
    }

    /**
     * Save a requestAssignment.
     *
     * @param requestAssignmentDTO the entity to save.
     * @return the persisted entity.
     */
    @Override
    public RequestAssignmentDTO save(RequestAssignmentDTO requestAssignmentDTO) {
        log.debug("Request to save RequestAssignment : {}", requestAssignmentDTO);
        RequestAssignment requestAssignment = requestAssignmentMapper.toEntity(requestAssignmentDTO);
        requestAssignment = requestAssignmentRepository.save(requestAssignment);
        return requestAssignmentMapper.toDto(requestAssignment);
    }

    /**
     * Get all the requestAssignments.
     *
     * @return the list of entities.
     */
    @Override
    @Transactional(readOnly = true)
    public List<RequestAssignmentDTO> findAll() {
        log.debug("Request to get all RequestAssignments");
        return requestAssignmentRepository.findAll().stream()
            .map(requestAssignmentMapper::toDto)
            .collect(Collectors.toCollection(LinkedList::new));
    }

    /**
     * Get one requestAssignment by id.
     *
     * @param id the id of the entity.
     * @return the entity.
     */
    @Override
    @Transactional(readOnly = true)
    public Optional<RequestAssignmentDTO> findOne(Long id) {
        log.debug("Request to get RequestAssignment : {}", id);
        return requestAssignmentRepository.findById(id)
            .map(requestAssignmentMapper::toDto);
    }

    /**
     * Delete the requestAssignment by id.
     *
     * @param id the id of the entity.
     */
    @Override
    public void delete(Long id) {
        log.debug("Request to delete RequestAssignment : {}", id);
        requestAssignmentRepository.deleteById(id);
    }
}
