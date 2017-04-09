package com.jeppiaar.controller;

import java.time.LocalDate;
import java.time.LocalTime;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.jeppiaar.dao.AdminLoginDAO;
import com.jeppiaar.dao.RouteDetailsDAO;
import com.jeppiaar.dao.RouteIpDetailsDAO;
import com.jeppiaar.model.AdminLogin;
import com.jeppiaar.model.RouteIpDetails;

@Controller
@RequestMapping("/admin")
public class AdminLoginController {
	
@GetMapping
	   public String listAllRoutes(ModelMap modelMap,HttpSession httpSession)
	   {  
	AdminLogin admin = (AdminLogin) httpSession.getAttribute("LOGGED_USER");
	if(admin!=null){
		   RouteIpDetailsDAO routeIpDetailsDAO=new RouteIpDetailsDAO();	

		   List<RouteIpDetails> routes=routeIpDetailsDAO.listRoutes();
			modelMap.addAttribute("ROUTE_LIST",routes);
			
			return "adminviewroutes.jsp";
	   }
	else {
		return "redirect:/";
	}
	   }
@PostMapping("/login")	
	public String login(@RequestParam("username")String username,@RequestParam("password")String password,HttpSession session)
	{   AdminLogin admin=new AdminLogin();
	    admin.setUserName(username);
		AdminLoginDAO adminLoginDAO=new AdminLoginDAO();
		boolean valid=adminLoginDAO.functionValidLogin(username, password);
		if(valid)
			{
			session.setAttribute("LOGGED_USER",admin);
			return "redirect:../admin";
	        }

		return "redirect:../home.jsp";
		
	}
@PostMapping("/addroute")
public String addRoute(@RequestParam("routename") String routename,@RequestParam("endpoint")String endpoint,@RequestParam("busno") Integer busno,@RequestParam("depdate") String depdate,@RequestParam("deptime") String deptime,
		@RequestParam("ip1") String ip1,@RequestParam("ip2") String ip2,@RequestParam("ip3") String ip3,@RequestParam("ip4") String ip4,@RequestParam("ip5") String ip5,@RequestParam("ip6") String ip6,HttpSession httpSession)
{
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
if (admin !=null){
	

	RouteDetailsDAO dao = new RouteDetailsDAO();
	String errmsg = null;
	System.out.println(depdate);
	System.out.println(deptime);
	LocalDate departureDate = LocalDate.parse(depdate);
	LocalTime departureTime=LocalTime.parse(deptime);


	dao.addRoute(routename,endpoint , busno, departureDate, departureTime, ip1, ip2, ip3, ip4, ip5, ip6, errmsg);
	return "redirect:../admin";
}
else 
{
	return "redirect:/";
}
}
@PostMapping("/deleteroute")
public String deleteRoute(@RequestParam("busno") Integer busno,HttpSession httpSession)
{
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
	if (admin != null){
	RouteDetailsDAO dao=new RouteDetailsDAO();
	String errmsg=null;
	dao.deleteRoute(busno, errmsg);
	return "redirect:../admin";
}
	else
	{
		return "redirect:/";
	}
}

@PostMapping("/updateroutename")
public String updateRouteNam(@RequestParam("busno") Integer busno,@RequestParam("routename") String routeName,HttpSession httpSession)
{ 
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
if(admin != null){
	RouteDetailsDAO dao=new RouteDetailsDAO();
	String errmsg=null;
	dao.updateRouteName(busno, routeName, errmsg);
	return "redirect:../admin";
}
else
{
	return "redirect:/";
}
}
@GetMapping("/updateroutename")
public String updateRouteName(HttpSession httpSession)
{
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
if(admin !=null){
	return "redirect:/updateroutename.jsp";
	
}
else
{
	return "redirect:/";
}
}
@PostMapping("/updateroutebusno")
public String updateRouteBusNo(@RequestParam("routename") String routeName,@RequestParam("busno") Integer busno,HttpSession httpSession)
{
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
if (admin != null){
	RouteDetailsDAO dao=new RouteDetailsDAO();
	String errmsg=null;
	dao.updateRouteBusNo(routeName, busno, errmsg);
	return "redirect:../admin";
}
else
{
	return "redirect:/";

}
}
@PostMapping("/updaterouteintermediary")
public String updateRouteIntemediary(@RequestParam("busno") Integer busno,@RequestParam("ip1") String ip1,@RequestParam("ip2") String ip2
		,@RequestParam("ip3") String ip3,@RequestParam("ip4") String ip4,@RequestParam("ip5") String ip5,@RequestParam("ip6") String ip6,HttpSession httpSession)
{
	AdminLogin admin=(AdminLogin)httpSession.getAttribute("LOGGED_USER");
if (admin !=null)
{
	

	RouteDetailsDAO dao=new RouteDetailsDAO();
	String errmsg=null;
	dao.updateRouteIntermediary(busno, ip1, ip2, ip3, ip4, ip5, ip6, errmsg);
	return "redirect:../admin";
}
else
{
	return "redirect:/";

}
}
@GetMapping("/logout")
public String logout(HttpServletRequest request) {
	HttpSession httpSession = request.getSession(false);
	Object userSession = httpSession.getAttribute("LOGGED_USER");
	if (userSession != null) {
		httpSession.invalidate();
		return "redirect:/";
	} else {
		return "redirect:/";
	}
}
}
