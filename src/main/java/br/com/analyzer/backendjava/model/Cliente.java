package br.com.analyzer.backendjava.model;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;

@Entity
@Table(name = "TB_CLIENTE")
public class Cliente {

  public Cliente() {
  }

  public Cliente(Long id, String nome, String email, String password) {
    this.id = id;
    this.nome = nome;
    this.email = email;
    this.password = password;
  }

  @Id
  @GeneratedValue(strategy = GenerationType.IDENTITY)
  private Long id;

  @Column(name = "nm_cliente")
  private String nome;

  @Column(name = "em_cliente")
  private String email;

  @Column(name = "pswd_cliente")
  private String password;

  public Long getId() {
    return id;
  }

  public void setId(Long id) {
    this.id = id;
  }

  public String getNome() {
    return nome;
  }

  public void setNome(String nome) {
    this.nome = nome;
  }

  public String getEmail() {
    return email;
  }

  public void setEmail(String email) {
    this.email = email;
  }

  public String getPassword() {
    return password;
  }

  public void setPassword(String password) {
    this.password = password;
  }

}
