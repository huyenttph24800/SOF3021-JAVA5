package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.UUID;

@Entity(name = "CuaHang")
@Table(name = "cua_hang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class CuaHang {
    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idCuaHang;

    @Column(name = "ma")
    private String maCuaHang;

    @Column(name = "ten")
    @NotBlank(message = "Ten Cua Hang Trong")
    private String tenCuaHang;

    @Column(name = "dia_chi")
    @NotBlank(message = "Dia Chi Trong")
    private String diaChi;

    @Column(name = "thanh_pho")
    @NotBlank(message = "Thanh Pho Trong")
    private String thanhPho;

    @Column(name = "quoc_gia")
    @NotBlank(message = "Quoc Gia Trong")
    private String quocGia;
}
