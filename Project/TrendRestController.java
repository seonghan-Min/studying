package com.kpc.trend;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TrendRestController {

	@Autowired	// Batch
	BatchTrendServiceImpl trendServiceBatchImpl;

	@Autowired	// Nomal
	TrendServiceImpl trendServiceImpl;

	
	@RequestMapping(value = "/batch.do", method = RequestMethod.GET)
	public String indexContents() {
		Date startTime = new Date();
		HashMap<String, ArrayList<TrendVO>> map = new HashMap<String, ArrayList<TrendVO>>();
		
		// 1. Batch1 새로고침(월별 전체 판매 금액)
		ArrayList<TrendVO> totSalesList = trendServiceBatchImpl.totSalesBatch();
		map.put("totSalesList", totSalesList);

		// 2. Batch2 새로고침(월별 전체 판매 건수)
		ArrayList<TrendVO> totSalesCountList = trendServiceBatchImpl.totSalesCountBatch();
		map.put("totSalesCountList", totSalesCountList);

		// 3. Batch3 새로고침(대분류별 전체 판매금액)
		ArrayList<TrendVO> categoryTotSalesList = trendServiceBatchImpl.categoryTotSalesBatch();
		map.put("categoryTotSalesList", categoryTotSalesList);

		// 4. Batch4 새로고침(대분류별 전체 판매건수)
		ArrayList<TrendVO> categoryTotSalesCountList = trendServiceBatchImpl.categoryTotSalesCountBatch();
		map.put("categoryTotSalesCountList", categoryTotSalesCountList);

		// 5. Batch5 새로고침(상품별 판매 랭킹 리스트 목록)
		ArrayList<TrendVO> trendSelectList = trendServiceBatchImpl.trendSelectBatch();
		map.put("trendSelectList", trendSelectList);
		
		// 6. Batch6 새로고침(검색어 순위)
		ArrayList<TrendVO> searchSelectList = trendServiceBatchImpl.searchSelectBatch();
		map.put("searchSelectList", searchSelectList);
		
		// 7. Batch7 새로고침(성별 월 판매 금액) 
		ArrayList<TrendVO> genderTotSalesList = trendServiceBatchImpl.genderTotSalesBatch();
		map.put("genderTotSalesList", genderTotSalesList);
		
		// 8. Batch8 새로고침(성별 월 판매 건수)
		ArrayList<TrendVO> genderTotSalesCountList = trendServiceBatchImpl.genderTotSalesCountBatch();
		map.put("genderTotSalesCountList", genderTotSalesCountList);
		
		// 9. Batch9 새로고침(성별 대분류 판매 건수)
		ArrayList<TrendVO> gendercategoryTotSalesCountList = trendServiceBatchImpl.gendercategoryTotSalesCountBatch();
		map.put("gendercategoryTotSalesCountList", gendercategoryTotSalesCountList);
		
		// 10. 상세보기1
		ArrayList<TrendVO> detailViewList = trendServiceBatchImpl.detailView();
		map.put("detailViewList", detailViewList);
		
		// 11. 상세보기2(성별 판매 건수)
		ArrayList<TrendVO> detailViewgenderList = trendServiceBatchImpl.detailViewgender();
		map.put("detailViewgenderList", detailViewgenderList);
		
		// 12. 상세보기3(연령대별 구매 건수)
		ArrayList<TrendVO> detailViewAgeList = trendServiceBatchImpl.detailViewAge();
		map.put("detailViewAgeList", detailViewAgeList);
		
		// 13. 상세보기4(구매지역)
		ArrayList<TrendVO> detailViewRegionList = trendServiceBatchImpl.detailViewRegion();
		map.put("detailViewRegionList", detailViewRegionList);
		
		// 14. 상품목록(상품코드 정렬)
		ArrayList<TrendVO> GoodsList = trendServiceBatchImpl.GoodsList();
		map.put("GoodsList", GoodsList);
		
		
		// 소요시간 리턴
		Date endTime = new Date();
		long lTime = endTime.getTime() - startTime.getTime();
		System.out.println("TIME : " + lTime + "(ms)");
		
		
		return "TIME : " + lTime + "(ms) batch done - error 0";
	} //ok
	

//success(res) {
//	alert(res);
//}


	// 1. 전체 판매 금액 (월 & 금액)
	@RequestMapping(value = "/totSales.do", method = RequestMethod.GET)
	public ArrayList<TrendVO>  totSales(Model model, HttpServletResponse response) {
		ArrayList<TrendVO> totSalesList = trendServiceImpl.totSales();
		return totSalesList;	
	}//ok



	// 2. 전체 판매 건수 (월 & 건수)
	@RequestMapping(value = "/totSalesCount.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> totSalesCount(Model model, HttpServletResponse response){
		ArrayList<TrendVO> totSalesCountList = trendServiceImpl.totSalesCount();
		return totSalesCountList;
	}//ok



	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	@RequestMapping(value = "/categoryTotSales.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> categoryTotSales(Model model, HttpServletResponse response){
		ArrayList<TrendVO> categoryTotSalesList = trendServiceImpl.categoryTotSales();
		return categoryTotSalesList;
	}//ok



	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	@RequestMapping(value = "/categoryTotSalesCount.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> categoryTotSalesCount(Model model, HttpServletResponse response){
		ArrayList<TrendVO> categoryTotSalesCountList = trendServiceImpl.categoryTotSalesCount();
		return categoryTotSalesCountList;
	}//ok



	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	@RequestMapping(value = "/trendSelect.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> trendSelect(Model model, HttpServletResponse response){
		ArrayList<TrendVO> trendSelectList = trendServiceImpl.trendSelect();
		return trendSelectList;
	}//ok



	// 6. 검색어 순위
	@RequestMapping(value = "/searchSelect.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> searchSelect(Model model, HttpServletResponse response){
		ArrayList<TrendVO> searchSelectList = trendServiceImpl.searchSelect();
		return searchSelectList;
	}//ok



	// 7. 성별 월 판매금액 (월 & 판매금액 %% 성별) 
	@RequestMapping(value = "/genderTotSales.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> genderTotSales(Model model, HttpServletResponse response){
		ArrayList<TrendVO> genderTotSalesList = trendServiceImpl.genderTotSales();
		return genderTotSalesList;
	}//ok



	// 8. 성별 판매 건수 
	@RequestMapping(value = "/genderTotSalesCount.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> genderTotSalesCount(Model model, HttpServletResponse response){
		ArrayList<TrendVO> genderTotSalesCountList = trendServiceImpl.genderTotSalesCount();
		return genderTotSalesCountList;
	}//ok

	
	
	// 9. 성별 대분류 판매 건수 
	@RequestMapping(value = "/gendercategoryTotSalesCount.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> gendercategoryTotSalesCoun(Model model, HttpServletResponse response){
		ArrayList<TrendVO> gendercategoryTotSalesCountList = trendServiceImpl.gendercategoryTotSalesCount();
		return gendercategoryTotSalesCountList;
	}//ok
	
	
	
	// 10. 상세보기1
	@RequestMapping(value = "/detailView.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> detailView(Model model
			,@RequestParam(value="pd_C", required=false) String pd_C
			,HttpServletRequest request, HttpServletResponse response){
		
		ArrayList<TrendVO> detailViewList = trendServiceImpl.detailView(pd_C);
		return detailViewList;
	}//ok
	
	
	
	// 11. 상세보기2(성별 판매 건수)
	@RequestMapping(value = "/detailViewgender.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> detailViewgender(Model model
			,@RequestParam(value="pd_C", required=false) String pd_C
			,HttpServletRequest request, HttpServletResponse response){
			
		ArrayList<TrendVO> detailViewgenderList = trendServiceImpl.detailViewgender(pd_C);
		return detailViewgenderList;
	}//ok
	
	
	
	// 12. 상세보기3(연령대별 구매 건수)
	@RequestMapping(value = "/detailViewAge.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> detailViewAge(Model model
			,@RequestParam(value="pd_C", required=false) String pd_C
			,HttpServletRequest request, HttpServletResponse response){
			
		ArrayList<TrendVO> detailViewAgeList = trendServiceImpl.detailViewAge(pd_C);
		return detailViewAgeList;
	}//ok
	
	
	
	// 13. 상세보기4(구매지역)
	@RequestMapping(value = "/detailViewRegion.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> detailViewRegion(Model model
			,@RequestParam(value="pd_C", required=false) String pd_C
			,HttpServletRequest request, HttpServletResponse response){
			
		ArrayList<TrendVO> detailViewRegionList = trendServiceImpl.detailViewRegion(pd_C);
		return detailViewRegionList;
	}//ok
	
	
	
	// 14. 상품목록(상품코드 정렬)
	@RequestMapping(value = "/GoodsList.do", method = RequestMethod.GET)
	public ArrayList<TrendVO> detailViewRegion(Model model, HttpServletResponse response){
			
		ArrayList<TrendVO> GoodsList = trendServiceImpl.GoodsList();
		return GoodsList;
	}//ok
	
	
	

	
	



}


