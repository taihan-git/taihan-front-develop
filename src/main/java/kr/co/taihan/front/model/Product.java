package kr.co.taihan.front.model;

import java.util.List;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class Product extends Search {

    public Product(){};
    
    private String idx;
    private String prodCateNo;
	private String prodCate;
	private String type;
	private String dispNm;
	private String topGubun;
	private String title;
	private String imgPaths;
	private String intro;
	private String catalog;
	private String tbl;
	private String tagInfoList;
	private String solutionCnt;
	private String contentCnt;
	private String seoTitle;
	private String seoDescription;
	private String[] idxs;
	
	private List<ProductTab> tabList;
	
    private List<TblMapping> mappingList;
    
}
