package com.example.demo.repository;

import com.example.demo.model.MauSac;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface MauSacRepository extends JpaRepository<MauSac, UUID> {
    @Query(value = "select * from mau_sac where ten=:ten", nativeQuery = true)
    List<MauSac> searchTenMS(@Param("ten") String tenMS);
}
