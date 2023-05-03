package ru.sber.spring.java13springmy.sdproject.model;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.time.LocalDateTime;

//https://ondras.zarovi.cz/sql/demo/?keyword=default
@Getter
@Setter
@NoArgsConstructor
@MappedSuperclass
public class GenericModel {
    @Id
    @Column(name = "id", nullable = false)
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "default_gen")
    private Long id;
    @Column(name = "created_when")
    private LocalDateTime createdWhen;

    @Column(name = "created_by")
    private String createdBy;

    @Column(name = "deleted_when")
    private LocalDateTime deletedWhen;

    @Column(name = "deleted_by")
    private String deletedBy;

    @Column(name = "is_deleted", columnDefinition = "boolean default false")
    private boolean isDeleted;
}
