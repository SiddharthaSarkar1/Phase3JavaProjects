package com.simplilearn.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.simplilearn.entity.ProductEntity;
import com.simplilearn.service.ProductService;

@CrossOrigin(origins = "http://localhost:4200")
@RestController
@RequestMapping("/api/product")
public class ProductController {
    @Autowired
    private ProductService productService;
    
    @PostMapping("/")
    public ResponseEntity<ProductEntity> addProduct(@RequestBody ProductEntity product)
    {
        ProductEntity obj = productService.addProduct(product);
        if(obj!=null)
            return new ResponseEntity<ProductEntity>(obj,HttpStatus.CREATED);
        else
            return new ResponseEntity<ProductEntity>(obj,HttpStatus.INTERNAL_SERVER_ERROR);
    }


	@GetMapping("/")
	public List<ProductEntity> getAll(){
		return productService.getAllProducts();
	}
}
