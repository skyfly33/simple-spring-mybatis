package com.skyfly33.spring.http;

import com.skyfly33.spring.restclient.KakaoPushTokenRegister;
import com.skyfly33.spring.restclient.KakaoPushTokenSearch;
import org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

/**
 * Created by jeoos43 on 15. 8. 31..
 */
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/pojoApplicationContext.xml"})
public class RestClientTest {

    @Autowired
    KakaoPushTokenRegister kakaoPushTokenRegister;
    @Autowired
    KakaoPushTokenSearch kakaoPushTokenSearch;

    @Test
    public void tokenRegisterTest() {
        kakaoPushTokenRegister.tokenRegister();
    }

    @Test
    public void tokenSearchTest() {
        kakaoPushTokenSearch.tokenSearch();
    }
}