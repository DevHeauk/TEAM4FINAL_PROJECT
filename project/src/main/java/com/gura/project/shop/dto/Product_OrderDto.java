package com.gura.project.shop.dto;

public class Product_OrderDto {
   private String title;
   private String saveFileName;
   private String addr01;
   private String addr02;
   private String addr03;
   private String id;
   private int product_count;
   private int price;
   private String delivery_location;
   
   public Product_OrderDto() {}

   public Product_OrderDto(String title, String saveFileName, String addr01, String addr02, String addr03, String id,
         int product_count, int price, String delivery_location) {
      super();
      this.title = title;
      this.saveFileName = saveFileName;
      this.addr01 = addr01;
      this.addr02 = addr02;
      this.addr03 = addr03;
      this.id = id;
      this.product_count = product_count;
      this.price = price;
      this.delivery_location = delivery_location;
   }

   public String getTitle() {
      return title;
   }

   public void setTitle(String title) {
      this.title = title;
   }

   public String getSaveFileName() {
      return saveFileName;
   }

   public void setSaveFileName(String saveFileName) {
      this.saveFileName = saveFileName;
   }

   public String getAddr01() {
      return addr01;
   }

   public void setAddr01(String addr01) {
      this.addr01 = addr01;
   }

   public String getAddr02() {
      return addr02;
   }

   public void setAddr02(String addr02) {
      this.addr02 = addr02;
   }

   public String getAddr03() {
      return addr03;
   }

   public void setAddr03(String addr03) {
      this.addr03 = addr03;
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

   public String getDelivery_location() {
      return delivery_location;
   }

   public void setDelivery_location(String delivery_location) {
      this.delivery_location = delivery_location;
   }
   
   
}