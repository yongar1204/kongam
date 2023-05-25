package egovframework.example.homepage.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.method.configuration.EnableGlobalMethodSecurity;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;

import egovframework.example.homepage.service.UserDetailsServiceImpl;
import lombok.RequiredArgsConstructor;

@Configuration
@EnableWebSecurity
@EnableGlobalMethodSecurity(prePostEnabled = true)
@RequiredArgsConstructor
public class WebSecurityConfig extends WebSecurityConfigurerAdapter {

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http
		.csrf().disable()
		.authorizeRequests()
		.antMatchers("/admin/account/register.do").hasRole("ADMIN")
		.antMatchers("/admin/board/**.do").hasRole("ADMIN")
		.antMatchers("/admin/board/**/**.do").hasRole("ADMIN")
		.antMatchers("/admin/board/**/**/**.do").hasRole("ADMIN")
		.antMatchers("/admin/contactus/list.do").hasRole("ADMIN")
		.antMatchers("/admin/contactus/list/**.do").hasRole("ADMIN")
		.and()
		.formLogin()
		.loginPage("/admin/login.do")
		.defaultSuccessUrl("/admin/board/list.do", true)
		.usernameParameter("userId")
		.failureHandler(authenticationFailureHandler())
		.and().logout().permitAll().logoutUrl("/admin/logout.do").logoutSuccessUrl("/admin/login.do");
	}
	
	@Override
	public void configure(WebSecurity web) {
		web.ignoring().antMatchers("/resources/css/**", "/resources/js/**");
	}
	
	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
	
	@Bean
	public AuthenticationFailureHandler authenticationFailureHandler() {
		return new LoginFailureHandler();
		
	}
	
	/*
	 * @Bean
	 * 
	 * @Override public AuthenticationManager authenticationManagerBean() throws
	 * Exception { return super.authenticationManagerBean(); }
	 */
	 
}
