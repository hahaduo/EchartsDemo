package com.suning.demo;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Created by lihongjun on 2016/10/11.
 */

@Controller
@RequestMapping("/")
public class IndexController {

    @RequestMapping("/index")
    public String hello(){
        return "index";
    }

    @RequestMapping("/bar")
    public String bar(){
        return "bar";
    }

    @RequestMapping("/timeAbideRate")
    public String timeAbideRate(){
        return "timeAbideRate";
    }

    @RequestMapping("/orderNumberAbideRate")
    public String orderNumberAbideRate(){
        return "orderNumberAbideRate";
    }
}

