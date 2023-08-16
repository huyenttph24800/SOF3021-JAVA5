package com.example.demo.repository;

import com.example.demo.model.HoaDon;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;

import java.util.List;
import java.util.UUID;

public interface HoaDonRepository  extends JpaRepository<HoaDon, UUID> {

    @Transactional
    @Modifying
    @Query(value = "update hoa_don set tinh_trang = 0 where id=:id", nativeQuery = true)
    void huyHoaDon(@Param("id") UUID idHoaDon);

    @Query(value = "select * from hoa_don where ma =:ma", nativeQuery = true)
    List<HoaDon> searchHoaDon(@Param("ma") String maHoaDon);
}
