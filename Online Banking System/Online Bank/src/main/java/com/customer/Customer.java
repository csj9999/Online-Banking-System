package com.customer;

public class Customer {
	
	private int id;
    private String name;
    private String email;
    private String phone;
    private String userName;
    private String password;
    private String balance;
    private String address;
    private String acctype;
    private String NIC;
    
    public Customer(int id, String name, String email, String phone, 
    		String userName, String password,String balance, String address, String acctype, String NIC) {
	this.id = id;
	this.name = name;
	this.email = email;
	this.phone = phone;
	this.userName = userName;
	this.password = password;
	this.address= address;
	this.balance= balance;
	this.acctype= acctype;
	this.NIC= NIC;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getEmail() {
        return email;
    }

    public String getPhone() {
        return phone;
    }

    public String getUserName() {
        return userName;
    }

    public String getPassword() {
        return password;
    }    

    public String getBalance() {
        return balance;
    }

	public String getAddress() {
		return address;
	}

	public String getAcctype() {
		return acctype;
	}

	public String getNIC() {
		return NIC;
	} 
}
