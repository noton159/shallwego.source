package com.itbank.shallwego;

public interface AccommDAO {

	int insertAccomm(AccommDTO input);

	int selectOne(String accomm_name);

	int insertTier(AccommDTO tmp);

}
