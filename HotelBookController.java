package com.fly.pro2;

import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HotelBookController {

	@Autowired
	HotelBookDAO dao; 
	
	@RequestMapping("hotelBook.do")
	public void book1(HotelBookDTO hotelBookDTO, Model model) {
		System.out.println(hotelBookDTO + "@@@@@목록하나 검색@@@@@@@");
		HotelBookDTO dto = dao.search(hotelBookDTO);
		System.out.println("검색결과" + dto);
		model.addAttribute("hotel", dto);
	}
	

	@RequestMapping("hotelBook2.do")
	public String book2(HotelBookDTO hotelBookDTO, Model model) {
		System.out.println(hotelBookDTO + "@@@@찍힘?@@@@@@@@");
		model.addAttribute("hotel2", hotelBookDTO);
		return "hotelBook2";
	}
	
	@RequestMapping("hotelPay.do")
	public String book3(HotelBookDTO hotelBookDTO, Model model) {
		System.out.println(hotelBookDTO + "@@@@데이터넣기@@@@@");
		model.addAttribute("hotelPay", hotelBookDTO);
		dao.create(hotelBookDTO);
		return "hotelPay";
	}
	
	@RequestMapping("hotelPayReturn.do")
	public void book4(HttpServletRequest request, HotelBookDTO hotelBookDTO, Model model) {
		HotelBookDTO dto = dao.searchOne(hotelBookDTO);
		System.out.println("@@@@반환된 데이터로 불러오기@@@@@" + dto);
		model.addAttribute("hotelPayReturn", dto);
	}
	
	@RequestMapping("hotelPay2.do")
	public String book5(HotelBookDTO hotelBookDTO, Model model) {
		model.addAttribute("hotelPay2", hotelBookDTO);
		return "hotelPay2";
	}
	
	@RequestMapping("hotelPayS.do")
	public void book6(HttpServletRequest request, HotelBookDTO hotelBookDTO, Model model) {
		HotelBookDTO dto = dao.searchOne(hotelBookDTO);
		
		model.addAttribute("hotelPayS", dto);
	}
	
	@RequestMapping("coupon.do")
	public void book6(HotelBookDTO hotelBookDTO) {
		dao.couponUp(hotelBookDTO);
	}
	
	
	
}