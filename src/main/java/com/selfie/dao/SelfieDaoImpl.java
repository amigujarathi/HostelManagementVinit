package com.selfie.dao;

import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import com.selfie.dto.StudentBills;
import com.selfie.dto.StudentLeaves;
import com.selfie.dto.StudentLogin;

public class SelfieDaoImpl implements SelfieDao{

	@Autowired
	SessionFactory sessionFactory;
	private SecureRandom random = new SecureRandom();
	
	@Override
	public StudentLogin getUserDetails(String emailId) {
		Session session = this.sessionFactory.openSession();	
		String hql="from StudentLogin where emailId=?";
 		Query query = session.createQuery(hql);
		query.setParameter(0,emailId);
  		List list=query.list();
  		session.close();
  		if(list.size()!=0){
  	 		return (StudentLogin) list.get(0);

  		}else{
  			StudentLogin c=new StudentLogin();
  			return c;
  		}
	}

	@Override
	public void setStudentBillDetails(StudentBills bills) {
		// TODO Auto-generated method stub
		try{
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(bills);
		tx.commit();
		session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
	}

	@Override
	public void setStudentLeavesDetails(StudentLeaves leaves) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		Transaction tx=session.beginTransaction();
		session.saveOrUpdate(leaves);
		tx.commit();
		session.close();
	}

	@Override
	public void setStudentLoginDetails(StudentLogin details) {
		// TODO Auto-generated method stub
		Session session = this.sessionFactory.openSession();
		session.saveOrUpdate(details);
		session.close();
	}

	@Override
	public StudentBills getStudentBillsDetails(int rollNumber) {
		Session session = this.sessionFactory.openSession();	
		String hql="from StudentBills where rollNumber=?";
 		Query query = session.createQuery(hql);
		query.setParameter(0,rollNumber);
  		List list=query.list();
  		session.close();
  		if(list.size()!=0){
  	 		return (StudentBills) list.get(0);

  		}else{
  			StudentBills c=new StudentBills();
  			return c;
  		}
	}

	@Override
	public StudentLeaves getStudentLeavesDetails(int roll) {
		Session session = this.sessionFactory.openSession();	
		String hql="from StudentLeaves where rollNumber=?";
 		Query query = session.createQuery(hql);
		query.setParameter(0,roll);
  		List list=query.list();
  		session.close();
  		if(list.size()!=0){
  	 		return (StudentLeaves) list.get(0);

  		}else{
  			StudentLeaves c=new StudentLeaves();
  			return c;
  		}
	}

	@Override
	public void setStudentLeavesDeails(int rollNumber,int status){
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String hql = "update StudentLeaves set status=? where rollNumber=?";
		Query query = session.createQuery(hql);
		query.setParameter(0,status);
		query.setParameter(1,rollNumber);
		query.executeUpdate();
		tx.commit();
	}
	
	
	@Override
	public StudentLogin getStudentLoginDetails(int rollNumber) {
		Session session = this.sessionFactory.openSession();	
		String hql="from StudentLogin where rollNumber=?";
 		Query query = session.createQuery(hql);
		query.setParameter(0,rollNumber);
  		List list=query.list();
  		session.close();
  		if(list.size()!=0){
  	 		return (StudentLogin) list.get(0);

  		}else{
  			StudentLogin c=new StudentLogin();
  			return c;
  		}
	}

	@Override
	public List<StudentBills> getAllStudentDetails(){
		List <StudentBills> data=new ArrayList<StudentBills>();
		Session session=this.sessionFactory.openSession();
		String hql="from StudentBills";
		Query query=session.createQuery(hql);
		data=query.list();
		return data;
	}
	
	@Override
	public List<StudentLeaves> getAllLeavesDetails(){
		List <StudentLeaves> data=new ArrayList<StudentLeaves>();
		Session session=this.sessionFactory.openSession();
		String hql="from StudentLeaves";
		Query query=session.createQuery(hql);
		data=query.list();
		return data;
	}
	
	@Override
	public void incrementNumberOfDayInMess(StudentBills bills){
	/*	try{
		System.out.println("Updating Data");	
		Session session=this.sessionFactory.openSession();
		Transaction tx= session.beginTransaction();
		String hql = "update StudentBills set totalDaysMess="+bills.getTotalDaysMess()+" where rollNumber="+ bills.getRollNumber();
			Query query = session.createQuery(hql);
			//query.setString(0,bills.getTotalDaysMess()+"");
			//query.setInteger(1, bills.getRollNumber());
			tx.commit();
			session.clear();
			session.close();
		}catch(Exception e){
			e.printStackTrace();
		}
		*/
		int totalData=Integer.parseInt(bills.getRoomRent())+(bills.getStatus()*(Integer.parseInt(bills.getTotalDaysMess())));
		System.out.println("total to be paid is "+totalData);
		Session session = this.sessionFactory.openSession();
		Transaction tx = session.beginTransaction();
		String hql = "update StudentBills set totalDaysMess=?,total=? where rollNumber=?";
		Query query = session.createQuery(hql);
		query.setParameter(0,bills.getTotalDaysMess());
		query.setParameter(1,totalData+"");
		query.setParameter(2,bills.getRollNumber());
		query.executeUpdate();
		tx.commit();
	}
	
	
	@Override
	public StudentLogin getStudentLoginRollNumber(String emailid) {
		Session session = this.sessionFactory.openSession();	
		String hql="from StudentLogin where emailId=?";
 		Query query = session.createQuery(hql);
		query.setParameter(0,emailid);
  		List list=query.list();
  		session.close();
  		if(list.size()!=0){
  	 		return (StudentLogin) list.get(0);

  		}else{
  			StudentLogin c=new StudentLogin();
  			return c;
  		}
	}
	
	
}
