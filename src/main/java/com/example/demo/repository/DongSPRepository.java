package com.example.demo.repository;

import com.example.demo.model.ChucVu;
import com.example.demo.model.DongSP;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface DongSPRepository extends JpaRepository<DongSP, UUID> {
    @Query(value = "select * from dong_sp where ten=:ten", nativeQuery = true)
    List<DongSP> searchTenDongSP(@Param("ten") String tenDongSP);
}
