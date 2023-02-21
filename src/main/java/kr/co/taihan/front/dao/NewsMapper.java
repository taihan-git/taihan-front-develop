package kr.co.taihan.front.dao;

import java.util.List;
import kr.co.taihan.front.model.IrNotice;
import kr.co.taihan.front.model.Release;
import kr.co.taihan.front.model.TaihanNews;
import kr.co.taihan.front.model.Webzine;

public interface NewsMapper {

	/**
	 * 대한뉴스 조회 개수
	 * @param param
	 * @return
	 * @throws Exception
	 */
	int selectTaihanNewsListCnt(TaihanNews param) throws Exception;
	/**
	 * 대한뉴스 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<TaihanNews> selectTaihanNewsList(TaihanNews param) throws Exception;
	
	/**
     * 대한뉴스 조회
     * @param param
     * @return
     * @throws Exception
     */
    TaihanNews selectTaihanNews(TaihanNews param) throws Exception;
    
    int updateTaihanNewsHit(TaihanNews param) throws Exception;
    /**
     * 보도자료 조회 개수
     * @param param
     * @return
     * @throws Exception
     */
    int selectReleaseListCnt(Release param) throws Exception;
    /**
     * 보도자료 조회
     * @param param
     * @return
     * @throws Exception
     */
    List<Release> selectReleaseList(Release param) throws Exception;
    
    int updateReleaseHit(Release param) throws Exception;
    /**
     * 보도자료 조회
     * @param param
     * @return
     * @throws Exception
     */
    Release selectRelease(Release param) throws Exception;


	/**
	 * IR 공고 리스트 카운트 조회
	 * @param param
	 * @return
	 */
    int selectIrNoticeListCnt(IrNotice param);

	/**
	 * IR 공고 리스트 조회
	 * @param param
	 * @return
	 */
	List<IrNotice> selectIrNoticeList(IrNotice param);

	/**
	 * IR 공고 상세조회(이전,다음 글 포함)
	 * @param param
	 * @return
	 */
    List<IrNotice> selectIrNotice(IrNotice param);

	/**
	 * IR 공고 조회수 증가
	 * @param param
	 */
	void updateNoticeHit(IrNotice param);

	int selectWebZineListCnt(Webzine param);

	/**
	 * 웹진 리스트 조회
	 * @param param
	 * @return
	 */
    List<Webzine> selectWebZineList(Webzine param);
}
