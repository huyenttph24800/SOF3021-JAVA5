package com.example.demo.repository;

import com.example.demo.model.ChucVu;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ChucVuRepository extends JpaRepository<ChucVu, UUID> {
    @Query(value = "select * from chuc_vu where ten=:ten", nativeQuery = true)
    List<ChucVu> searchTenChucVu(@Param("ten") String tenChucVu);
}
