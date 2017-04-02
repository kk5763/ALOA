package com.aloa.manage;

import java.util.List;
import java.util.Map;

import com.aloa.account.Account;
import com.aloa.restaurant.Restaurant;

public interface ManagerDAO {
	public List<MemberDTO> memberList();

	public List<Restaurant> restaurantList();

	public List<MemberDTO> memberBlackList();

	public void memberRemove(String[] checkId);

	public Account checkId(String id);

	public void insertRestaurant(Map<String, String> map);

	public void restaurantDelete(int[] checkResno);

	public Restaurant restaurantInfo(String resno);

	public void restaurantUpdate(Restaurant restaurant);

	public List<ReportRevDTO> revClaimList();

	public List<ReportResDTO> resClaimList();


}
