package com.skyfly33.spring.dao;

import com.skyfly33.spring.domain.User;
import junit.framework.TestCase;
import org.junit.After;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by donghoon on 15. 8. 23..
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/mybatis-scan.xml"})
public class UserDaoTest extends TestCase {

    @Autowired
    UserDao userDao;

    @Before
    public void setUp() throws Exception {

    }

    @After
    public void tearDown() throws Exception {

    }

    @Test
    public void testSetUserDao() throws Exception {
        assertNotNull(userDao);
    }

    @Test
    public void testFindUserByEmail() throws Exception {
        String email = "skyfly33@iruen.com";
        User user = userDao.findUserByEmail(email);
        assertEquals(email, user.getEmail());
    }

    @Test
    public void testIsValidUser() throws Exception {
        User loginParam = new User(1L, "skyfly33@iruen.com", "iruen", 01020570001);

        Boolean isValidUser = userDao.isValidUser(loginParam);
        assertTrue(isValidUser);
    }
}