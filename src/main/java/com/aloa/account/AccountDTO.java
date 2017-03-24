package com.aloa.account;

import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;

public class AccountDTO {
	public static class GetAccount {
		private String email;
		private String username;
		
		public String getEmail() {
			return email;
		}
		public void setEmail(String email) {
			this.email = email;
		}
		public String getUsername() {
			return username;
		}
		public void setUsername(String username) {
			this.username = username;
		}
	}

	public static class Create{
		@NotBlank(message="email을 입력하십시오")
		@Size(min = 10, max=35)
		@Email(message="올바른 email 형식이 아닙니다")
		private String email;
		
		@NotBlank(message="비밀번호를 입력하십시오")
		@Size(min = 8, max=20, message="8~20자 이내의 패스워드를 사용해 주세요.")
		private String password;
		
		@NotBlank(message="이름을 입력하십시오")
		@Size(max=20, message="20자 이내로 입력하십시오.")
		private String username;

		public String getEmail() {
			return email;
		}

		public void setEmail(String email) {
			this.email = email;
		}

		public String getPassword() {
			return password;
		}

		public void setPassword(String password) {
			this.password = password;
		}

		public String getUsername() {
			return username;
		}

		public void setUsername(String username) {
			this.username = username;
		}		
	}
}
