package com.example.demo.model;

import jakarta.persistence.Column;
import jakarta.persistence.EmbeddedId;
import jakarta.persistence.Entity;
import jakarta.persistence.Table;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Entity
@Table(name = "gio_hang_chi_tiet")
public class GioHangChiTiet {
    @EmbeddedId
    private IdGioHangChiTiet idGioHangChiTiet;

    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "don_gia")
    private Double donGia;

    public double thanhTien() {
        return this.donGia * this.soLuong;
    }
}
