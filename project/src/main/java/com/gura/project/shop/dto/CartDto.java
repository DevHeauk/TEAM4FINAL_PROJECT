package com.gura.project.shop.dto;

public class CartDto {
	private String saveFileName;
	private String product_name;
	private String id;
	private int product_count;
	private int price;
	private int total_price;
	private String regdate;
	
	public CartDto() {}

	public CartDto(String saveFileName, String product_name, String id, int product_count, int price, int total_price,
			String regdate) {
		super();
		this.saveFileName = saveFileName;
		this.product_name = product_name;
		this.id = id;
		this.product_count = product_count;
		this.price = price;
		this.total_price = total_price;
		this.regdate = regdate;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public String getProduct_name() {
		return product_name;
	}

	public void setProduct_name(String product_name) {
		this.product_name = product_name;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public int getProduct_count() {
		return product_count;
	}

	public void setProduct_count(int product_count) {
		this.product_count = product_count;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public int getTotal_price() {
		return total_price;
	}

	public void setTotal_price(int total_price) {
		this.total_price = total_price;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	
	
}
