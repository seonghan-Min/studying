package com.kpc.trend;

import java.util.ArrayList;

public interface BatchTrendServiceInterface {
	
	// 1. 전체 판매 금액 (월 & 금액)
	public ArrayList<TrendVO> totSalesBatch();
	
	// 2. 전체 판매 건수 (월 & 건수)
	public ArrayList<TrendVO> totSalesCountBatch();
	
	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	public ArrayList<TrendVO> categoryTotSalesBatch();
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	public ArrayList<TrendVO> categoryTotSalesCountBatch();
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	public ArrayList<TrendVO> trendSelectBatch();

	// 6. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelectBatch();
	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	public ArrayList<TrendVO> genderTotSalesBatch();
	
	// 8. 성별 구매 건수
	public ArrayList<TrendVO> genderTotSalesCountBatch();
	
	// 9.  성별 대분류 구매 건수 
	public ArrayList<TrendVO> gendercategoryTotSalesCountBatch();

	// 10. 상세보기1
	public ArrayList<TrendVO> detailView();
	
	// 11. 상세보기2(성별 판매 건수)
	public ArrayList<TrendVO> detailViewgender();
	
	// 12. 상세보기3(연령대별 구매 건수)
	public ArrayList<TrendVO> detailViewAge();

	// 13. 상세보기4(구매지역)
	public ArrayList<TrendVO> detailViewRegion();
	
	// 14. 상품목록(상품코드 정렬)
	public ArrayList<TrendVO> GoodsList();
}
