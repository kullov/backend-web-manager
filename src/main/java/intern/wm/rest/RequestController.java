package intern.wm.rest;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.util.UriComponentsBuilder;

import intern.wm.entities.Request;
import intern.wm.services.IRequestService;

@CrossOrigin(origins = "*", allowedHeaders = "*")
@RestController
public class RequestController {
	
	@Autowired
	private IRequestService requestService;
	private static final DateFormat DF = new SimpleDateFormat("dd-MM-yyyy");
	
	@GetMapping("api/request/detail/{id}")
	public Request getTaskById(@PathVariable("id") long id) {
		Request request = requestService.getRequestById(id);
		return request;
	}
	
	@GetMapping("api/request/date_Created")
	public Page<Request> getAllRequestByDateCreated(@RequestParam(value="dateCreated") String date, @RequestParam(value="page") int page) {
		Date d = null;
		try {
			d = DF.parse(date);
		} catch (ParseException e) {
			e.printStackTrace();
		}
		Page<Request> requests = requestService.findByDateCreated(d, page-1, 5);
		return requests;
	}

	@GetMapping("/api/request/position")
	public Page<Request> getByPosition(@RequestParam(value="position", required = false) String position, @RequestParam(value="page") int page) {
		Page<Request> requests = requestService.findByPosition(position, page-1, 5);
		return requests;
	}
	
//	@GetMapping("/api/request/status")
//	public Page<Request> getByStatus(@RequestParam(value="status", required = false) String status, @RequestParam(value="page") int page) {
//		Page<Request> requests = requestService.findAllByStatus(status, page-1, 5);
//		return requests;
//	}
	
//	@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
	@GetMapping("api/request/all")
	public Page<Request> getAllRequests(@RequestParam(value="page") int page) {
		Page<Request> list = requestService.getAllRequests(page-1, 5);
		return list;
	}
	
//	@PreAuthorize("hasAuthority('USER') or hasAuthority('ADMIN')")
	@PostMapping("api/request/create")
	public Request addRequest( @RequestBody Request request, UriComponentsBuilder builder) {
		boolean flag = requestService.addRequest(request);
		if (flag == true) {
			return request;
		} else {
			return null;
		}
	}
	
	@PutMapping("api/request/update/{id}")
	public Request updateRequest(@RequestBody Request request) {
		requestService.updateRequest(request);
		return request;
	}
	
	@DeleteMapping("api/request/delete/{id}")
	public void deleteRequest(@PathVariable("id") long id) {
		requestService.deleteRequest(id);
	}
	
//	@GetMapping("/api/request/findAll")
//	public Page<Request> findAllBy( @RequestParam(value="position", required = false) String position,  @RequestParam(value="dateCreated", required = false) String dateCreated, @RequestParam(value="status", required = false) String status, @RequestParam(value="amount", required = false) int amount, @RequestParam(value="page") int page) {
//		Date startD = null;
//		try {
//			if (dateCreated != "") {
//				startD = DF.parse(dateCreated);
//			}
//		} catch (ParseException e) {
//			e.printStackTrace();
//		}
//		Page<Request> list = requestService.findByAllParams(position, startD, status, amount, page-1, 5);
//		return list;
//	}
}
