package kr.co.taihan.front.dao;

import kr.co.taihan.front.common.code.Code;

import java.util.List;

public interface CodeMapper {

    List<Code> selectCodes(String upCd);
}
