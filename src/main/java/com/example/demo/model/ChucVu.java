package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.UUID;

@Entity(name = "ChucVu")
@Table(name = "chuc_vu")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class ChucVu {

    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idChucVu;

    @Column(name = "ma")
    private String maChucVu;

    @Column(name = "ten")
    @NotBlank(message = "Ten Chuc Vu Trong")
    private String tenChucVu;


}
