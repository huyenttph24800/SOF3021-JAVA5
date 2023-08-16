package com.example.demo.repository;

import com.example.demo.model.HoaDonChiTiet;
import com.example.demo.model.IdHoaDonChiTiet;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface HoaDonChiTietRepository extends JpaRepository<HoaDonChiTiet, IdHoaDonChiTiet> {

    @Query(value = "select * from hoa_don_chi_tiet where id_hoa_don =:id", nativeQuery = true)
    List<HoaDonChiTiet> getAllHoaDonById(@Param("id") UUID idHoaDonChiTiet);
}
