package com.aloa.review;

import java.util.List;

import com.aloa.account.Account;

public class ReviewbordDTO {
	private List<Reviewboard> reviewBoardList;
	private List<Account> accountList;
	public List<Reviewboard> getReviewBoardList() {
		return reviewBoardList;
	}
	public void setReviewBoardList(List<Reviewboard> reviewBoardList) {
		this.reviewBoardList = reviewBoardList;
	}
	public List<Account> getAccountList() {
		return accountList;
	}
	public void setAccountList(List<Account> accountList) {
		this.accountList = accountList;
	}
	
	
	
}
