package kr.co.taihan.front.dao;

import java.util.List;

import kr.co.taihan.front.model.Product;
import kr.co.taihan.front.model.ProductTab;
import kr.co.taihan.front.model.Solution;
import kr.co.taihan.front.model.SuccessStory;
import kr.co.taihan.front.model.SuccessStoryCont;
import kr.co.taihan.front.model.TblMapping;
import kr.co.taihan.front.model.WorkPlace;
import kr.co.taihan.front.model.WorkPlaceCont;

public interface BusinessMapper {
	
	/**
	 * 솔루션 리스트
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<Solution> getSolutionList(Solution param) throws Exception;
	
	/**
	 * 솔루션 상세
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Solution getSolutionDetail(Solution param) throws Exception;
	
	/**
	 * 제품 리스트
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<Product> getProductList(Product param) throws Exception;
	
	/**
	 * 제품 상세
	 * @param param
	 * @return
	 * @throws Exception
	 */
	Product getProductDetail(Product param) throws Exception;
	
	
	List<TblMapping> selectTblMapping(TblMapping param) throws Exception;
	
	/**
	 * 제품 상세 탭 정보
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<ProductTab> getProductDetailTab(Product param) throws Exception;
	/**
	 * 주요사업장 소개 리스트
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<WorkPlace> selectWorkPlaceList(WorkPlace param) throws Exception;
	
	/**
     * 사업장 상세 조회
     * @param param
     * @return
     * @throws Exception
     */
	WorkPlace selectWorkPlace(WorkPlace param);
	/**
     * 사업장 상세 콘텐츠 리스트 조회
     * @param param
     * @return
     * @throws Exception
     */
	List<WorkPlaceCont> selectWorkPlaceContList(WorkPlaceCont param) throws Exception;
	
	/**
     * 성공사례 조회 cnt
     * @param param
     * @return
     * @throws Exception
     */
    int selectSuccessStoryCnt(SuccessStory param) throws Exception;

    /**
     * 성공사례 조회
     * @param param
     * @return
     * @throws Exception
     */
    List<SuccessStory> selectSuccessStoryList(SuccessStory param) throws Exception;
    
    /**
     * 성공사례 조회수 업
     * @param param
     * @return
     * @throws Exception
     */
    int updateSuccessStoryHits(SuccessStory param) throws Exception;
    
    /**
     * 성공사례 상세조회
     * @param param
     * @return
     * @throws Exception
     */
    SuccessStory selectSuccessStory(SuccessStory param) throws Exception;
    
    /**
     * 성공사례 하위 컨텐츠 조회
     * @param param
     * @return
     * @throws Exception
     */
    List<SuccessStoryCont> selectSuccessStoryContList(SuccessStoryCont param) throws Exception;
	
}
