package ru.javasch.metro.model;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

@Entity
@Table(name = "ticket")
public class Ticket implements Serializable {
    private Long id;
    private User user;
    private Train train;
    private Station stationBegin;
    private Station stationEnd;
    private Date ticketDateDeparture;
    private Date ticketDateArrival;
    private Integer price;
    private Branch branch;
    private String valid;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "id")
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @OneToOne
    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    @ManyToOne
    @JoinColumn(name = "train_id", nullable = true)
    public Train getTrain() {
        return train;
    }

    public void setTrain(Train train) {
        this.train = train;
    }

    @OneToOne
    public Station getStationBegin() {
        return stationBegin;
    }

    public void setStationBegin(Station stationBegin) {
        this.stationBegin = stationBegin;
    }

    @OneToOne
    public Station getStationEnd() {
        return stationEnd;
    }

    public void setStationEnd(Station stationEnd) {
        this.stationEnd = stationEnd;
    }

    @Column(name = "ticketDateDeparture")
    @Temporal(TemporalType.TIMESTAMP)
    public Date getTicketDateDeparture() {
        return ticketDateDeparture;
    }

    public void setTicketDateDeparture(Date ticketDateDeparture) {
        this.ticketDateDeparture = ticketDateDeparture;
    }

    @Column(name = "ticketDateArrival")
    @Temporal(TemporalType.TIMESTAMP)
    public Date getTicketDateArrival() {
        return ticketDateArrival;
    }

    public void setTicketDateArrival(Date ticketDateArrival) {
        this.ticketDateArrival = ticketDateArrival;
    }

    @Column(name = "price")
    public Integer getPrice() {
        return price;
    }

    public void setPrice(Integer price) {
        this.price = price;
    }

    @OneToOne
    public Branch getBranch() {
        return branch;
    }

    public void setBranch(Branch branch) {
        this.branch = branch;
    }

    @Column(name = "valid")
    public String getValid() {
        return valid;
    }

    public void setValid(String valid) {
        this.valid = valid;
    }
}
