package com.example.internproject;

@Configuration
@SpringBootApplication
@EntityScan("com.example.internproject.domain")
@ComponentScan({"com.example.internproject.*"})
public class InternProjectApplication {

	public static void main(String[] args) {
		SpringApplication.run(InternProjectApplication.class, args);
	}

}
