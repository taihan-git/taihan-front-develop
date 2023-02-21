package kr.co.taihan.front.model.search;

import org.springframework.context.i18n.LocaleContextHolder;
import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import kr.co.taihan.front.common.util.page.Page;


@JsonIgnoreProperties({
	"queryString", "schKey", "schField",
	"currentPage", "pageNo", "blockSize",
	"rowSize", "maxPage", "beginUnitPage", "endUnitPage",
	"skiprow", "startRow", "totalCount","endRow", "skipRow",
	"previousPage", "startOfNextpageno", "pageOfNextpageno", "endListPage",
	"currentPageStr", "recordCountPerPage", "nextPage", "emptyPage",
	"total", "startOfPreviouspageno", "pageOfPreviouspageno", "size",
	"firstIndex", "list", "condition", "search", "objects", "endDt", "startDt"
})
public class Search extends Page {

	protected String queryString;
	protected String schField;
	protected String schKey;
	protected String startDt;
	protected String endDt;
	protected String lang;
	
	private String schTarget;
	
	public String getSchTarget() {
		return schTarget;
	}
	public void setSchTarget(String schTarget) {
		this.schTarget = schTarget;
	}
	
	/** 서비스 아이디 **/
	protected String serviceId;
	
	public String getQueryString() {
		return queryString;
	}
	public void setQueryString(String queryString) {
		this.queryString = queryString;
	}
	public String getSchField() {
		return schField;
	}
	public void setSchField(String schField) {
		this.schField = schField;
	}
	public String getSchKey() {
		return schKey;
	}
	public void setSchKey(String schKey) {
		this.schKey = schKey;
	}
	public String getStartDt() {
		return startDt;
	}
	public void setStartDt(String startDt) {
		this.startDt = startDt;
	}
	public String getEndDt() {
		return endDt;
	}
	public void setEndDt(String endDt) {
		this.endDt = endDt;
	}
	public String getServiceId() {
		return serviceId;
	}
	public void setServiceId(String serviceId) {
		this.serviceId = serviceId;
	}
    public String getLang() {
      return LocaleContextHolder.getLocale().getLanguage();
    }
}
