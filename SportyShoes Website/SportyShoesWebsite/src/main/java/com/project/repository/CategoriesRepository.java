package com.project.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.project.entity.Categories;

public interface CategoriesRepository extends JpaRepository<Categories, Long> {

}
