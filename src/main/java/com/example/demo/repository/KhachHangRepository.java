package com.example.demo.repository;


import com.example.demo.model.KhachHang;
import com.example.demo.model.NhanVien;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;


@Repository
public interface KhachHangRepository extends JpaRepository<KhachHang, UUID> {
    @Query(value = "select * from khach_hang where ten=:ten", nativeQuery = true)
    List<KhachHang> searchTenKhachHang(@Param("ten") String tenKhachHang);

}
