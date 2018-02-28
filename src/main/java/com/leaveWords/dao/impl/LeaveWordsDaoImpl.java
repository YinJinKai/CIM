package com.leaveWords.dao.impl;

import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.leaveWords.dao.LeaveWordsDao;
import com.leaveWords.model.LeaveWordsModel;

@Repository
public class LeaveWordsDaoImpl implements LeaveWordsDao{
	private HibernateTemplate template;
	@Autowired 
    public LeaveWordsDaoImpl (SessionFactory sessionFactory) {
        this.template = new HibernateTemplate(sessionFactory);
    }
	public int save(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		int flag = (Integer) template.save(lw);
		return flag;
	}

	public List<LeaveWordsModel> selectAll(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		List<LeaveWordsModel> list = (List<LeaveWordsModel>) template.findByExample(lw, lw.getPager().getPageOffset(),lw.getPager().getPageSize());
		return list;
	}
	public int selectCount(LeaveWordsModel lw) {
		// TODO Auto-generated method stub
		String sql="select count(*) from com.leaveWords.model.LeaveWordsModel";
		List<?> flag = template.find(sql);
		  Number num = (Number) flag.get(0);  
	      return num.intValue();  
	}

}
