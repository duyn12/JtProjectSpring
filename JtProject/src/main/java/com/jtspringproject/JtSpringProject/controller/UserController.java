package com.jtspringproject.JtSpringProject.controller;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class UserController{

	@GetMapping("/register")
	public String registerUser()
	{
		return "register";
	}
	@GetMapping("/sale")
	public String sale()
	{
		return "sale";
	}
	@GetMapping("/contact")
	public String contact()
	{
		return "contact";
	}

	@RequestMapping(value = "/getProduct",method=RequestMethod.POST)
	public String addproducttodb(@RequestParam("name") String name, @RequestParam("categoryid") String catid, @RequestParam("price") int price, @RequestParam("weight") int weight, @RequestParam("quantity") int quantity, @RequestParam("description") String description, @RequestParam("productImage") String picture ) {
		
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			Statement stmt = con.createStatement();
			ResultSet rs = stmt.executeQuery("select * from categories where name = '"+catid+"';");
			if(rs.next())
			{
			int categoryid = rs.getInt(1);
			
			PreparedStatement pst = con.prepareStatement("insert into products(name,image,categoryid,quantity,price,weight,description) values(?,?,?,?,?,?,?);");
			pst.setString(1,name);
			pst.setString(2, picture);
			pst.setInt(3, categoryid);
			pst.setInt(4, quantity);
			pst.setInt(5, price);
			pst.setInt(6, weight);
			pst.setString(7, description);
			int i = pst.executeUpdate();
			}
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/getProduct";
	}
	@GetMapping("/buy")
	public String buy(@RequestParam("pid") int id, Model model)
	{
		String pname,pdescription,pimage;
		int pid,pprice,pweight,pquantity,pcategory;
		try {
			String url = "jdbc:mysql://localhost:3306/springproject";
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con = DriverManager.getConnection(url, "root", "");
			Statement stmt = con.createStatement();
			Statement stmt2 = con.createStatement();
			ResultSet rst = stmt.executeQuery("select * from products where id = "+id+";");
			if(rst.next())
			{
			pid = rst.getInt(1);
			pname = rst.getString(2);
			pimage = rst.getString(3);
			pcategory = rst.getInt(4);
			pquantity = rst.getInt(5);
			pprice =  rst.getInt(6);
			pweight =  rst.getInt(7);
			pdescription = rst.getString(8);
			model.addAttribute("pid",pid);
			model.addAttribute("pname",pname);
			model.addAttribute("pimage",pimage);
			ResultSet rst2 = stmt.executeQuery("select * from categories where categoryid = "+pcategory+";");
			if(rst2.next())
			{
				model.addAttribute("pcategory",rst2.getString(2));
			}
			model.addAttribute("pquantity",pquantity);
			model.addAttribute("pprice",pprice);
			model.addAttribute("pweight",pweight);
			model.addAttribute("pdescription",pdescription);
			}
			
		} catch (Exception ex) {
			System.out.println("Exception Occurred:: " + ex.getMessage());
			}
		return "buy";
	}
	
	@GetMapping("/user/products")
	public String getproduct(Model model) {
		return "uproduct";
	}
	@RequestMapping(value = "newuserregister", method = RequestMethod.POST)
	public String newUseRegister(@RequestParam("username") String username,@RequestParam("password") String password,@RequestParam("email") String email)
	{
		try
		{
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/springproject","root","");
			PreparedStatement pst = con.prepareStatement("insert into users(username,password,email) values(?,?,?);");
			pst.setString(1,username);
			pst.setString(2, password);
			pst.setString(3, email);
			

			//pst.setString(4, address);
			int i = pst.executeUpdate();
			System.out.println("data base updated"+i);
			
		}
		catch(Exception e)
		{
			System.out.println("Exception:"+e);
		}
		return "redirect:/";
	}
	
}
