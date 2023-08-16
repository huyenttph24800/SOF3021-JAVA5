package com.example.demo.repository;


import com.example.demo.model.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;


@Repository
public interface NhanVienRepository extends JpaRepository<NhanVien, UUID> {

    @Query(value = "select * from nhan_vien where ten=:ten", nativeQuery = true)
    List<NhanVien> searchTenNhanVien(@Param("ten") String tenNhanVien);
}
