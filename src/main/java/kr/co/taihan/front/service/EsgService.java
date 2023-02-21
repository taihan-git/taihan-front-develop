
package kr.co.taihan.front.service;


import kr.co.taihan.front.model.Inquiry;

import java.util.Collection;
import java.util.Map;

public interface EsgService {

    /**
     * 윤리경영 / 공정거래 등록
     *
     * @param param
     */
    Inquiry saveInquiry(Inquiry param);

    void inquireLoginCheck(Inquiry inquiry);

    Map<String, Object> inquireLogin(Inquiry inquiry);
}
