package com.kpc.trend;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

@Service
public class BatchScheduler {
 
	@Autowired
	BatchTrendServiceImpl trendServiceBatchImpl;
	
	//1초 1000 
	//1분 60000
	//10분 600000
	//1시간 3600000
//    @Scheduled(fixedDelay=3600000)
//    public void TestScheduler(){
//        System.out.println("Scheduling");
//        scheduleJob();
//    }
    
    
    
    public String scheduleJob() {
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
    }
}
