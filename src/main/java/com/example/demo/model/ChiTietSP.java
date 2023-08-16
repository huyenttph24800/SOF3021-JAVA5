package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Positive;
import lombok.*;

import java.util.UUID;


@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Entity
@Table(name = "chi_tiet_sp")
public class ChiTietSP {

    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idCTSP;

    @ManyToOne
    @JoinColumn(name = "id_sp")
    @NotNull(message = "Vui Long Chon San Pham")
    private SanPham sanPham;

    @ManyToOne
    @JoinColumn(name = "id_nsx")
    @NotNull(message = "Vui Long Chon NSX")
    private NSX nsx;

    @ManyToOne
    @JoinColumn(name = "id_mau_sac")
    @NotNull(message = "Vui Long Chon Mau Sac")
    private MauSac mauSac;

    @ManyToOne
    @JoinColumn(name = "id_dong_sp")
    @NotNull(message = "Vui Long Chon Dong San Pham")
    private DongSP dongSP;

    @Column(name = "nam_bh")
    @NotNull(message = "Nam Bao Hanh Trong")
    @Positive(message = "Nam Bao Hanh Phai La So")
    private Integer namBh;

    @Column(name = "mo_ta")
    private String moTa;

    @Column(name = "so_luong_ton")
    @NotNull(message = "So Luong Trong")
    @Positive(message = "So Luong Ton Phai La So")
    private Integer soLuongTon;

    @Column(name = "gia_nhap")
    @NotNull(message = "Gia Nhap Trong")
    @Positive(message = "Gia Nhap Phai La So")
    private Double giaNhap;

    @Column(name = "gia_ban")
    @NotNull(message = "Gia Ban Trong")
    @Positive(message = "Gia Ban Phai La So")
    private Double giaBan;
}
