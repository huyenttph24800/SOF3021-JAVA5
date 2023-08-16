package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

import java.time.LocalDate;
import java.util.UUID;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Entity
@Table(name = "gio_hang")
public class GioHang {
    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idGioHang;

    @ManyToOne
    @JoinColumn(name = "id_kh")
    private KhachHang khachHang;

    @ManyToOne
    @JoinColumn(name = "id_nv")
    private NhanVien nhanVien;

    @Column(name = "ma")
    private String maGioHang;

    @Column(name = "ngay_tao")
    private LocalDate ngayTao;

    @Column(name = "ngay_thanh_toan")
    private LocalDate ngayThanhToan;

    @Column(name = "ten_nguoi_nhan")
    private String tenNguoiNhan;

    @Column(name = "dia_chi")
    private String diaChi;

    @Column(name = "sdt")
    private String sdt;

    @Column(name = "tinh_trang")
    private Integer tinhTrang;

    public String layTrangThai(){
        if(this.tinhTrang == 0){
            return "Dang Cho Thanh Toan";
        }else{
            return "Da Huy";
        }
    }
}
