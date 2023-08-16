package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.UUID;

@Entity(name = "DongSP")
@Table(name = "dong_sp")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class DongSP {

    @Id
    @Column(name = "id", unique = true, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idDongSP;

    @Column(name = "ma")
    private String maDongSP;

    @Column(name = "ten")
    @NotBlank(message = "Ten Dong San Pham Trong")
    private String tenDongSP;


}
