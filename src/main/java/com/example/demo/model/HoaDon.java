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
@Table(name = "hoa_don")
public class HoaDon {

    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idHoaDon;

    @ManyToOne
    @JoinColumn(name = "id_kh")
    private KhachHang khachHang;

    @ManyToOne
    @JoinColumn(name = "id_nv")
    private NhanVien nhanVien;

    @Column(name = "ma")
    private String maHoaDon;

    @Column(name = "ngay_tao")
    private LocalDate ngayTao;

    @Column(name = "ngay_thanh_toan")
    private LocalDate ngayThanhToan;

    @Column(name = "tinh_trang")
    private Integer tinhTrang;

    @Column(name = "ten_nguoi_nhan")
    private String tenNguoiNhan;

    @Column(name = "dia_chi")
    private String diaChi;

    @Column(name = "sdt")
    private String sdt;

    public String trangThaiHoaDon(){
        if(this.getTinhTrang() == 0){
            return "Da Huy";
        }else if(this.getTinhTrang() == 1){
            return "Chua Thanh Toan";
        }else {
            return "Da Thanh Toan";
        }
    }
}
