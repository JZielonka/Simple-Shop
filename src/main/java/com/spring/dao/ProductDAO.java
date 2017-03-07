package com.spring.dao;

import com.spring.model.Product;

import java.util.List;

/**
 * Created by Jarek on 2017-02-13.
 */
public interface ProductDAO {

    void addProduct(Product product);


    Product getProductById(String id);

    List <Product> getAllProducts();

    void deleteProduct(Product product);

    void deleteProduct(String id);

    void editProduct(Product product);
}
