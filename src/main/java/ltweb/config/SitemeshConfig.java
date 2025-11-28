package ltweb.config;

import org.sitemesh.builder.SiteMeshFilterBuilder;
import org.sitemesh.config.ConfigurableSiteMeshFilter;
import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

@Configuration 
public class SitemeshConfig {

    @Bean
    public FilterRegistrationBean<ConfigurableSiteMeshFilter> siteMeshFilter() {
        FilterRegistrationBean<ConfigurableSiteMeshFilter> filterRegistrationBean = new FilterRegistrationBean<>();
        
        filterRegistrationBean.setFilter(new ConfigurableSiteMeshFilter() {
            @Override
            protected void applyCustomConfiguration(SiteMeshFilterBuilder builder) {
                // Tất cả đường dẫn bắt đầu bằng /admin/ sẽ dùng file decorator tại đường dẫn này
                builder.addDecoratorPath("/admin/*", "admin.jsp");
                
                builder.addExcludedPath("/login");
                builder.addExcludedPath("/register");
            }
        });
        
        filterRegistrationBean.addUrlPatterns("/*");
        return filterRegistrationBean;
    }
}