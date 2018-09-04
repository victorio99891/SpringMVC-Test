package com.wiktor.Controller;

import com.wiktor.Model.Customer;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.validation.Valid;

@Controller
public class CustomerController {

    @InitBinder
    public void initBinder(WebDataBinder dataBinder) {
        StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
        dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
    }

    @RequestMapping("form")
    public String getForm(@ModelAttribute("customer") Customer customer) {
        return "form";
    }


    @RequestMapping("post-form")
    public String getPostForm(@Valid @ModelAttribute("customer") Customer customer, BindingResult theBindingResult) {

        // System.out.println("Binding result:" + theBindingResult);

        if (theBindingResult.hasErrors()) {
            return "form";
        } else {
            return "post-form";
        }

    }
}
