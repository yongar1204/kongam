package egovframework.example.homepage.service;

import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

import egovframework.example.homepage.mapper.AccountMapper;
import egovframework.example.homepage.model.UserDetailsImpl;
import egovframework.example.homepage.model.UserDto;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserDetailsServiceImpl implements UserDetailsService{
	private final AccountMapper accountMapper;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		UserDto user = accountMapper.findByUserId(username);
		if (user.getPassword() == null) {
			user.setPassword("null");
		}
		return new UserDetailsImpl(user);
	}
}
