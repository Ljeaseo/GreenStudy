package org.wow.mapper;

import org.apache.ibatis.annotations.Select;

public interface TestMapper {
	@Select("SELECT sysdate FROM dual")
	//     리턴타입   메소드명();    마지막에 ; 으로 끝났기 때문에 추상메서드
	public String getTime();
	
	public String getTime2();
}
