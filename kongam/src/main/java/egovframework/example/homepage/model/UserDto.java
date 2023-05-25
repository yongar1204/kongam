package egovframework.example.homepage.model;

import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class UserDto {
	private Long userIdx;
	private String userId;
	private String password;
	private String name;
	private String email;
	
	private List<UserRoleDto> userRoles;
	
	public UserDto(UserDto request) {
		userIdx = request.getUserIdx();
		userId = request.getUserId();
		password = request.getPassword();
	}
}
