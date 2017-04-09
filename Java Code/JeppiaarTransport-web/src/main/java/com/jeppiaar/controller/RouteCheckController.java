package com.jeppiaar.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeppiaar.dao.PointDAO;
import com.jeppiaar.model.Point;
@Controller
@RequestMapping("/route")
public class RouteCheckController {

	@GetMapping
	public String home(ModelMap map) {
PointDAO dao=new PointDAO();
List<Point> list=dao.list();
map.addAttribute("route_list", list);
System.out.println(list);
		return "boardingpoint.jsp";
	}
	


	@PostMapping("/distance")
	public String listDistance(ModelMap map,@RequestParam("bp") String boardingPoint) {
PointDAO dao=new PointDAO();
Point point=new Point();
point.setPointName(boardingPoint);
List<Point> list=dao.listDistance(point);
map.addAttribute("route", list);
System.out.println(list);
		return "../routecheck.jsp";
	}
}
