package com.niit.homeshop.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import org.springframework.stereotype.Component;

@Entity
@Table(name = "Product")
@Component
public class Product {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
		private int product_id;
	
	  @Column
		private String pn;
	  @Column
		private String description;
	  @Column
		private int quantity;
	  @Column
		private int price ; 
	  @Column
		private int cid;
	  @Column
		private int sid;
	 
	  @Column
		private int liters;
	  @Column
		private int weight ; 

		public int getProduct_Id() {
		  return product_id;
		}
		public void setProduct_Id(int product_id) {
			this.product_id = product_id;
		}
		
		
		public String getDescription() {
		  return description;
		}
		public void setDescription(String description) {
			this.description = description;
		}
		public int getQuantity() {
			 return quantity;
		}
		public void setQuantity(int quantity) {
		  this.quantity = quantity;
		}
		public int getPrice() {
			return price;
		}
		public void setPrice(int price) {
			this.price = price;
		}
		
	  
	    public String getPn() {
			return pn;
		}
		public void setPn(String pn) {
			this.pn = pn;
		}
		public int getCid() {
			return cid;
		}
		public void setCid(int cid) {
			this.cid = cid;
		}
		public int getSid() {
			return sid;
		}
		public void setSid(int sid) {
			this.sid = sid;
		}
		public int getLiters() {
		  return liters;
		}
		public void setLiters(int liters) {
			this.liters =liters;
		}
		public int getWeight() {
		  return weight;
		}
		public void setWeight(int weight) {
			this.weight = weight;
		}
	}
							
	


