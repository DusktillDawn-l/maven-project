package com.leon.mapper;

import com.leon.pojo.Admin;
import com.leon.utils.MybatisUtils;
import org.apache.ibatis.session.SqlSession;
import org.junit.Test;

import java.util.List;

public class AdminMapperTest {
    @Test
    public void test(){
        //获得sqlsession对象
        SqlSession sqlSession = MybatisUtils.getSqlSession();
        //执行sql  方式一 getmapper
        adminmapper mapper = sqlSession.getMapper(adminmapper.class);
        List<Admin> adminList = mapper.getAdminList();

        for(Admin admin:adminList){
            System.out.println(admin);
        }

        //关闭sqlSession
        sqlSession.close();
    }
}
