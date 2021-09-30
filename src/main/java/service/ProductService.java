package service;

import model.Product;

import java.util.List;

public interface ProductService {

    List<Product> findAll();

    void addNew(Product product);

    void remove(int id);

    void update(int id, Product product);

    Product findId(int id);
}
