package com.example.internproject.domain;

import java.io.Serializable;
import java.time.Instant;
import java.time.ZonedDateTime;

/**
 * A RegisterRequest.
 */
@Entity
@Table(name = "register_request")
public class RegisterRequest implements Serializable {

    private static final long serialVersionUID = 1L;

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "date_created")
    private ZonedDateTime dateCreated;

    @Column(name = "start_date")
    private Instant startDate;

    @Column(name = "end_date")
    private Instant endDate;

    @Column(name = "status")
    private Integer status;

    @ManyToOne
    @JsonIgnoreProperties("registerRequests")
    private Intern internRegister;

    @ManyToOne
    @JsonIgnoreProperties("registerRequests")
    private Request requestRegister;

    @ManyToOne
    @JsonIgnoreProperties("requests")
    private Status requestStatus;

    // jhipster-needle-entity-add-field - JHipster will add fields here, do not remove
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public ZonedDateTime getDateCreated() {
        return dateCreated;
    }

    public RegisterRequest dateCreated(ZonedDateTime dateCreated) {
        this.dateCreated = dateCreated;
        return this;
    }

    public void setDateCreated(ZonedDateTime dateCreated) {
        this.dateCreated = dateCreated;
    }

    public Instant getStartDate() {
        return startDate;
    }

    public RegisterRequest startDate(Instant startDate) {
        this.startDate = startDate;
        return this;
    }

    public void setStartDate(Instant startDate) {
        this.startDate = startDate;
    }

    public Instant getEndDate() {
        return endDate;
    }

    public RegisterRequest endDate(Instant endDate) {
        this.endDate = endDate;
        return this;
    }

    public void setEndDate(Instant endDate) {
        this.endDate = endDate;
    }

    public Intern getInternRegister() {
        return internRegister;
    }

    public RegisterRequest internRegister(Intern intern) {
        this.internRegister = intern;
        return this;
    }

    public void setInternRegister(Intern intern) {
        this.internRegister = intern;
    }

    public Request getRequestRegister() {
        return requestRegister;
    }

    public RegisterRequest requestRegister(Request request) {
        this.requestRegister = request;
        return this;
    }

    public void setRequestRegister(Request request) {
        this.requestRegister = request;
    }
    // jhipster-needle-entity-add-getters-setters - JHipster will add getters and setters here, do not remove

    public Integer getStatus() {
        return status;
    }

    public RegisterRequest status(Integer status) {
        this.status = status;
        return this;
    }

    public Status getRegisterRequestStatus() {
        return requestStatus;
    }

    public RegisterRequest registerRequestStatus(Status status) {
        this.requestStatus = status;
        return this;
    }

    public void setRegisterRequestStatus(Status status) {
        this.requestStatus = status;
    }

    public void setStatus(Integer status) {
        this.status = status;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof RegisterRequest)) {
            return false;
        }
        return id != null && id.equals(((RegisterRequest) o).id);
    }

    @Override
    public int hashCode() {
        return 31;
    }

    @Override
    public String toString() {
        return "RegisterRequest{" +
            "id=" + getId() +
            ", dateCreated='" + getDateCreated() + "'" +
            ", startDate='" + getStartDate() + "'" +
            ", endDate='" + getEndDate() + "'" +
            ", status=" + getStatus() +
            "}";
    }
}
