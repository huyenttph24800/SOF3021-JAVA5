package com.example.demo.repository;

import com.example.demo.model.ChucVu;
import com.example.demo.model.SanPham;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface SanPhamRepository extends JpaRepository<SanPham, UUID> {

    @Query(value = "select * from san_pham where ten=:ten", nativeQuery = true)
    List<SanPham> searchTenSanPham(@Param("ten") String tenSanPham);

}
