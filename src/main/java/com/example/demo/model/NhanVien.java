package com.example.demo.model;


import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.*;
import org.hibernate.validator.constraints.Length;

import java.time.LocalDate;
import java.util.UUID;

@Entity(name = "NhanVien")
@Table(name = "nhan_vien")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class NhanVien {
    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idNhanVien;

    @Column(name = "ma")
    private String maNhanVien;


    @Column(name = "ho")
    @NotBlank(message = "Ho NhanVien Trong")
    private String hoNhanVien;

    @Column(name = "ten_dem")
    @NotBlank(message = "Ten Dem Nhan Vien Trong")
    private String tenDemNhanVien;

    @Column(name = "ten")
    @NotBlank(message = "Ten Nhan Vien Khong De Trong")
    private String tenNhanVien;

    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;

    @Column(name = "ngay_sinh")
    private LocalDate ngaySinh;

    @Column(name = "dia_chi")
    @NotBlank(message = "Dia Chi Trong")
    private String diaChi;

    @Column(name = "sdt")
    @Pattern(regexp = "[(0)+([0-9]{9})]+", message = "SDT Toi Thieu 10 So Va Co So 0 Dau")
    private String sdt;

//    @Column(name = "tai_khoan")
//    @NotBlank(message = "UserName Khong Duoc De Trong")
//    @Length(min = 4, message = "UserName Toi Thieu 4 Ki Tu")
//    private String userName;

    @Column(name = "mat_khau")
    @Length(min = 6, max = 25, message = "Mat Khau Chi Tu 6-25 Ki Tu")
    private String passWord;

    @ManyToOne
    @JoinColumn(name = "id_ch")
    @NotNull(message = "Vui Long Chon Ten Cua Hang")
    private CuaHang cuaHang;

    @ManyToOne
    @JoinColumn(name = "id_cv")
    @NotNull(message = "Vui Long Chon Ten Chuc Vu")
    private ChucVu chucVu;

    @Column(name = "trang_thai")
    private Integer trangThai;
}
