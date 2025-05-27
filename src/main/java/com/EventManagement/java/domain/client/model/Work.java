package com.EventManagement.java.domain.client.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name = "work")
public class Work {
    
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int workID;

    private double price;

    @Column(columnDefinition = "nvarchar(255)")
    private String nameWork;

    private Boolean isComplate;

    public Work() {
        
    }

    @OneToMany(mappedBy = "work")
    private List<EventWorkStudent> eventWorkStudents;

    public int getWorkID() {
        return workID;
    }

    public void setWorkID(int workID) {
        this.workID = workID;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getNameWork() {
        return nameWork;
    }

    public void setNameWork(String nameWork) {
        this.nameWork = nameWork;
    }

    public Boolean getIsComplate() {
        return isComplate;
    }

    public void setIsComplate(Boolean isComplate) {
        this.isComplate = isComplate;
    }

    @Override
    public int hashCode() {
        final int prime = 31;
        int result = 1;
        result = prime * result + workID;
        long temp;
        temp = Double.doubleToLongBits(price);
        result = prime * result + (int) (temp ^ (temp >>> 32));
        result = prime * result + ((nameWork == null) ? 0 : nameWork.hashCode());
        result = prime * result + ((isComplate == null) ? 0 : isComplate.hashCode());
        result = prime * result + ((eventWorkStudents == null) ? 0 : eventWorkStudents.hashCode());
        return result;
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj)
            return true;
        if (obj == null)
            return false;
        if (getClass() != obj.getClass())
            return false;
        Work other = (Work) obj;
        if (workID != other.workID)
            return false;
        if (Double.doubleToLongBits(price) != Double.doubleToLongBits(other.price))
            return false;
        if (nameWork == null) {
            if (other.nameWork != null)
                return false;
        } else if (!nameWork.equals(other.nameWork))
            return false;
        if (isComplate == null) {
            if (other.isComplate != null)
                return false;
        } else if (!isComplate.equals(other.isComplate))
            return false;
        if (eventWorkStudents == null) {
            if (other.eventWorkStudents != null)
                return false;
        } else if (!eventWorkStudents.equals(other.eventWorkStudents))
            return false;
        return true;
    }

    

}
