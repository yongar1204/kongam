package egovframework.example.homepage.service;

import java.util.List;
import java.util.Map;

import egovframework.example.homepage.model.UserDto;

public interface AccountService {
	public void save(Map<String, Object> map);
	
	public List<UserDto> allUser();
	
	public Long getUserIdx(String userId);
}
