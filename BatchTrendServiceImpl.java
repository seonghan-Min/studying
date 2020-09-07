package com.kpc.trend;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.kpc.trend.mapper.TrendBatchMapper;

@Service
public class BatchTrendServiceImpl implements BatchTrendServiceInterface{
	
	@Autowired
	TrendBatchMapper trendBatchMapper;

	
	
	// 1. 전체 판매 금액 (월 & 금액)
	@Override
	public ArrayList<TrendVO> totSalesBatch() {
		trendBatchMapper.batch1();
		System.out.println("Batch1 Drop Success");
		ArrayList<TrendVO> totSalesList =  trendBatchMapper.totSalesBatchMapper();
		System.out.println("Batch1 Create Success");
		
		return totSalesList;
	}


	// 2. 전체 판매 건수 (월 & 건수)
	@Override
	public ArrayList<TrendVO> totSalesCountBatch() {
		trendBatchMapper.batch2();
		System.out.println("Batch2 Drop Success");
		ArrayList<TrendVO> totSalesCountList =  trendBatchMapper.totSalesCountBatchMapper();
		System.out.println("Batch2 Create Success");
		
		return totSalesCountList;
	}


	// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
	@Override
	public ArrayList<TrendVO> categoryTotSalesBatch() {
		trendBatchMapper.batch3();
		System.out.println("Batch3 Drop Success");
		ArrayList<TrendVO> categoryTotSalesList =  trendBatchMapper.categoryTotSalesBatchMapper();
		System.out.println("Batch3 Create Success");
		
		return categoryTotSalesList;
	}


	// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
	@Override
	public ArrayList<TrendVO> categoryTotSalesCountBatch() {
		trendBatchMapper.batch4();
		System.out.println("Batch4 Drop Success");
		ArrayList<TrendVO> categoryTotSalesCountList =  trendBatchMapper.categoryTotSalesCountBatchMapper();
		System.out.println("Batch4 Create Success");
		
		return categoryTotSalesCountList;
	}


	// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
	@Override
	public ArrayList<TrendVO> trendSelectBatch() {
		trendBatchMapper.batch5();
		System.out.println("Batch5 Drop Success");
		ArrayList<TrendVO> trendSelectList =  trendBatchMapper.trendSelectBatchMapper();
		System.out.println("Batch5 Create Success");
		
		return trendSelectList;
	}


	// 6. 검색어 순위 탑
	public ArrayList<TrendVO> searchSelectBatch() {
		trendBatchMapper.batch6();
		System.out.println("Batch6 Drop Success");
		ArrayList<TrendVO> searchSelectList =  trendBatchMapper.searchSelectBatchMapper();
		System.out.println("Batch6 Create Success");
		
		return searchSelectList;
	}

	
	// 7. 대분류 판매량 비교 (대분류 & 분류별 판매량) 
	@Override
	public ArrayList<TrendVO> genderTotSalesBatch() {
		trendBatchMapper.batch7();
		System.out.println("Batch7 Drop Success");
		ArrayList<TrendVO> genderTotSalesList =  trendBatchMapper.genderTotSalesBatchMapper();
		System.out.println("Batch7 Create Success");

		return genderTotSalesList;
	}

	
	// 8. 성별 판매 건수
	@Override
	public ArrayList<TrendVO> genderTotSalesCountBatch() {
		trendBatchMapper.batch8();
		System.out.println("Batch8 Drop Success");
		ArrayList<TrendVO> genderTotSalesCountList =  trendBatchMapper.genderTotSalesCountBatchMapper();
		System.out.println("Batch8 Create Success");
		
		return genderTotSalesCountList;
	}


	// 9. 성별 대분류 판매 건수
	@Override
	public ArrayList<TrendVO> gendercategoryTotSalesCountBatch() {
		trendBatchMapper.batch9();
		System.out.println("Batch9 Drop Success");
		ArrayList<TrendVO> gendercategoryTotSalesCountList =  trendBatchMapper.gendercategoryTotSalesCountBatchMapper();
		System.out.println("Batch9 Create Success");
		
		return gendercategoryTotSalesCountList;
	}
	
	
	// 10. 상세보기1
	@Override
	public ArrayList<TrendVO> detailView() {
		trendBatchMapper.batch10();
		System.out.println("Batch10 Drop Success");
		ArrayList<TrendVO> detailViewList =  trendBatchMapper.detailViewBatchMapper();
		System.out.println("Batch10 Create Success");
		
		return detailViewList;
	}
	
	
	// 11. 상세보기2(성별 판매 건수)
	@Override
	public ArrayList<TrendVO> detailViewgender() {
		trendBatchMapper.batch11();
		System.out.println("Batch11 Drop Success");
		ArrayList<TrendVO> detailViewgenderList =  trendBatchMapper.detailViewgenderBatchMapper();
		System.out.println("Batch11 Create Success");
		
		return detailViewgenderList;
	}
	
	
	// 12. 상세보기3(연령대별 구매 건수)
	@Override
	public ArrayList<TrendVO> detailViewAge() {
		trendBatchMapper.batch12();
		System.out.println("Batch12 Drop Success");
		ArrayList<TrendVO> detailViewAgeList =  trendBatchMapper.detailViewAgeBatchMapper();
		System.out.println("Batch12 Create Success");
		
		return detailViewAgeList;
	}
	
	
	// 13. 상세보기4(구매지역)
	@Override
	public ArrayList<TrendVO> detailViewRegion() {
		trendBatchMapper.batch13();
		System.out.println("Batch13 Drop Success");
		ArrayList<TrendVO> detailViewRegionList =  trendBatchMapper.detailViewRegionBatchMapper();
		System.out.println("Batch13 Create Success");
		
		return detailViewRegionList;
	}


	// 14. 상품목록(상품코드 정렬)
	@Override
	public ArrayList<TrendVO> GoodsList() {
		trendBatchMapper.batch14();
		System.out.println("Batch14 Drop Success");
		ArrayList<TrendVO> GoodsList =  trendBatchMapper.GoodsListBatchMapper();
		System.out.println("Batch14 Create Success");
		
		return GoodsList;
	}  
	
	
	
	
	


}
