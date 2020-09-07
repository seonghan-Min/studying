package com.kpc.trend;

import java.util.ArrayList;

public interface TrendServiceInterface {
	
	// 1. 전체 판매 금액 (월 & 금액)
	public ArrayList<TrendVO> totSales();
	
	// 2. 전체 판매 건수 (월 & 건수)
	public ArrayList<TrendVO> totSalesCount();
	
	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	public ArrayList<TrendVO> categoryTotSales();
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	public ArrayList<TrendVO> categoryTotSalesCount();
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	public ArrayList<TrendVO> trendSelect();

	// 6. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelect();
	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	public ArrayList<TrendVO> genderTotSales();
	
	// 8. 성별 구매 건수
	public ArrayList<TrendVO> genderTotSalesCount();
	
	// 9.  성별 대분류 구매 건수 
	public ArrayList<TrendVO> gendercategoryTotSalesCount();
	
	// 10. 상세보기1
	public ArrayList<TrendVO> detailView(String PD_C);
	
	// 11. 상세보기2(성별 판매 건수)
	public ArrayList<TrendVO> detailViewgender(String PD_C);
	
	// 12. 상세보기3(연령대별 구매 건수)
	public ArrayList<TrendVO> detailViewAge(String PD_C);

	// 13. 상세보기4(구매지역)
	public ArrayList<TrendVO> detailViewRegion(String PD_C);

	// 14. 상품목록(상품코드 정렬)
	public ArrayList<TrendVO> GoodsList();


}
