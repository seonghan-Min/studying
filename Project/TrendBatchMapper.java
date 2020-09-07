package com.kpc.trend.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.kpc.trend.TrendVO;

@Repository
@Mapper
public interface TrendBatchMapper {
	
	

	public void batch1();
	public void batch2();
	public void batch3();
	public void batch4();
	public void batch5();
	public void batch6();
	public void batch7();
	public void batch8();
	public void batch9();
	public void batch10();
	public void batch11();
	public void batch12();
	public void batch13();
	public void batch14();
	
	// 1. 전체 판매 금액 (월 & 금액)
	public ArrayList<TrendVO> totSalesBatchMapper();
	
	// 2. 전체 판매 건수 (월 & 건수)
	public ArrayList<TrendVO> totSalesCountBatchMapper();

	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	public ArrayList<TrendVO> categoryTotSalesBatchMapper();
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	public ArrayList<TrendVO> categoryTotSalesCountBatchMapper();
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	public ArrayList<TrendVO> trendSelectBatchMapper();
	
	// 6. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelectBatchMapper();
	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	public ArrayList<TrendVO> genderTotSalesBatchMapper();
	
	// 8. 성별 판매 건수
	public ArrayList<TrendVO> genderTotSalesCountBatchMapper();
	
	// 9 . 성별 대분류 판매 건수 
	public ArrayList<TrendVO> gendercategoryTotSalesCountBatchMapper();

	// 10. 상세보기1
	public ArrayList<TrendVO> detailViewBatchMapper();

	// 11. 상세보기2(성별 판매 건수)
	public ArrayList<TrendVO> detailViewgenderBatchMapper();
	
	// 12. 상세보기3(연령대별 구매 건수)
	public ArrayList<TrendVO> detailViewAgeBatchMapper();

	// 13. 상세보기4(구매지역)
	public ArrayList<TrendVO> detailViewRegionBatchMapper();
	
	// 14. 상품목록(상품코드 정렬)
	public ArrayList<TrendVO> GoodsListBatchMapper();
}
