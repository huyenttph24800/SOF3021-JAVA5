package com.example.demo.model;

import jakarta.persistence.Embeddable;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import lombok.*;

import java.io.Serializable;
@Setter@Getter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Embeddable

public class IdGioHangChiTiet implements Serializable {
    @ManyToOne
    @JoinColumn(name = "id_gio_hang")
    private GioHang gioHang;

    @ManyToOne
    @JoinColumn(name = "id_chi_tiet_sp")
    private ChiTietSP chiTietSP;
}
