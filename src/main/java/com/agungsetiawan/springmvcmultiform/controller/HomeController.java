package com.agungsetiawan.springmvcmultiform.controller;

import com.agungsetiawan.springmvcmultiform.domain.Contact;
import com.agungsetiawan.springmvcmultiform.domain.FormContact;
import java.util.List;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 *
 * @author awanlabs
 */

@Controller
public class HomeController {
    
    @RequestMapping(value="multiform")
    public String index(Model model){
        model.addAttribute("formContact", new FormContact());
        return "index";
    }
    
    @RequestMapping(value="result",method= RequestMethod.POST)
    public String result(@ModelAttribute("formContact") FormContact formContact,Model model){
        List<Contact> contacts=formContact.getContacts();
        model.addAttribute("contacts", contacts);
        /*Tambahkan misal kode untuk simpan ke basisdata
         * 
         * for(Contact c:contacts){
         *     service.save(c);
         * }
         * 
         */
        return "result";
    }
}
