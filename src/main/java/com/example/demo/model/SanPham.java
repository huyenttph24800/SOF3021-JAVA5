package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.UUID;

@Entity(name = "SanPham")
@Table(name = "san_pham")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class SanPham {
    @Id
    @Column(name = "id", unique = true, nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idSanPham;

    @Column(name = "ma")
    private String maSanPham;

    @Column(name = "ten")
    @NotBlank(message = "Ten San Pham Trong")
    private String tenSanPham;
}
