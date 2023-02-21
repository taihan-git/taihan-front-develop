package kr.co.taihan.front.service.impl;

import kr.co.taihan.front.dao.DisplayMapper;
import kr.co.taihan.front.model.MainBanner;
import kr.co.taihan.front.service.SampleService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Map;


@Service
@Slf4j
public class SampleServiceImpl implements SampleService {
    @Autowired
    private DisplayMapper displayMapper;

    public Map<String, Object> getMainBannerList(MainBanner param) {
        return null;
    }
}
