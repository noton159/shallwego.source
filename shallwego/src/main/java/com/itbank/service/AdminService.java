package com.itbank.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itbank.shallwego.AccommDAO;
import com.itbank.shallwego.AccommDTO;
import com.itbank.shallwego.RoomDAO;
import com.itbank.shallwego.RoomDTO;
import com.itbank.shallwego.SalesDAO;
import com.itbank.shallwego.SalesDTO;

@Service
public class AdminService {
	
	@Autowired
	private AccommDAO dao;
	@Autowired
	private RoomDAO dao2;
	@Autowired
	private SalesDAO dao3;

	public int insertAccomm(AccommDTO input) {
		return dao.insertAccomm(input);
	}

	public int insertRoom(RoomDTO user) {
		return dao2.insertRoom(user);
	}

	public int selectOne(String accomm_name) {
		return dao.selectOne(accomm_name);
	}

	public int insertSales(SalesDTO user) {
		return dao3.insertSales(user);
	}

	public int insertTier(AccommDTO tmp) {
		return dao.insertTier(tmp);
	}

	
}
