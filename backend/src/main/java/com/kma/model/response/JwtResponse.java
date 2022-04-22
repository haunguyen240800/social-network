package com.kma.model.response;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class JwtResponse {
	private String accessToken;
	private Long userId;
	private String username;
	private String email;
	private List<String> roles;
}
