package com.example.demo.repository;

import com.example.demo.model.GioHangChiTiet;
import com.example.demo.model.IdGioHangChiTiet;
import jakarta.transaction.Transactional;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;
@Repository
public interface GioHangChiTietRepository extends JpaRepository<GioHangChiTiet, IdGioHangChiTiet> {
    @Query(value = "select * from gio_hang_chi_tiet where id_gio_hang =:id", nativeQuery = true)
    List<GioHangChiTiet> getAllGioHangById(@Param("id") UUID idGioHangChiTiet);

    @Transactional
    @Modifying
    @Query(value = "insert into gio_hang_chi_tiet(id_gio_hang, id_chi_tiet_sp, so_luong, don_gia) values (:idGioHang, :idChiTietSP, :soLuong, :donGia)", nativeQuery = true)
    void addToCart(@Param("idGioHang") UUID idGioHang, @Param("idChiTietSP") UUID chiTietSP, @Param("soLuong") Integer soLuong, @Param("donGia") Double donGia);
}
