package com.dollar.conversion.model;

import java.text.DecimalFormat;

public class Currency {
	
	private double quotationDollar =  0.18;
	private double quotationReal = 5.62;
	private double currencyValue;
	private boolean dollarCurrentCurrency = true;

	public Currency () {}
	
	public Currency(double quotationDollar, double quotationReal, double currencyValue, boolean dollarCurrentCurrency) {
		super();
		this.quotationDollar = quotationDollar;
		this.setCurrencyValue(currencyValue);
		this.quotationReal = quotationReal;
		this.setDollarCurrentCurrency(dollarCurrentCurrency);
	}
	

	public double getQuotationDollar() {
		return quotationDollar;
	}

	public void setQuotationDollar(double quotationDollar) {
		this.quotationDollar = quotationDollar;
	}

	public double getQuotationReal() {
		return quotationReal;
	}

	public void setQuotationReal(double quotationReal) {
		this.quotationReal = quotationReal;
	}


	public double calculateDollarToReal() {
		DecimalFormat df = new DecimalFormat("#.00");
		return Double.parseDouble(df.format(currencyValue * quotationReal).replace(",", "."));
	}
	
	public double calculateRealToDollar() {
		DecimalFormat df = new DecimalFormat("#.00");
		return Double.parseDouble(df.format(currencyValue * quotationDollar).replace(",", "."));
	}

	public boolean isDollarCurrentCurrency() {
		return dollarCurrentCurrency;
	}

	public void setDollarCurrentCurrency(boolean dollarCurrentCurrency) {
		this.dollarCurrentCurrency = dollarCurrentCurrency;
	}

	public double getCurrencyValue() {
		return currencyValue;
	}

	public void setCurrencyValue(double currencyValue) {
		this.currencyValue = currencyValue;
	}
	
}
