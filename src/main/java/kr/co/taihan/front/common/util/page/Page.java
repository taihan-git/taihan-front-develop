package kr.co.taihan.front.common.util.page;

import java.util.Collection;
import java.util.Collections;

public class Page {
  public static final Page EMPTY_PAGE;
  private Collection<?> objects;
  private int currentPage;
  private int totalCount;
  private int pageNo;
  private int blockSize;
  private int rowSize;
  private int maxPage;
  private int beginUnitPage;
  private int endUnitPage;
  private String search;
  private String condition;

  static {
    EMPTY_PAGE = new Page(Collections.EMPTY_LIST, 1, 0, "", "");
  }

  public Page() {
    this.pageNo = 1;
    this.blockSize = 5;
    this.rowSize = 20;
    this.search = "";
    this.condition = "";
  }

  public Page(Collection<?> objects, int currentPage, int totalCount) {
    this.pageNo = 1;
    this.blockSize = 5;
    this.rowSize = 20;
    this.search = "";
    this.condition = "";
    this.objects = objects;
    this.totalCount = totalCount;
    this.maxPage = this.rowSize == 0 ? this.totalCount : (totalCount - 1) / this.rowSize + 1;
    this.currentPage = currentPage > this.maxPage ? this.maxPage : currentPage;
    this.beginUnitPage = (currentPage - 1) / this.pageNo * this.pageNo + 1;
    this.endUnitPage = this.beginUnitPage + (this.pageNo - 1);
  }

  public Page(Collection<?> objects, int currentPage, int totalCount, String condition, String search) {
    this(objects, currentPage, totalCount);
    this.condition = condition;
    this.search = search;
  }

  public Page(Collection<?> objects, int currentPage, int totalCount, int pageNo, int rowSize) {
    this.pageNo = 1;
    this.blockSize = 5;
    this.rowSize = 20;
    this.search = "";
    this.condition = "";
    this.pageNo = pageNo;
    this.rowSize = rowSize;
    this.objects = objects;
    this.totalCount = totalCount;
    this.maxPage = rowSize == 0 ? this.totalCount : (totalCount - 1) / rowSize + 1;
    this.currentPage = currentPage > this.maxPage ? this.maxPage : currentPage;
    this.beginUnitPage = (currentPage - 1) / pageNo * pageNo + 1;
    this.endUnitPage = this.beginUnitPage + (pageNo - 1);
  }

  public Collection<?> getList() {
    return this.objects;
  }

  public void setList(Collection<?> val) {
  }

  public boolean hasNextPage() {
    return this.currentPage < this.maxPage;
  }

  public boolean hasPreviousPage() {
    return this.currentPage > 1;
  }

  public int getNextPage() {
    return this.currentPage + 1;
  }

  public void setNextPage(int val) {
  }

  public int getPreviousPage() {
    return this.currentPage - 1;
  }

  public void setPreviousPage(int val) {
  }

  public boolean hasNextpageno() {
    return this.endUnitPage < this.maxPage;
  }

  public boolean hasPreviouspageno() {
    return this.currentPage >= this.pageNo + 1;
  }

  public int getStartOfNextpageno() {
    return this.endUnitPage + 1;
  }

  public int getStartOfPreviouspageno() {
    return this.beginUnitPage - 1;
  }

  public int getPageOfNextpageno() {
    return this.currentPage + this.pageNo < this.maxPage ? this.currentPage + this.pageNo : this.maxPage;
  }

  public int getPageOfPreviouspageno() {
    return this.currentPage - this.pageNo > 1 ? this.currentPage - this.pageNo : 1;
  }

  public int getCurrentPage() {
    return this.currentPage;
  }

  public int getBeginUnitPage() {
    return this.beginUnitPage;
  }

  public int getEndListPage() {
    return this.endUnitPage > this.maxPage ? this.maxPage : this.endUnitPage;
  }

  public void setEndListPage(int val) {
  }

  public int getSize() {
    return this.objects != null && this.getSize() != 0 ? this.objects.size() : 0;
  }

  public boolean isEmptyPage() {
    return this.objects == null || this.getSize() == 0;
  }

  public void setEmptyPage(boolean val) {
  }

  public int getTotal() {
    return this.totalCount;
  }

  public void setTotal(int val) {
  }

  public String getCurrentPageStr() {
    return (new Integer(this.currentPage)).toString();
  }

  public void setCurrentPageStr(String str) {
  }

  public String getCondition() {
    return this.condition;
  }

  public void setCondition(String condition) {
    this.condition = condition;
  }

  public String getSearch() {
    return this.search;
  }

  public void setSearch(String search) {
    this.search = search;
  }

  public int getBlockSize() {
    return this.blockSize;
  }

  public void setBlockSize(int blockSize) {
    this.blockSize = blockSize;
  }

  public int getRowSize() {
    return this.rowSize;
  }

  public void setRowSize(int rowSize) {
    this.rowSize = rowSize;
  }

  public Collection<?> getObjects() {
    return this.objects;
  }

  public void setObjects(Collection<?> objects) {
    this.objects = objects;
  }

  public int getTotalCount() {
    return this.totalCount;
  }

  public void setTotalCount(int totalCount) {
    this.totalCount = totalCount;
  }

  public int getPageNo() {
    return this.pageNo;
  }

  public void setPageNo(int pageNo) {
    this.pageNo = pageNo;
  }

  public int getMaxPage() {
    return this.maxPage;
  }

  public void setMaxPage(int maxPage) {
    this.maxPage = maxPage;
  }

  public int getEndUnitPage() {
    return this.endUnitPage;
  }

  public void setEndUnitPage(int endUnitPage) {
    this.endUnitPage = endUnitPage;
  }

  public void setCurrentPage(int currentPage) {
    this.currentPage = currentPage;
  }

  public void setBeginUnitPage(int beginUnitPage) {
    this.beginUnitPage = beginUnitPage;
  }

  public int getFirstIndex() {
    return (this.pageNo - 1) * this.rowSize;
  }

  public int getRecordCountPerPage() {
    return this.rowSize;
  }
}
