package egovframework.example.homepage.mapper;

import java.util.List;
import java.util.Map;

import egovframework.example.homepage.model.UserDto;
import egovframework.rte.psl.dataaccess.mapper.Mapper;


@Mapper
public interface AccountMapper {

	UserDto findByUserId(String userId);
	
	void insertUser(Map<String, Object> map);
	
	void userRoleSave(Long userId);
	
	Long findIdxByUserId(String userId);
	
	List<UserDto> selectAll();
}
