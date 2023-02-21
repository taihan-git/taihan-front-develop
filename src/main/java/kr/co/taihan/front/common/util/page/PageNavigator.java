package kr.co.taihan.front.common.util.page;

import org.apache.commons.lang3.StringUtils;

public class PageNavigator {
	private String functionName;
	private int blockSize;
	private int pageRowCount;
	private int totalRowCount;
	private int pageNo;
	private int startPageNo;
	private int endPageNo;
	private int lastPageNo;
	private int startRowNo;
	private int endRowNo;
	protected boolean useFirstLastPage;
	protected boolean usePrevNextPage;


	protected boolean usePrevNextBlock;
	protected boolean usePrevNextPageLoop;
	protected boolean useCurrentPageAnchor;
	private String anchorCode;
	private String prevNextCode;
	private String firstPageClassNm;
	private String prevBlockClassNm;
	private String prevPageClassNm;
	private String currentPageClassNm;
	private String pageNoSepCode;
	private String nextPageClassNm;
	private String nextBlockClassNm;
	private String lastPageClassNm;
	private String anchorHref;
	private String attribute;

	public PageNavigator(int pageNo, int totalRowCount) {
		this(pageNo, totalRowCount, 10, 10);
	}

	public PageNavigator(int pageNo, int totalRowCount, String href) {
		this(pageNo, totalRowCount, 10, 10, href);
	}

	public PageNavigator(int pageNo, int totalRowCount, int pageRowCount, int blockSize) {
		this(pageNo, totalRowCount, pageRowCount, blockSize, (String) null);
	}

	public PageNavigator(int pageNo, int totalRowCount, int pageRowCount, int blockSize, String href) {
		this.functionName = "goPage";
		this.usePrevNextBlock = true;
		this.usePrevNextPageLoop = false;
		this.useCurrentPageAnchor = true;
		this.anchorCode = "<a href=\"#href#\" onclick=\"javascript:#functionName#( '#pageNo#' );return false;\" #attribute#>#text#</a>\n";
		this.prevNextCode="";
		this.firstPageClassNm = "";
		this.prevBlockClassNm = "";
		this.prevPageClassNm = "";
		this.currentPageClassNm = "";
		this.pageNoSepCode = "|";
		this.nextPageClassNm = "";
		this.nextBlockClassNm = "";
		this.lastPageClassNm = "";
		this.attribute = "";
		this.totalRowCount = totalRowCount;
		this.blockSize = blockSize;
		this.pageRowCount = pageRowCount;
		this.pageNo = pageNo;
		if (StringUtils.isNotEmpty(href) && !href.startsWith("?")) {
			href = "?" + href;
		}

		this.anchorHref = href;
		this.startPageNo = (this.pageNo - 1) / this.blockSize * this.blockSize + 1;
		this.endPageNo = this.startPageNo + this.blockSize - 1;
		this.lastPageNo = this.totalRowCount / this.pageRowCount;
		if (this.totalRowCount % this.pageRowCount > 0) {
			++this.lastPageNo;
		}

		this.startRowNo = this.pageNo * this.blockSize - (this.blockSize - 1);
		this.endRowNo = this.pageNo * this.blockSize;
		if (this.endRowNo > this.totalRowCount) {
			this.endRowNo = this.totalRowCount;
		}

	}

	public String getPageNavigator() {
		StringBuffer sb = new StringBuffer();
		if (this.useFirstLastPage) {
			sb.append(this.getFirstPage());
		}

		if (this.usePrevNextBlock) {
			sb.append(this.getPrevBlock());
		}

		if (this.usePrevNextPage) {
			sb.append(this.getPrevPage());
		}

		sb.append(this.getPageList());
		if (this.usePrevNextPage) {
			sb.append(this.getNextPage());
		}

		if (this.usePrevNextBlock) {
			sb.append(this.getNextBlock());
		}

		if (this.useFirstLastPage) {
			sb.append(this.getLastPage());
		}

		return sb.toString();
	}

