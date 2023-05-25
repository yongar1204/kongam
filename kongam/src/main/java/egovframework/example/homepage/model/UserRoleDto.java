package egovframework.example.homepage.model;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserRoleDto {
	private Long idx;
	private Long userIdx;
	private Long roleIdx;
	
	private RoleDto role;
}
