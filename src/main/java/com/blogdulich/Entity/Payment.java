package com.blogdulich.Entity;

import java.util.Date;

import com.fasterxml.jackson.annotation.JsonFormat;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import jakarta.persistence.Temporal;
import jakarta.persistence.TemporalType;
import lombok.Data;

@Data
@Entity
@Table(name = "Payment")
public class Payment {
	//thanh toán
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "Payment_id")
    private Long paymentid;
	
//	@JsonFormat(shape = JsonFormat.Shape.STRING, pattern = "MM-dd-yyyy")
    @Temporal(TemporalType.DATE)
    @Column(name = "Created_at")
    private Date createdat;
	
	@Column(name = "is_activated")
    private Boolean isactivated;
	
	@Column(name = "Name")
    private String name;
}
