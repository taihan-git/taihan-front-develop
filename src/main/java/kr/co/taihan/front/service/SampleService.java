package kr.co.taihan.front.service;

import kr.co.taihan.front.model.MainBanner;

import java.util.Map;

public interface SampleService {

    /**
     * 메인 배너 리스트 조회
     * @param  MainBanner
     * @return
     * @throws Exception
     */
    public Map<String, Object> getMainBannerList(MainBanner param);


}
