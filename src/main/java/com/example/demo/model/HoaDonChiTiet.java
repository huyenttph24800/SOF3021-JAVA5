package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

@Entity(name = "HoaDonChiTiet")
@Table(name = "hoa_don_chi_tiet")
@Setter
@Getter
@Builder
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class HoaDonChiTiet {

    @EmbeddedId
    private IdHoaDonChiTiet idHoaDonChiTiet;


    @Column(name = "so_luong")
    private Integer soLuong;

    @Column(name = "don_gia")
    private Double donGia;

    public double thanhTien() {
        return this.donGia * this.soLuong;
    }

}
