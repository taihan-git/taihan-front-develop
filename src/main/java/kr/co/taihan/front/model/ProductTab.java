package kr.co.taihan.front.model;

import java.util.List;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper = false)
public class ProductTab extends Search {

    public ProductTab(){};
    
    private String idx;
    private String prodIdx;
	private String tabName;
	private String tabTitle;
	private String tabContent;
	private String tabImgPath;
	
	private List<ProductTabInfo> infoList;
	
	@Data
	public static class ProductTabInfo {
		
		private String idx;
	    private String tabIdx;
		private String infoTitle;
		private String infoContent;
		private String infoImgPath;
	}
	
}
