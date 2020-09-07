package com.kpc.trend;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kpc.trend.mapper.TrendMapper;

@Service
public class TrendServiceImpl implements TrendServiceInterface{
	
	@Autowired
	TrendMapper trendMapper;

	
	
	// 1. 전체 판매 금액 (월 & 금액)
	@Override
	public ArrayList<TrendVO> totSales() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> totSalesList =  trendMapper.totSalesMapper();
		
		return totSalesList;
	}


	// 2. 전체 판매 건수 (월 & 건수)
	@Override
	public ArrayList<TrendVO> totSalesCount() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> totSalesCountList =  trendMapper.totSalesCountMapper();
		
		return totSalesCountList;
	}


	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	@Override
	public ArrayList<TrendVO> categoryTotSales() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> categoryTotSalesList =  trendMapper.categoryTotSalesMapper();

		return categoryTotSalesList;
	}


	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	@Override
	public ArrayList<TrendVO> categoryTotSalesCount() {
		System.out.println("Service 실행.....");
		ArrayList<TrendVO> categoryTotSalesCountList =  trendMapper.categoryTotSalesCountMapper();

		return categoryTotSalesCountList;
	}


	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	@Override
	public ArrayList<TrendVO> trendSelect() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> trendSelectList =  trendMapper.trendSelectMapper();
		return trendSelectList;
	}


	// 6. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelect() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> searchSelectList =  trendMapper.searchSelectMapper();
		return searchSelectList;
	}


	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	@Override
	public ArrayList<TrendVO> genderTotSales() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> genderTotSalesList =  trendMapper.genderTotSales();

		return genderTotSalesList;
	}
	

	// 8. 성별 판매 건수
	@Override
	public ArrayList<TrendVO> genderTotSalesCount() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> genderTotSalesCountList =  trendMapper.genderTotSalesCountMapper();
		
		return genderTotSalesCountList;
	}


	// 9. 성별 대분류 판매 건수
	@Override
	public ArrayList<TrendVO> gendercategoryTotSalesCount() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> gendercategoryTotSalesCountList =  trendMapper.gendercategoryTotSalesCountMapper();
		
		return gendercategoryTotSalesCountList;
	}
	
	
	// 10. 상세보기1
	@Override
	public ArrayList<TrendVO> detailView(String pd_C) {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> detailViewList =  trendMapper.detailViewMapper(pd_C);
		
		return detailViewList;
	}
	
	
	// 11. 상세보기2(성별 판매 건수)
	@Override
	public ArrayList<TrendVO> detailViewgender(String pd_C) {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> detailViewgenderList =  trendMapper.detailViewgenderMapper(pd_C);
		
		return detailViewgenderList;
	}
	
	
	// 12. 상세보기3(연령대별 구매 건수)
	@Override
	public ArrayList<TrendVO> detailViewAge(String pd_C) {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> detailViewAgeList =  trendMapper.detailViewAgeMapper(pd_C);
		
		return detailViewAgeList;
	}
	
	
	// 13. 상세보기4(구매지역)
	@Override
	public ArrayList<TrendVO> detailViewRegion(String pd_C) {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> detailViewRegionList =  trendMapper.detailViewRegionMapper(pd_C);
		
		return detailViewRegionList;
	}
	
	
	// 14. 상품목록(상품코드 정렬)
	@Override
	public ArrayList<TrendVO> GoodsList() {
		//System.out.println("Service 실행.....");
		ArrayList<TrendVO> GoodsList =  trendMapper.GoodsListMapper();
		
		return GoodsList;
	}

}
