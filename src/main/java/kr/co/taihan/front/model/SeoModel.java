package kr.co.taihan.front.model;

import kr.co.taihan.front.model.search.Search;
import lombok.Data;
import lombok.EqualsAndHashCode;

@Data
@EqualsAndHashCode(callSuper=false)
public class SeoModel extends Search {
	
	private String uri;
	private String title;
	private String description;
	private String content;
	private String imgPath;
}

