package kr.co.taihan.front.service.impl;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.taihan.front.common.util.page.PageNavigatorDefault;
import kr.co.taihan.front.dao.BusinessMapper;
import kr.co.taihan.front.model.Product;
import kr.co.taihan.front.model.ProductTab;
import kr.co.taihan.front.model.Solution;
import kr.co.taihan.front.model.SuccessStory;
import kr.co.taihan.front.model.SuccessStoryCont;
import kr.co.taihan.front.model.TblMapping;
import kr.co.taihan.front.model.WorkPlace;
import kr.co.taihan.front.model.WorkPlaceCont;
import kr.co.taihan.front.service.BusinessService;
import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class BusinessServiceImpl implements BusinessService {

	@Autowired
	private BusinessMapper businessMapper;
	
	@Override
	public Map<String, Object> getSolutionList(Solution param) throws Exception {
		Map<String, Object> map = new HashMap<>();
		List<Solution> list = businessMapper.getSolutionList(param);
		map.put("list", list);
		return map;
	}
	
	@Override
	public Map<String, Object> getSolutionDetail(Solution param) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		if (!"".equals(param.getIdx())) {
			Solution solution = businessMapper.getSolutionDetail(param);
			
			map.put("solution", solution);
		}
		return map;
	}
	
	@Override
	public Map<String, Object> getProductList(Product param) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		List<Product> product = businessMapper.getProductList(param);
		if(StringUtils.isNotEmpty(param.getType())) {
			String[] idxs = product.stream().map(h -> h.getIdx()).toArray(String[]::new);
			
			TblMapping param2 = new TblMapping();
			param2.setTbl("PRODUCT");
			param2.setTblIdxs(idxs);
			param2.setIsSolution("Y");
	    	map.put("mappingSolution", businessMapper.selectTblMapping(param2));
	    	param2.setIsSolution("N");
	    	map.put("mappingContent", businessMapper.selectTblMapping(param2));
		}
		map.put("list", product);
		return map;
	}
	
	@Override
	public Map<String, Object> getProductDetail(Product param,HttpServletRequest request) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		if (!"".equals(param.getIdx())) {
			Product product = businessMapper.getProductDetail(param);
			List<ProductTab> tabParam = businessMapper.getProductDetailTab(product);
			product.setTabList(tabParam);
			map.put("product", product);
			//제품 상세를 한페이지로 사용하는데
			//제품 카테고리 별로 달라져야해서 제품 상세만 개별적으로 seo 처리
			request.setAttribute("SEO_TITLE", product.getSeoTitle());
	    	request.setAttribute("SEO_DESCRIPTION", product.getSeoDescription());
		}
		return map;
	}
	
	@Override
	public Map<String, Object> getGlobalNetworkList(WorkPlace param) throws Exception {
		Map<String, Object> map = new HashMap<>();
		List<WorkPlace> list = businessMapper.selectWorkPlaceList(param);
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> getGlobalNetworkDetail(WorkPlace param) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		if (!"".equals(param.getIdx())) {
			WorkPlace workplace = businessMapper.selectWorkPlace(param);
			WorkPlaceCont workPlaceCont = new WorkPlaceCont();
			workPlaceCont.setWorkplaceIdx(param.getIdx());
			workplace.setWorkPlaceContList(businessMapper.selectWorkPlaceContList(workPlaceCont));
			map.put("workPlace", workplace);
		}
		return map;
	}

	@Override
	public Map<String, Object> getSuccessStoryFixTop(SuccessStory param) throws Exception {
		Map<String, Object> map = new HashMap<>();
		param.setTopFixYn("Y");
		List<SuccessStory> list = businessMapper.selectSuccessStoryList(param);
		map.put("list", list);
		return map;
	}

	@Override
	public Map<String, Object> getSuccessStoryList(SuccessStory param) throws Exception {
		// TODO Auto-generated method stub
		Map<String, Object> map = new HashMap<String, Object>();
		param.setRowSize(9);
		int totalCount = businessMapper.selectSuccessStoryCnt(param);
	    map.put("totalCount", totalCount);
	    
	    if(totalCount > 0) {
	    	List<SuccessStory> list = businessMapper.selectSuccessStoryList(param);
			PageNavigatorDefault navi = new PageNavigatorDefault(param.getPageNo(), totalCount, param.getRowSize(),
					param.getBlockSize());
			map.put("navi", navi);
			map.put("list", list);
	    }
		
		return map;
	}
	
	@Override
	public Map<String, Object> getSuccessStoryDetail(SuccessStory param) throws Exception {
		Map<String, Object> map = new HashMap<>();
		if (!"".equals(param.getIdx())) {
			businessMapper.updateSuccessStoryHits(param);

			SuccessStory successStory = businessMapper.selectSuccessStory(param);
			SuccessStoryCont successStoryCont = new SuccessStoryCont();
			successStoryCont.setStoryIdx(param.getIdx());
			successStory.setSuccessStoryContList(businessMapper.selectSuccessStoryContList(successStoryCont));
			map.put("successStory", successStory);
		}
		return map;
	}
}
