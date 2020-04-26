package intern.wm.services;

import java.util.Date;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.stereotype.Service;

import intern.wm.entities.Request;
import intern.wm.repositories.IRequestRepository;

@Service
public class RequestService implements IRequestService {

	@PersistenceContext	
	private EntityManager entityManager;

	@Autowired
	private IRequestRepository requestRepository;
	
	@Override
	public Page<Request> getAllRequests(int page, int limit) {
		// Lấy ra 5 user đầu tiên
        // PageRequest.of(0,5) tương đương với lấy ra page đầu tiên, và mỗi page sẽ có 5 phần tử
		Page<Request> pageList = requestRepository.findAll(PageRequest.of(page, limit));
		return pageList;
	}

	@Override
	public Request getRequestById(long id) {
		Request rq = requestRepository.findById(id).get();
		return rq;
	}

	@Override
	public Page<Request> findByPosition(String position, int page, int limit) {
		Page<Request> requests = requestRepository.findByPosition(position, PageRequest.of(page, limit));
		return requests;
	}

	@Override
	public Page<Request> findByDateCreated(Date date, int page, int limit) {
		Page<Request> requests = requestRepository.findByDateCreated(date, PageRequest.of(page, limit));
		return requests;
	}

	@Override
	public boolean addRequest(Request request) {
		List<Request> list = requestRepository.findAllByPosition(request.getPosition());
		if (list.size() > 0) {
			return false;
		} else {
			requestRepository.save(request);
			return true;
		}
	}

	@Override
	public void updateRequest(Request request) {
		requestRepository.save(request);
	}

	@Override
	public void deleteRequest(long id) {
		requestRepository.delete(getRequestById(id));
	}

	@Override
	public Page<Request> findByAllParams(String position, Date dateCreated, String status, int amount, int page,
			int limit) {
		Page<Request> list = requestRepository.findByAllParams(position, dateCreated, status, amount, PageRequest.of(page, limit));
		return list;
	}

//	@Override
//	public List<Request> findAllByPosition(String position) {
//		// TODO Auto-generated method stub
//		return null;
//	}

}