	public String getFirstPage() {
		String p = "#";
		String h = "#";
		if (this.pageNo != 1) {
			p = "1";
			if (StringUtils.isNotEmpty(this.anchorHref)) {
				h = this.anchorHref;
				h = h + "&pageNo=1";
			} else {
				h = "?pageNo=1";
			}
		}

		String str = this.prevNextCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "<i class=\"ico-arr dubble lft\"><span class=\"hidden\">처음페이지</span></i>")
				.replaceAll("#classNm#", this.firstPageClassNm);
		return str;
	}

	public String getPrevBlock() {
		String p = "#";
		String h = "#";
		if (this.pageNo > this.blockSize) {
			int startBlockPage = (this.startPageNo - 1) / this.blockSize * this.blockSize + 1;
			int prevBlockPage = startBlockPage - 1;
			p = String.valueOf(prevBlockPage);
			if (StringUtils.isNotEmpty(this.anchorHref)) {
				h = this.anchorHref;
				h = h + "&pageNo=" + p;
			} else {
				h = "?pageNo=" + p;
			}
		}

		String str = this.prevNextCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "<i class=\"ico-arr lft\"><span class=\"hidden\">이전</span></i>")
				.replaceAll("#classNm#", this.prevBlockClassNm);
		return str;
	}

	public String getPrevPage() {
		String p = "#";
		String h = "#";
		if (this.pageNo > 1) {
			p = String.valueOf(this.pageNo - 1);
		} else if (this.usePrevNextPageLoop) {
			p = String.valueOf(this.lastPageNo);
		}

		if (StringUtils.isNotEmpty(this.anchorHref)) {
			h = this.anchorHref;
			h = h + "&pageNo=" + p;
		} else {
			h = "?pageNo=" + p;
		}

		String str = this.anchorCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "이전 페이지")
				.replaceAll("#classNm#", this.prevPageClassNm);
		return str;
	}

	public String getPageList() {
		if (this.totalRowCount <= 0) {
			return "";
		} else {
			StringBuffer sb = new StringBuffer("");
			//2021-01-22 페이지리스트를 div,ul로 묶기 위한 코드
			sb.append("<div class=\"paging-box\">");
			
			for (int i = this.startPageNo; i <= this.endPageNo; ++i) {
				String h = "#";
				if (StringUtils.isNotEmpty(this.anchorHref)) {
					h = this.anchorHref + "&pageNo=" + i;
				} else {
					h = "?pageNo=" + i;
				}

				String str = this.anchorCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
						.replaceAll("#attribute#", this.attribute);
				if (i > this.lastPageNo) {
					break;
				}

				if (i == this.pageNo) {
					String p = "#";
					p = String.valueOf(i);
					if (this.useCurrentPageAnchor) {
						str = str.replaceAll("#pageNo#", p).replaceAll("#text#", String.valueOf(i))
								.replaceAll("#pageNo#", String.valueOf(i)).replaceAll("#classNm#", this.currentPageClassNm);
					} else {
						str = str.replaceAll("#text#", String.valueOf(i)).replaceAll("#classNm#", "");
						;
					}
				} else {
					str = str.replaceAll("#pageNo#", String.valueOf(i)).replaceAll("#text#", String.valueOf(i)).replaceAll("#classNm#", "");
				}

				sb.append(str);
				if (StringUtils.isNotEmpty(this.pageNoSepCode) && i < this.endPageNo && i < this.lastPageNo) {
					sb.append(this.pageNoSepCode);
				}
			}
			//2021-01-22 페이지리스트를 div,ul로 묶기 위한 코드
			sb.append("</div>");
			return sb.toString();
		}
	}

	public String getNextPage() {
		String p = "#";
		String h = "#";
		if (this.pageNo < this.lastPageNo) {
			p = String.valueOf(this.pageNo + 1);
		} else if (this.usePrevNextPageLoop) {
			p = "1";
		}

		if (StringUtils.isNotEmpty(this.anchorHref)) {
			h = this.anchorHref;
			h = h + "&pageNo=" + p;
		} else {
			h = "?pageNo=" + p;
		}

		String str = this.anchorCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "")
				.replaceAll("#classNm#", this.nextPageClassNm);
		return str;
	}

	public String getNextBlock() {
		String p = "#";
		String h = "#";
		if (this.endPageNo < this.lastPageNo) {
			int nextBlockPageNo = this.startPageNo + this.blockSize;
			if (nextBlockPageNo > this.lastPageNo) {
				nextBlockPageNo = this.lastPageNo;
			}

			p = String.valueOf(nextBlockPageNo);
			if (StringUtils.isNotEmpty(this.anchorHref)) {
				h = this.anchorHref;
				h = h + "&pageNo=" + p;
			} else {
				h = "?pageNo=" + p;
			}
		}

		String str = this.prevNextCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "<i class=\"ico-arr rgt\"><span class=\"hidden\">다음</span></i>")
				.replaceAll("#classNm#", this.nextBlockClassNm);
		return str;
	}

	public String getLastPage() {
		String p = "#";
		String h = "#";
		if (this.pageNo < this.lastPageNo) {
			p = String.valueOf(this.lastPageNo);
			if (StringUtils.isNotEmpty(this.anchorHref)) {
				h = this.anchorHref;
				h = h + "&pageNo=" + p;
			} else {
				h = "?pageNo=" + p;
			}
		}

		String str = this.prevNextCode.replaceAll("#href#", h).replaceAll("#functionName#", this.functionName)
				.replaceAll("#pageNo#", p).replaceAll("#attribute#", this.attribute).replaceAll("#text#", "<i class=\"ico-arr dubble rgt\"><span class=\"hidden\">마지막페이지</span></i>")
				.replaceAll("#classNm#", this.lastPageClassNm);
		return str;
	}

	@Deprecated
	public String getFunctionName() {
		return this.functionName;
	}

	public void setFunctionName(String functionName) {
		this.functionName = functionName;
	}

	public int getBlockSize() {
		return this.blockSize;
	}

	@Deprecated
	protected void setBlockSize(int blockSize) {
		this.blockSize = blockSize;
	}

	public int getPageRowCount() {
		return this.pageRowCount;
	}

	@Deprecated
	protected void setPageRowCount(int pageRowCount) {
		this.pageRowCount = pageRowCount;
	}

	public int getTotalRowCount() {
		return this.totalRowCount;
	}

	@Deprecated
	protected void setTotalRowCount(int totalRowCount) {
		this.totalRowCount = totalRowCount;
	}

	public int getPageNo() {
		return this.pageNo;
	}

	@Deprecated
	protected void setPageNo(int pageNo) {
		this.pageNo = pageNo;
	}

	public int getStartPageNo() {
		return this.startPageNo;
	}

	@Deprecated
	public void setStartPageNo(int startPageNo) {
		this.startPageNo = startPageNo;
	}

	public int getEndPageNo() {
		return this.endPageNo;
	}

	@Deprecated
	public void setEndPageNo(int endPageNo) {
		this.endPageNo = endPageNo;
	}

	public int getLastPageNo() {
		return this.lastPageNo;
	}

	@Deprecated
	public void setLastPageNo(int lastPageNo) {
		this.lastPageNo = lastPageNo;
	}

	public int getStartRowNo() {
		return this.startRowNo;
	}

	@Deprecated
	public void setStartRowNo(int startRowNo) {
		this.startRowNo = startRowNo;
	}

	public int getEndRowNo() {
		return this.endRowNo;
	}

	@Deprecated
	public void setEndRowNo(int endRowNo) {
		this.endRowNo = endRowNo;
	}

	@Deprecated
	public boolean isUseFirstLastPage() {
		return this.useFirstLastPage;
	}

	public void setUseFirstLastPage(boolean useFirstLastPage) {
		this.useFirstLastPage = useFirstLastPage;
	}

	@Deprecated
	public boolean isUsePrevNextPage() {
		return this.usePrevNextPage;
	}

	public void setUsePrevNextPage(boolean usePrevNextPage) {
		this.usePrevNextPage = usePrevNextPage;
	}

	@Deprecated
	public boolean isUsePrevNextBlock() {
		return this.usePrevNextBlock;
	}

	public void setUsePrevNextBlock(boolean usePrevNextBlock) {
		this.usePrevNextBlock = usePrevNextBlock;
	}

	@Deprecated
	public boolean isUsePrevNextPageLoop() {
		return this.usePrevNextPageLoop;
	}

	public void setUsePrevNextPageLoop(boolean usePrevNextPageLoop) {
		this.usePrevNextPageLoop = usePrevNextPageLoop;
	}

	public boolean isUseCurrentPageAnchor() {
		return this.useCurrentPageAnchor;
	}

	public void setUseCurrentPageAnchor(boolean useCurrentPageAnchor) {
		this.useCurrentPageAnchor = useCurrentPageAnchor;
	}

	public void setAnchorCode(String anchorCode) {
		this.anchorCode = anchorCode;
	}

	public void setPrevNextCode(String prevNextCode) {
		this.prevNextCode = prevNextCode;
	}

	public String getFirstPageClassNm() {
		return firstPageClassNm;
	}

	public void setFirstPageClassNm(String firstPageClassNm) {
		this.firstPageClassNm = firstPageClassNm;
	}

	public String getPrevBlockClassNm() {
		return prevBlockClassNm;
	}

	public void setPrevBlockClassNm(String prevBlockClassNm) {
		this.prevBlockClassNm = prevBlockClassNm;
	}

	public String getPrevPageClassNm() {
		return prevPageClassNm;
	}

	public void setPrevPageClassNm(String prevPageClassNm) {
		this.prevPageClassNm = prevPageClassNm;
	}

	public String getCurrentPageClassNm() {
		return currentPageClassNm;
	}

	public void setCurrentPageClassNm(String currentPageClassNm) {
		this.currentPageClassNm = currentPageClassNm;
	}

	public String getPageNoSepCode() {
		return pageNoSepCode;
	}

	public void setPageNoSepCode(String pageNoSepCode) {
		this.pageNoSepCode = pageNoSepCode;
	}

	public String getNextPageClassNm() {
		return nextPageClassNm;
	}

	public void setNextPageClassNm(String nextPageClassNm) {
		this.nextPageClassNm = nextPageClassNm;
	}

	public String getNextBlockClassNm() {
		return nextBlockClassNm;
	}

	public void setNextBlockClassNm(String nextBlockClassNm) {
		this.nextBlockClassNm = nextBlockClassNm;
	}

	public String getLastPageClassNm() {
		return lastPageClassNm;
	}

	public void setLastPageClassNm(String lastPageClassNm) {
		this.lastPageClassNm = lastPageClassNm;
	}

	public String getAnchorHref() {
		return this.anchorHref;
	}

	public void setAnchorHref(String anchorHref) {
		this.anchorHref = anchorHref;
	}

	public String getAttribute() {
		return this.attribute;
	}

	public void setAttribute(String attribute) {
		this.attribute = attribute;
	}


}
