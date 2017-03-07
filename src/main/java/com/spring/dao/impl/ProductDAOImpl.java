package com.spring.dao.impl;
import com.spring.dao.ProductDAO;
import com.spring.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;


import java.util.List;

/**
 * Created by Jarek on 2017-02-13.
 */
@EnableTransactionManagement
@Transactional
@Repository
public class ProductDAOImpl  implements ProductDAO{

        @Autowired
        private SessionFactory sessionFactory;


    public void addProduct(Product product){

        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(product);

    }

    public Product getProductById(String id) {

        Session session = sessionFactory.getCurrentSession();
        Product product = (Product) session.get(Product.class, id);

        return product;
    }


    public List<Product> getAllProducts() {

        Session session = sessionFactory.getCurrentSession();

        Query query = session.createQuery("from Product");

        List<Product> products = query.list();



        return  products;
    }

    public void deleteProduct(Product product) {

        Session session = sessionFactory.getCurrentSession();
        session.delete(product);

    }

    public void deleteProduct(String id) {


        Session session = sessionFactory.getCurrentSession();

        session.delete(getProductById(id));
    }

    @Override
    public void editProduct(Product product) {

        Session session = sessionFactory.getCurrentSession();

        session.saveOrUpdate(product);
    }
}
