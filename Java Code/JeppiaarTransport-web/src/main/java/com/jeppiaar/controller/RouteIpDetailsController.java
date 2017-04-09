package com.jeppiaar.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeppiaar.dao.RouteIpDetailsDAO;
import com.jeppiaar.model.Route;
import com.jeppiaar.model.RouteIpDetails;

@Controller
@RequestMapping("/routes")
public class RouteIpDetailsController {

RouteIpDetailsDAO routeIpDetailsDAO=new RouteIpDetailsDAO();	
	
@GetMapping
	public String index(ModelMap modelMap)
	{
		
		List<RouteIpDetails> routes=routeIpDetailsDAO.listRoutes();
		modelMap.addAttribute("ROUTE_LIST",routes);
		
		return "viewroutes.jsp";
	}
@PostMapping("/search")
    public String searchByRouteName(ModelMap modelMap,@RequestParam("routename") String routeName)
    {
	Route route=new Route();
	route.setRouteName(routeName);
	List<RouteIpDetails> routes=routeIpDetailsDAO.listByRouteName(route);
	modelMap.addAttribute("ROUTE_LIST_BY_NAME",routes);
	
	return "../searchroutes.jsp";

    }
}
