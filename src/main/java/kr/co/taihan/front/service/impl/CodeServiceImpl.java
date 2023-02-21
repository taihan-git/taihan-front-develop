package kr.co.taihan.front.service.impl;

import kr.co.taihan.front.common.code.Code;
import kr.co.taihan.front.dao.CodeMapper;
import kr.co.taihan.front.service.CodeService;
import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@Slf4j
@RequiredArgsConstructor
public class CodeServiceImpl implements CodeService {

    private final CodeMapper codeMapper;

    @Override
    @Cacheable(value = "codeCache", key="#upCd")
    public List<Code> getCodes(String upCd) {
        logger.debug("코드 조회 : upCd={}", upCd);
        return codeMapper.selectCodes(upCd);
    }
}
