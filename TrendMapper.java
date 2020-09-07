package com.kpc.trend.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.kpc.trend.TrendVO;

@Repository
@Mapper
public interface TrendMapper {
	
	// 1. 전체 판매 금액 (월 & 금액)
	public ArrayList<TrendVO> totSalesMapper();
	
	// 2. 전체 판매 건수 (월 & 건수)
	public ArrayList<TrendVO> totSalesCountMapper();

	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	public ArrayList<TrendVO> categoryTotSalesMapper();
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	public ArrayList<TrendVO> categoryTotSalesCountMapper();
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	public ArrayList<TrendVO> trendSelectMapper();
	
	// 6. 검색어 순위 탑6
	public ArrayList<TrendVO> searchSelectMapper();
	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	public ArrayList<TrendVO> genderTotSales();
	
	// 8. 성별 판매 건수
	public ArrayList<TrendVO> genderTotSalesCountMapper();
	
	// 9 . 성별 대분류 판매 건수 
	public ArrayList<TrendVO> gendercategoryTotSalesCountMapper();
	
	// 10. 상세보기1
	public ArrayList<TrendVO> detailViewMapper(
			@Param("pd_C") String pd_C);

	// 11. 상세보기2(성별 판매 건수)
	public ArrayList<TrendVO> detailViewgenderMapper(
			@Param("pd_C") String pd_C);
	
	// 12. 상세보기3(연령대별 구매 건수)
	public ArrayList<TrendVO> detailViewAgeMapper(
			@Param("pd_C") String pd_C);

	// 13. 상세보기4(구매지역)
	public ArrayList<TrendVO> detailViewRegionMapper(
			@Param("pd_C") String pd_C);
	
	// 14. 상품목록(상품코드 정렬)
	public ArrayList<TrendVO> GoodsListMapper();

}
