package com.blogdulich.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.web.SecurityFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http
            .csrf().disable() // Tắt CSRF nếu không cần
            .authorizeHttpRequests()
            .anyRequest().permitAll(); // Cho phép tất cả truy cập không cần đăng nhập

        return http.build();
    }
}