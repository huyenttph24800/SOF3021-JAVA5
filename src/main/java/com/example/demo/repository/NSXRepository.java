package com.example.demo.repository;

import com.example.demo.model.ChucVu;
import com.example.demo.model.NSX;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface NSXRepository extends JpaRepository<NSX, UUID> {
    @Query(value = "select * from nxs where ten=:ten", nativeQuery = true)
    List<NSX> searchTenNSX(@Param("ten") String tenNSX);

}
