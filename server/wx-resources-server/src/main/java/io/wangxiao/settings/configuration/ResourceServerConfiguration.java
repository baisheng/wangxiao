package io.wangxiao.settings.configuration;

import io.wangxiao.res.config.PublicJWTConfig;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.http.SessionCreationPolicy;
import org.springframework.security.oauth2.config.annotation.web.configuration.EnableResourceServer;
import org.springframework.security.oauth2.config.annotation.web.configuration.ResourceServerConfigurerAdapter;
import org.springframework.security.oauth2.config.annotation.web.configurers.ResourceServerSecurityConfigurer;
import org.springframework.security.oauth2.provider.token.TokenStore;
import org.springframework.security.oauth2.provider.token.store.JwtAccessTokenConverter;

/**
 * Created by bison on 1/13/16.
 */
@Configuration
@EnableResourceServer
@Import(PublicJWTConfig.class)
public class ResourceServerConfiguration extends ResourceServerConfigurerAdapter {



    @Autowired
    TokenStore tokenStore;

    @Autowired
    JwtAccessTokenConverter tokenConverter;
    private static final String[] CLASSPATH_RESOURCE_LOCATIONS = {
            "classpath:/META-INF/resources/", "classpath:/resources/",
            "classpath:/static/", "classpath:/public/" };

    @Override
    public void configure(HttpSecurity http) throws Exception {
        super.configure(http);
        // @formatter:off
        http
                .sessionManagement().sessionCreationPolicy(SessionCreationPolicy.NEVER)
                .and()
                .requestMatchers()
                .antMatchers("/**")
                .and()
                .authorizeRequests()
                .antMatchers(HttpMethod.OPTIONS, "/api/**").permitAll()
//                .antMatchers(HttpMethod.GET,CLASSPATH_RESOURCE_LOCATIONS).permitAll()
                .antMatchers(HttpMethod.DELETE, "/api/**").access("#oauth2.hasScope('write')");

//                .antMatchers(HttpMethod.GET, "/api/**").access("#oauth2.hasScope('read')")
//                .antMatchers(HttpMethod.PATCH, "/api/**").access("#oauth2.hasScope('write')")
//                .antMatchers(HttpMethod.POST, "/api/**").access("#oauth2.hasScope('write')")
//                .antMatchers(HttpMethod.PUT, "/api/**").access("#oauth2.hasScope('write')")
//                .antMatchers(HttpMethod.DELETE, "/api/**").access("#oauth2.hasScope('write')")
//                .antMatchers("/api/user/**").access("hasRole('ROLE_TRUSTED_CLIENT')");
//                .antMatchers("/admin/**").access("hasRole('ROLE_ADMIN')");

        // @formatter:on
    }

    @Override
    public void configure(ResourceServerSecurityConfigurer resources) throws Exception {
        System.out.println("Configuring ResourceServerSecurityConfigurer ");
        resources.resourceId("dummy").tokenStore(tokenStore);
    }


}
