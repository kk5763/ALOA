package com.aloa.manage;

import java.util.List;

public interface ManagerDAO {
	public List<MemberDTO> memberList();

	public List<RestaurantDTO> restaurantList();

	public List<MemberDTO> memberBlackList();

	public void memberRemove(String[] checkId);
}
