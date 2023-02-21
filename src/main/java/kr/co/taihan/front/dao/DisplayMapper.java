package kr.co.taihan.front.dao;

import kr.co.taihan.front.model.DispNews;
import kr.co.taihan.front.model.MainBanner;
import kr.co.taihan.front.model.NoticePopup;
import kr.co.taihan.front.model.SuccessCase;

import java.util.List;

public interface DisplayMapper {

	/**
	 * 메인 배너 리스트 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<MainBanner> selectMainBannerList(MainBanner param);

	/**
	 * 뉴스 리스트 조회
	 * @param param
	 * @return
	 */
	List<DispNews> selectDispNewsList(DispNews param);

	/**
	 * 공지 팝업 리스트 조회
	 * @param param
	 * @return
	 * @throws Exception
	 */
	List<NoticePopup> selectNoticePopupList(NoticePopup param) throws Exception;

	/**
	 * 성공 사례 리스트
	 * @param param
	 * @return
	 */
	List<SuccessCase> selectSuccessCaseList(SuccessCase param) throws Exception;

}
