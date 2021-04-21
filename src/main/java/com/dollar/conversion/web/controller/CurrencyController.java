package com.dollar.conversion.web.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.dollar.conversion.model.Currency;

@Controller
public class CurrencyController {

	@RequestMapping(value="/main", method = RequestMethod.GET)
	public ModelAndView main(Model model) {
		model.addAttribute("currency", new Currency());
		return new ModelAndView("main");
	}
	
	@RequestMapping(value="/main2", method = RequestMethod.GET)
	public ModelAndView main2(Model model) {
		model.addAttribute("currency", new Currency());
		return new ModelAndView("main2");
	}
	
	@RequestMapping(value="/main", method = RequestMethod.POST)
	public ModelAndView main(@ModelAttribute Currency currency) {
		ModelAndView view = new ModelAndView("main2");
		
		System.out.println("Massa demais" + currency.getCurrencyValue());
		System.out.println("Valor" + currency.isDollarCurrentCurrency());
		
		view.addObject("result", currency.isDollarCurrentCurrency() ? currency.calculateDollarToReal() : currency.calculateRealToDollar() );
		view.addObject("isDollar", currency.isDollarCurrentCurrency());
		
		return view;
	}
	
}
