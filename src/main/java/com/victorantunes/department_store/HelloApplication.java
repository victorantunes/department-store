package com.victorantunes.department_store;

import javax.ws.rs.ApplicationPath;
import javax.ws.rs.GET;
import javax.ws.rs.core.Application;

@ApplicationPath("/api")
public class HelloApplication extends Application {

    @GET
    public String hello() {
        return "hello";
    }
}
