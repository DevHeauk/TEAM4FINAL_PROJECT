package com.gura.project.shop.dto;

import org.springframework.web.multipart.MultipartFile;

public class ShopDto {
	private int num;
	private String title;
	private String writer;
	private int price;
	private String content;
	private int remainCount;
	private String orgFileName;
	private String saveFileName;
	private long fileSize;
	private String product_size;
	private String regdate;
	private String client_id;
	private MultipartFile file;
	private String category;
	
	public ShopDto() {}

	public ShopDto(int num, String title, String writer, int price, String content, int remainCount, String orgFileName,
			String saveFileName, long fileSize, String product_size, String regdate, String client_id, MultipartFile file, String category) {
		super();
		this.num = num;
		this.title = title;
		this.writer = writer;
		this.price = price;
		this.content = content;
		this.remainCount = remainCount;
		this.orgFileName = orgFileName;
		this.saveFileName = saveFileName;
		this.fileSize = fileSize;
		this.product_size = product_size;
		this.regdate = regdate;
		this.client_id = client_id;
		this.file = file;
		this.category = category;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getWriter() {
		return writer;
	}

	public void setWriter(String writer) {
		this.writer = writer;
	}

	public int getPrice() {
		return price;
	}

	public void setPrice(int price) {
		this.price = price;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getRemainCount() {
		return remainCount;
	}

	public void setRemainCount(int remainCount) {
		this.remainCount = remainCount;
	}

	public String getOrgFileName() {
		return orgFileName;
	}

	public void setOrgFileName(String orgFileName) {
		this.orgFileName = orgFileName;
	}

	public String getSaveFileName() {
		return saveFileName;
	}

	public void setSaveFileName(String saveFileName) {
		this.saveFileName = saveFileName;
	}

	public long getFileSize() {
		return fileSize;
	}

	public void setFileSize(long fileSize) {
		this.fileSize = fileSize;
	}

	public String getProduct_size() {
		return product_size;
	}

	public void setProduct_size(String product_size) {
		this.product_size = product_size;
	}

	public String getRegdate() {
		return regdate;
	}

	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}

	public String getClient_id() {
		return client_id;
	}

	public void setClient_id(String client_id) {
		this.client_id = client_id;
	}

	public MultipartFile getFile() {
		return file;
	}

	public void setFile(MultipartFile file) {
		this.file = file;
	}

	public String getCategory() {
		return category;
	}

	public void setCategory(String category) {
		this.category = category;
	}
	
}
