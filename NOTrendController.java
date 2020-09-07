package com.kpc.trend;
//package com.kpc.trend;
//
//import java.util.ArrayList;
//
//import org.springframework.beans.factory.annotation.Autowired;
//import org.springframework.stereotype.Controller;
//import org.springframework.ui.Model;
//import org.springframework.web.bind.annotation.RequestMapping;
//import org.springframework.web.bind.annotation.RequestMethod;
//
//@Controller
//public class TrendController {
//	
//	@Autowired
//	TrendServiceImpl trendServiceImpl;
//	
//	
//	
//	@RequestMapping(value = "/totSales.do", method = RequestMethod.GET)
//	public String totSales(Model model) {
//		System.out.println("Controller 실행 .....");
//		ArrayList<TrendVO> totSalesList = trendServiceImpl.totSales();
//		model.addAttribute("totSalesList", totSalesList);
//		System.out.println("성공");
//		
//		return "NewFile";
//		
//	}
//	
//	
//	
//	
//	
//	@RequestMapping(value = "/totSalesCount.do", method = RequestMethod.GET)
//	public String totSalesCount(Model model) {
//		System.out.println("Controller 실행 .....");
//		ArrayList<TrendVO> totSalesCountList = trendServiceImpl.totSalesCount();
//		model.addAttribute("totSalesCountList", totSalesCountList);
//		System.out.println("성공");
//
//		return "tot_sales_list";
//		
//	}
//	
//	
//	
//	
//	
//	@RequestMapping(value = "/categoryTotSales.do", method = RequestMethod.GET)
//	public String categoryTotSales(Model model) {
//		System.out.println("Controller 실행 .....");
//		ArrayList<TrendVO> categoryTotSalesList = trendServiceImpl.categoryTotSales();
//		model.addAttribute("categoryTotSalesList", categoryTotSalesList);
//		System.out.println("성공");
//
//		return "tot_sales_list";
//		
//	}
//	
//	
//	
//	
//	@RequestMapping(value = "/categoryTotSalesCount.do", method = RequestMethod.GET)
//	public String categoryTotSalesCount(Model model) {
//		System.out.println("Controller 실행 .....");
//		ArrayList<TrendVO> categoryTotSalesCountList = trendServiceImpl.categoryTotSalesCount();
//		model.addAttribute("categoryTotSalesCountList", categoryTotSalesCountList);
//		System.out.println("성공");
//
//		return "tot_sales_list";
//		
//	}
//	
//	
//	
//	
////	@RequestMapping(value = "/.do", method = RequestMethod.GET)
////	public String trendSelect(Model model) {
////		System.out.println("Controller 실행 .....");
////		ArrayList<TrendVO> trendSelectList = trendServiceImpl.trendSelect();
////		model.addAttribute("trendSelectList", trendSelectList);
////
////		return "";
////		
////	}
//	
//	
//	
//	
////	@RequestMapping(value = "/.do", method = RequestMethod.GET)
////	public String compareCategorySales(Model model) {
////		System.out.println("Controller 실행 .....");
////		ArrayList<TrendVO> compareCategorySalesList = trendServiceImpl.compareCategorySales();
////		model.addAttribute("compareCategorySalesList", compareCategorySalesList);
////
////		return "";
////		
////	}
//	
//	
//	
//	
////	@RequestMapping(value = "/.do", method = RequestMethod.GET)
////	public String middleClassSales(Model model) {
////		System.out.println("Controller 실행 .....");
////		ArrayList<TrendVO> middleClassSalesList = trendServiceImpl.middleClassSales();
////		model.addAttribute("middleClassSalesList", middleClassSalesList);
////
////		return "";
////		
////	}
//	
//	
//	
//	
////	@RequestMapping(value = "/.do", method = RequestMethod.GET)
////	public String subClassSales(Model model) {
////		System.out.println("Controller 실행 .....");
////		ArrayList<TrendVO> subClassSalesList = trendServiceImpl.subClassSales();
////		model.addAttribute("subClassSalesList", subClassSalesList);
////
////		return "";
////		
////	}
//	
//	
//	
//	
////	@RequestMapping(value = "/.do", method = RequestMethod.GET)
////	public String selectGoodsView(Model model, int PD_C) {
////		System.out.println("Controller 실행 .....");
////		TrendVO selectGoodsViewList = trendServiceImpl.selectGoodsView(PD_C);
////		model.addAttribute("selectGoodsViewList", selectGoodsViewList);
////
////		return "";
////		
////	}
//
//	
//}
