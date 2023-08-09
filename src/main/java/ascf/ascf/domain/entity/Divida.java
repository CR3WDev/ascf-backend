package ascf.ascf.domain.entity;

import jakarta.persistence.*;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

@Table
@Entity
@Getter
@Setter
public class Divida {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nome;
    @Column(name = "data_criacao")
    private LocalDateTime dataCriacao;
    private Double valor;

    @ManyToOne
    private Usuario usuario;
}
