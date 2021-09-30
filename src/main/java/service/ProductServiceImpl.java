package service;

import model.Product;

import java.util.ArrayList;
import java.util.List;

public class ProductServiceImpl implements ProductService {
    static List<Product> products = new ArrayList<>();

    static {
        products.add(new Product(1, "Iphone 11", "New", 15000000, "https://cdn.tgdd.vn/Products/Images/42/210648/iphone-11-trang-200x200.jpg"));
        products.add(new Product(2, "Iphone 11 Pro", "New", 17000000, "https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2019/9/11/637037672778888750_11-pro-vang.png"));
        products.add(new Product(3, "Iphone 11 Pro Max", "New", 19000000, "https://cdn.tgdd.vn/Products/Images/42/200533/iphone-11-pro-max-green-600x600.jpg"));
        products.add(new Product(4, "Iphone 12", "New", 20000000, "https://hoanghamobile.com/i/preview/Uploads/2020/11/06/apple-iphone-12-mini-5.png"));
        products.add(new Product(5, "Iphone 12 Pro", "New", 22000000, "https://images.fpt.shop/unsafe/fit-in/585x390/filters:quality(90):fill(white)/fptshop.com.vn/Uploads/Originals/2020/10/14/637382704773830272_ip-12-pro-vang-1.png"));
        products.add(new Product(6, "Iphone 12 Pro Max", "New", 25000000, "https://cdn.tgdd.vn/Products/Images/42/213033/iphone-12-pro-max-xam-new-600x600-200x200.jpg"));
        products.add(new Product(7, "Iphone 13", "New", 25000000, "https://fptshop.com.vn/Uploads/images/2015/Tin-Tuc/QuanLNH2/iphone-13-1.jpg"));
    }

    @Override
    public List<Product> findAll() {
        return products;
    }

    @Override
    public void addNew(Product product) {
        products.add(product);
    }

    @Override
    public void remove(int id) {
        Product product = findId(id);
        products.remove(product);
    }

    @Override
    public void update(int id, Product product) {
        Product oldProduct = findId(id);
        oldProduct.setName(product.getName());
        oldProduct.setPrice(product.getPrice());
        oldProduct.setNote(product.getNote());
        oldProduct.setImage(product.getImage());
    }

    @Override
    public Product findId(int id) {
        for (Product product : products) {
            if (id == product.getId()) {
                return product;
            }
        }
        return null;
    }
}
