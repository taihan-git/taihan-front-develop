package kr.co.taihan.front.service;

import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import kr.co.taihan.front.model.Product;
import kr.co.taihan.front.model.Solution;
import kr.co.taihan.front.model.SuccessStory;
import kr.co.taihan.front.model.WorkPlace;

public interface BusinessService {
	
	
	Map<String, Object> getSolutionList(Solution param)  throws Exception;
	
	Map<String, Object> getSolutionDetail(Solution param)  throws Exception;
	
	/**
	 * 제품 상세
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getProductList(Product param)  throws Exception;
	/**
	 * 제품 상세
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getProductDetail(Product param,HttpServletRequest request)  throws Exception;
	/**
	 * 주요사업장소개 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getGlobalNetworkList(WorkPlace param)  throws Exception;
	
	
	/**
	 * 사업장소개 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getGlobalNetworkDetail(WorkPlace param)  throws Exception;
	
	/**
	 * 성공사례 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getSuccessStoryFixTop(SuccessStory param)  throws Exception;
	
	/**
	 * 성공사례 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getSuccessStoryList(SuccessStory param)  throws Exception;
	
	/**
	 * 성공사례 상세 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Map<String, Object> getSuccessStoryDetail(SuccessStory param)  throws Exception;
	
}
