package com.aloa.manage;

import java.util.List;
import java.util.Map;

import com.aloa.restaurant.Restaurant;

public interface ManagerDAO {
	public List<MemberDTO> memberList();

	public List<Restaurant> restaurantList();

	public List<MemberDTO> memberBlackList();

	public void memberRemove(String[] checkId);

	public String checkId(String id);

	public void updateServer(String string);

	public void insertRestaurant(Map<String, String> map);
}
