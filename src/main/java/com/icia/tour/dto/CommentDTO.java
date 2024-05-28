package com.icia.tour.dto;

import java.sql.Date;

import lombok.Data;

@Data
public class CommentDTO {
	private int cnum;
	private int cpnum;
	private String cwriter;
	private String ccontents;
	private Date cdate;
}