package com.teja.payment;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class PaymentController {

    @GetMapping("/payment")
    public String payments(){
        return "Payment Service Running in AKS 🚀";
    }

}
