package com.jeppiaar.model;

import lombok.Data;

@Data
public class Point {
	private int id;
	private String pointName;
	private double lat;
	private double lon;
	private int studentCount;
	private double distance;
}
