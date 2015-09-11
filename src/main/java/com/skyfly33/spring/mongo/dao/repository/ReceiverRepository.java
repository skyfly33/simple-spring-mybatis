package com.skyfly33.spring.mongo.dao.repository;

import com.skyfly33.spring.mongo.dao.ReceiverDao;
import com.skyfly33.spring.mongo.model.whoo.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

import static org.springframework.data.mongodb.core.query.Criteria.where;
import static org.springframework.data.mongodb.core.query.Query.query;

/**
 * Created by donghoon on 15. 9. 8..
 */
@Repository("receiverRepository")
public class ReceiverRepository implements ReceiverDao {

    @Autowired
    MongoTemplate mongoTemplate;

    @Override
    public List<User.Server.Receiver> getAll() {
        return mongoTemplate.findAll(User.Server.Receiver.class);
    }

    @Override
    public User.Server.Receiver findOneById(Long id) {
        Query query = query(where("uuid").is(id));
        return mongoTemplate.findOne(query, User.Server.Receiver.class);
    }

    @Override
    public boolean save(User.Server.Receiver receiver) {
        try {
            mongoTemplate.insert(receiver);
            return true;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
