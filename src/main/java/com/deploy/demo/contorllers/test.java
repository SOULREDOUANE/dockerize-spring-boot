package com.deploy.demo.contorllers;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController

public class test {
    
    
    @CrossOrigin(origins={"http://localhost:4200","http://10.0.2.50"})
    
    @GetMapping("test")
    public String testFunction(){
        return "my spring boot app";
    }


    
}
