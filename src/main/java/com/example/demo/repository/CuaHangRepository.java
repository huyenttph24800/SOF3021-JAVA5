package com.example.demo.repository;

import com.example.demo.model.CuaHang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface CuaHangRepository extends JpaRepository<CuaHang, UUID> {
    @Query(value = "select * from cua_hang where ten=:ten", nativeQuery = true)
    List<CuaHang> searchTenCuaHang(@Param("ten") String tenCuaHang);
}
