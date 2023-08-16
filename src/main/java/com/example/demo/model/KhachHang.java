package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.Pattern;
import lombok.*;
import org.hibernate.validator.constraints.Length;

import java.time.LocalDate;
import java.util.Date;
import java.util.UUID;

@Entity(name = "KhachHang")
@Table(name = "khach_hang")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class KhachHang {

    @Id
    @Column(name = "id", unique = true, nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idKhachHang;

    @Column(name = "ma")
    private String maKhachHang;

    @Column(name = "ho")
    @NotBlank(message = "Ho Khach Hang Trong")
    private String hoKhachHang;

    @Column(name = "ten_dem")
    @NotBlank(message = "Ten Dem Khach Hang Trong")
    private String tenDemKhachHang;

    @Column(name = "ten")
    @NotBlank(message = "Ten Khach Hang Trong")
    private String tenKhachHang;

//    @Column(name = "gioi_tinh")
//    private Boolean gioiTinh;

    @Column(name = "ngay_sinh")
    private LocalDate ngaySinh;

    @Column(name = "sdt")
    @NotBlank(message = "Sdt Trong")
    @Pattern(regexp = "[(0)+([0-9]{9})]+", message = "SDT Toi Thieu 10 So Va Co So 0 Dau")
    private String sdt;

    @Column(name = "dia_chi")
    @NotBlank(message = "Dia Chi Trong")
    private String diaChi;

    @Column(name = "thanh_pho")
    @NotBlank(message = "Thanh Pho Trong")
    private String thanhPho;

    @Column(name = "quoc_gia")
    @NotBlank(message = "Quoc Gia Trong")
    private String quocGia;

//    @Column(name = "tai_khoan")
//    @NotBlank(message = "UserName Trong")
//    @Length(min = 4, message = "UserName Toi Thieu 4 Ki Tu")
//    private String userName;

//    @Column(name = "mat_khau")
//    @Length(min = 6, max = 25, message = "Mat Khau Chi Tu 6-25 Ki Tu")
//    private String passWord;

}
