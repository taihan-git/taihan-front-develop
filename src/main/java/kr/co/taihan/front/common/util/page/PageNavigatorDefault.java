package kr.co.taihan.front.common.util.page;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


public class PageNavigatorDefault extends PageNavigator {
	private static final Logger logger = LoggerFactory.getLogger(PageNavigatorDefault.class);

	// /**
	// * 생성자
	// *
	// * @param search Page 클래스를 상속받은 Search
	// */
	// public PageNavigatorDefault(Search search) {
	// super(search.getPageNo(), search.getTotalCount(), search.getRowSize(), 5,
	// search.getHref());
	// logger.debug("PageNavigatorDefault(Search search)");
	// logger.debug("pagNo {}", search.getPageNo());
	// logger.debug("totalCnt {}", search.getTotalCount());
	// logger.debug("rowSize {}", search.getRowSize());
	//
	// // super.setUseCurrentPageAnchor(false); // 선택된 페이지는 a 태그 사용 안함
	// this.setFirstPageCode("<img src=\"/static/_admin/images/btn_prev_2.gif\" alt=\"처음\" />");
	// this.setPrevBlockCode("<img src=\"/static/_admin/images/btn_prev.gif\" alt=\"이전\" />");
	// this.setAnchorCode("<a href=\"#href#\">#text#</a>\n");
	// this.setCurrentPageCode("<strong>#pageNo#</strong>");
	// this.setNextBlockCode("<img src=\"/static/_admin/images/btn_next.gif\" alt=\"다음\" />");
	// this.setLastPageCode("<img src=\"/static/_admin/images/btn_next_2.gif\" alt=\"끝\" />");
	// this.setUsePrevNextBlock(true);
	// this.setUseFirstLastPage(true);
	// // super.setPrevBlockCode("&lt;");
	// // super.setNextBlockCode("&gt;");
	// super.setPageNoSepCode(null);
	// // super.setFunctionName("paging");
	// }

	/**
	 *
	 *
	 * @param pageNo
	 * @param totalRowCount
	 * @param pageRowCount
	 * @param blockSize
	 * @param href
	 */
	public PageNavigatorDefault(int pageNo, int totalRowCount, int pageRowCount, int blockSize) {
		super(pageNo, totalRowCount, pageRowCount, blockSize);

		logger.debug("PageNavigatorDefault(Search search)");
		logger.debug("pagNo {}", pageNo);
		logger.debug("totalCnt {}", totalRowCount);
		logger.debug("rowSize {}", pageRowCount);
		logger.debug("blockSize {}", blockSize);

		setPageNoSepCode("");
		setCurrentPageClassNm("active");
		setAnchorCode(
            "<button type=\"button\" class=\"#classNm#\" onclick=\"javascript:#functionName#( '#pageNo#' );return false;\">#text#</button>");
		setFirstPageClassNm("btn-first");
		setPrevBlockClassNm("btn-prev");
		setNextBlockClassNm("btn-next");
		setLastPageClassNm("btn-last");
		setPrevNextCode(
		    "<button type=\"button\" class=\"#classNm#\" onclick=\"javascript:#functionName#( '#pageNo#' );return false;\">#text#</button>");
	}

	public String getTopNavi() {

		return null;
	}

}
