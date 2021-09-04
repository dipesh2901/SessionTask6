package com.ecar.beans;

public class CarBean {
	private String  name, fuel, engineCapacity;
	private int quantity, issued;

	public CarBean() {
		super();
		// TODO Auto-generated constructor stub
	}

	public CarBean( String name, String fuel, String engineCapacity,int quantity) {
		super();
	
		this.name = name;
		this.fuel = fuel;
		this.engineCapacity = engineCapacity;
		this.quantity=quantity;
	}

	
	public int getQuantity() {
		return quantity;
	}

	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}


	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getFuel() {
		return fuel;
	}

	public void setFuel(String fuel) {
		this.fuel = fuel;
	}

	public String getEngineCapacity() {
		return engineCapacity;
	}

	public void setEngineCapacity(String engineCapacity) {
		this.engineCapacity = engineCapacity;
	}

	public int getIssued() {
		return issued;
	}

	public void setIssued(int issued) {
		this.issued = issued;
	}

	
}
