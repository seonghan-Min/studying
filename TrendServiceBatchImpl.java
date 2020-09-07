package com.kpc.trend;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kpc.trend.mapper.TrendBatchMapper;

@Service
public class TrendServiceBatchImpl implements TrendServiceInterface{
	
	@Autowired
	TrendBatchMapper trendBatchMapper;

	
	
	// 1. 전체 판매 금액 (월 & 금액)
	@Override
	public ArrayList<TrendVO> totSales() {
		System.out.println("batch1 drop.....");
		trendBatchMapper.batch1();
		ArrayList<TrendVO> totSalesList =  trendBatchMapper.totSalesMapper();
		System.out.println(totSalesList.size() + "-------");
		return totSalesList;
	}

	
	
	
	
	// 2. 전체 판매 건수 (월 & 건수)
	@Override
	public ArrayList<TrendVO> totSalesCount() {
		System.out.println("batch2 drop.....");
		trendBatchMapper.batch2();
		ArrayList<TrendVO> totSalesCountList =  trendBatchMapper.totSalesCountMapper();
		
		return totSalesCountList;
	}

	
	
	
	
	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	@Override
	public ArrayList<TrendVO> categoryTotSales() {
		System.out.println("batch3 drop.....");
		trendBatchMapper.batch3();
		ArrayList<TrendVO> categoryTotSalesList =  trendBatchMapper.categoryTotSalesMapper();

		return categoryTotSalesList;
	}

	
	
	
	
	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	@Override
	public ArrayList<TrendVO> categoryTotSalesCount() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch4();
		ArrayList<TrendVO> categoryTotSalesCountList =  trendBatchMapper.categoryTotSalesCountMapper();

		return categoryTotSalesCountList;
	}

	
	
	
	
	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	@Override
	public ArrayList<TrendVO> trendSelect() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch5();
		ArrayList<TrendVO> trendSelectList =  trendBatchMapper.trendSelectMapper();
		return trendSelectList;
	}

	

	
	// 6. 검색어 순위 탑
	public ArrayList<TrendVO> searchSelect() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch6();
		ArrayList<TrendVO> searchSelectList =  trendBatchMapper.searchSelectMapper();
		return searchSelectList;
	}

	
	
	
	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	@Override
	public ArrayList<TrendVO> genderTotSales() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch7();
		ArrayList<TrendVO> genderTotSalesList =  trendBatchMapper.genderTotSales();

		return genderTotSalesList;
	}

	
	
	
	
//	// x. 중분류 판매량 비교 그래프(중분류 & 중분류 카운트 횟수(판매량) 그래프)
//	@Override
//	public ArrayList<TrendVO> middleClassSales() {
//		System.out.println("Service 실행.....");
//		ArrayList<TrendVO> middleClassSalesList =  trendBatchMapper.middleClassSalesMapper();
//
//		return null;
//	}

	
	
	
	
//	// x. 소분류 순위 (소분류 카운트 횟수(판매량) 랭킹 리스트)
//	@Override
//	public ArrayList<TrendVO> subClassSales() {
//		System.out.println("Service 실행.....");
//		ArrayList<TrendVO> subClassSalesList =  trendBatchMapper.subClassSalesMapper();
//
//		return null;
//	}

	
	
	
	
//	// x. 랭킹 상품별 상세 페이지
//	@Override
//	public TrendVO selectGoodsView(int PD_C) {
//		System.out.println("Service 실행.....");
//		TrendVO selectGoodsViewList =  trendBatchMapper.selectGoodsViewMapper(PD_C);
//
//		return null;
//	}
	
	
	
	
	
	// 8. 성별 판매 건수
	@Override
	public ArrayList<TrendVO> genderTotSalesCount() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch8();
		ArrayList<TrendVO> genderTotSalesCountList =  trendBatchMapper.genderTotSalesCountMapper();
		
		return genderTotSalesCountList;
	}




	// 9. 성별 대분류 판매 건수
	@Override
	public ArrayList<TrendVO> gendercategoryTotSalesCount() {
		System.out.println("Service 실행.....");
		trendBatchMapper.batch9();
		ArrayList<TrendVO> gendercategoryTotSalesCountList =  trendBatchMapper.gendercategoryTotSalesCountMapper();
		
		return gendercategoryTotSalesCountList;
	}

}
