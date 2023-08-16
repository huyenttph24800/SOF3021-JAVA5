package com.example.demo.model;

import jakarta.persistence.*;
import lombok.*;

import java.util.UUID;

@Entity(name = "MauSac")
@Table(name = "mau_sac")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class MauSac {

    @Id
//    @GeneratedValue(generator = "system-uuid")
    @Column(name = "id", unique = true, nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idMS;

    @Column(name = "ma")
    private String maMS;

    @Column(name = "ten")
    private String tenMS;
}
