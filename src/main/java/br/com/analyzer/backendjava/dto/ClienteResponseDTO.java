package br.com.analyzer.backendjava.dto;

public record ClienteResponseDTO(
    Long id,
    String nome,
    String email) {
}
