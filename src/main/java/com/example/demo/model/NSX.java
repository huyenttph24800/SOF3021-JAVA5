package com.example.demo.model;

import jakarta.persistence.*;
import jakarta.validation.constraints.NotBlank;
import lombok.*;

import java.util.UUID;

@Entity(name = "NSX")
@Table(name = "nxs")
@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
public class NSX {

    @Id
    @Column(name = "id", unique = true, nullable = false, length = 36)
    @GeneratedValue(strategy = GenerationType.AUTO)
    private UUID idNSX;

    @Column(name = "ma")
    private String maNSX;

    @Column(name = "ten")
    @NotBlank(message = "Ten Mau Sac")
    private String tenNSX;

}
