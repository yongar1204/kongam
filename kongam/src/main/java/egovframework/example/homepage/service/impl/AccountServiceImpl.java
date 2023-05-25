package egovframework.example.homepage.service.impl;

import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Service;

import egovframework.example.homepage.mapper.AccountMapper;
import egovframework.example.homepage.model.UserDto;
import egovframework.example.homepage.service.AccountService;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class AccountServiceImpl implements AccountService{
	private final AccountMapper accountMapper;
	
	@Override
	public void save(Map<String, Object> map) {
		// TODO Auto-generated method stub
		accountMapper.insertUser(map);
		Long userIdx = Long.parseLong(String.valueOf(map.get("userIdx")));
		accountMapper.userRoleSave(userIdx);
	}

	@Override
	public List<UserDto> allUser() {
		// TODO Auto-generated method stub
		return accountMapper.selectAll();
	}

	@Override
	public Long getUserIdx(String userId) {
		// TODO Auto-generated method stub
		return accountMapper.findIdxByUserId(userId);
	}

}
