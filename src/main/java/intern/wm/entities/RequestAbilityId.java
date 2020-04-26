package intern.wm.entities;
// Generated Apr 26, 2020 2:36:07 AM by Hibernate Tools 4.3.5.Final

import javax.persistence.Column;
import javax.persistence.Embeddable;

/**
 * RequestAbilityId generated by hbm2java
 */
@Embeddable
public class RequestAbilityId implements java.io.Serializable {

	private int requestId;
	private int abilityId;

	public RequestAbilityId() {
	}

	public RequestAbilityId(int requestId, int abilityId) {
		this.requestId = requestId;
		this.abilityId = abilityId;
	}

	@Column(name = "request_id", nullable = false)
	public int getRequestId() {
		return this.requestId;
	}

	public void setRequestId(int requestId) {
		this.requestId = requestId;
	}

	@Column(name = "ability_id", nullable = false)
	public int getAbilityId() {
		return this.abilityId;
	}

	public void setAbilityId(int abilityId) {
		this.abilityId = abilityId;
	}

	public boolean equals(Object other) {
		if ((this == other))
			return true;
		if ((other == null))
			return false;
		if (!(other instanceof RequestAbilityId))
			return false;
		RequestAbilityId castOther = (RequestAbilityId) other;

		return (this.getRequestId() == castOther.getRequestId()) && (this.getAbilityId() == castOther.getAbilityId());
	}

	public int hashCode() {
		int result = 17;

		result = 37 * result + this.getRequestId();
		result = 37 * result + this.getAbilityId();
		return result;
	}

}
