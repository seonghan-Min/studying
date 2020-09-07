package com.kpc.trend;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class BatchJobScheduler {
 
	//1초 1000 
	//1분 60000
	//10분 600000
	//1시간 3600000
	
  /*  @Scheduled(fixedDelay=1000)
    public void TestScheduler(){
        System.out.println("스케줄링 테스트");
        scheduleJob();
    }
    */
    public void scheduleJob() {
    	
//    	Date startTime = new Date();
//		HashMap<String, ArrayList<TrendVO>> map = new HashMap<String, ArrayList<TrendVO>>();
//		
//		// 1. 전체 판매 금액 (월 & 금액)
//		ArrayList<TrendVO> totSalesList = trendServiceBatchImpl.totSales();
//		map.put("totSalesList", totSalesList);
//
//
//		// 2. 전체 판매 건수 (월 & 건수)
//		ArrayList<TrendVO> totSalesCountList = trendServiceBatchImpl.totSalesCount();
//		map.put("totSalesCountList", totSalesCountList);
//	
//
//		// 3. 대분류 전체 판매금액 (대분류 & 분류별 금액)
//		ArrayList<TrendVO> categoryTotSalesList = trendServiceBatchImpl.categoryTotSales();
//		map.put("categoryTotSalesList", categoryTotSalesList);
//
//		// 4. 대분류 전체 판매건수 (대분류 & 분류별 건수)
//		ArrayList<TrendVO> categoryTotSalesCountList = trendServiceBatchImpl.categoryTotSalesCount();
//		map.put("categoryTotSalesCountList", categoryTotSalesCountList);
//
//		// 5. 상품별 판매 랭킹 리스트 (랭킹 리스트 목록보기)
//		ArrayList<TrendVO> trendSelectList = trendServiceBatchImpl.trendSelect();
//		map.put("trendSelectList", trendSelectList);
//		// 50. 검색어 순위
//		ArrayList<TrendVO> searchSelectList = trendServiceBatchImpl.searchSelect();
//		map.put("searchSelectList", searchSelectList);
//		// 6. 성별 월 판매금액 (월 & 판매금액 %% 성별) 
//		ArrayList<TrendVO> genderTotSalesList = trendServiceBatchImpl.genderTotSales();
//		map.put("genderTotSalesList", genderTotSalesList);
//		//10. 성별 판매 건수 
//		ArrayList<TrendVO> genderTotSalesCountList = trendServiceBatchImpl.genderTotSalesCount();
//		map.put("genderTotSalesCountList", genderTotSalesCountList);
//		//11. 성별 대분류 판매 건수 
//		ArrayList<TrendVO> gendercategoryTotSalesCountList = trendServiceBatchImpl.gendercategoryTotSalesCount();
//		map.put("gendercategoryTotSalesCountList", gendercategoryTotSalesCountList);
//
//		Date endTime = new Date();
//		
//		long lTime = endTime.getTime() - startTime.getTime();
//		System.out.println("TIME : " + lTime + "(ms)");
    	
    }
}
