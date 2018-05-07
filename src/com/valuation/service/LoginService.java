package com.valuation.service;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Session;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

import com.valuation.hibernate.util.HibernateUtil;
import com.valuation.model.Employee;
import com.valuation.model.Login;

public class LoginService {
	
	public boolean authenticateEmployee(Login loginCredentials) {
		
		String employeeId = loginCredentials.getName();
		String password = loginCredentials.getPassword();
		
        Employee employee = getUserByUserId(employeeId, password);         
        if(employee!=null && employee.getName().equals(employeeId) && employee.getPassword().equals(password)){
            return true;
        }else{
            return false;
        }
    }
 
    public Employee getUserByUserId(String userId, String password) {
        Session session = HibernateUtil.openSession();
        Transaction tx = null;
        Employee employee = null;
        try {
            tx = session.getTransaction();
            tx.begin();
            Query<?> query = session.createQuery("from employee where name='"+userId+"' and password='" +password+ "'");
            employee = (Employee)query.uniqueResult();
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return employee;
    }
     
    public List<Employee> getListOfUsers(){
        List<Employee> list = new ArrayList<Employee>();
        Session session = HibernateUtil.openSession();
        Transaction tx = null;       
        try {
            tx = session.getTransaction();
            tx.begin();
            list = session.createQuery("from employee").list();                       
            tx.commit();
        } catch (Exception e) {
            if (tx != null) {
                tx.rollback();
            }
            e.printStackTrace();
        } finally {
            session.close();
        }
        return list;
    }

}
