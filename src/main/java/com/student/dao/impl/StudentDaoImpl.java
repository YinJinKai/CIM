package com.student.dao.impl;

import java.io.Serializable;
import java.util.List;

import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;

import com.student.dao.StudentDao;
import com.student.model.StudentModel;
import com.teacher.model.TeacherModel;

import net.sf.json.JSONArray;

@Repository
public class StudentDaoImpl implements StudentDao{
	private HibernateTemplate template;
	@Autowired 
    public StudentDaoImpl (SessionFactory sessionFactory) {
        this.template = new HibernateTemplate(sessionFactory);
    }
	public int save(StudentModel st) {
		// TODO Auto-generated method stub
		int flag=(Integer) template.save(st);
		return flag;
	}
	public List<StudentModel> select(StudentModel st) {
		// TODO Auto-generated method stub
		
		List<StudentModel> list = (List<StudentModel>) template.find("from com.student.model.StudentModel");
		return list;
	}
	public List<StudentModel> selectById(StudentModel st) {
		// TODO Auto-generated method stub
		List<StudentModel> list = (List<StudentModel>) template.find("from com.student.model.StudentModel where id=?",st.getId());
		return list;
	}
	public int update(StudentModel st) {
		// TODO Auto-generated method stub
		StudentModel ss = template.get(StudentModel.class, st.getId());//先查出数据全部set进实体类，再把要修改替换进去
		ss.setId(st.getId());
		ss.setStudentName(st.getStudentName());
		ss.setStudentTelephone(st.getStudentTelephone());
		ss.setStudentClassNumber(st.getStudentClassNumber());
		ss.setStudentState(st.getStudentState());
		template.update(ss);
		return 0;
	}
	//分页
	public List<StudentModel> selectByPage(StudentModel st) {
		// TODO Auto-generated method stub
		List<StudentModel> list=(List<StudentModel>) template.findByExample(st, st.getPager().getPageOffset(),st.getPager().getPageSize());
		
		return list;
	}
	public int selectCount(StudentModel st) {
		// TODO Auto-generated method stub
		String sql="select count(*) from com.student.model.StudentModel";
		List<?> flag = template.find(sql);
		  Number num = (Number) flag.get(0);  
	      return num.intValue();  
		
	}
}
