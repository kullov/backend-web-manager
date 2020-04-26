package intern.wm.services;

import java.util.Date;
import java.util.List;

import org.springframework.data.domain.Page;

import intern.wm.entities.Request;

public interface IRequestService {
	Page<Request> getAllRequests(int page, int limit);

	Request getRequestById(long id);
	
//	List<Request> findAllByPosition(String position);

	Page<Request> findByPosition(String position, int page, int limit);

	Page<Request> findByDateCreated(Date date, int page, int limit);
	
	boolean addRequest(Request request);

	void updateRequest(Request request);

	void deleteRequest(long id);
	
	Page<Request> findByAllParams(String position, Date dateCreated, String status, int amount, int page, int limit);
}
