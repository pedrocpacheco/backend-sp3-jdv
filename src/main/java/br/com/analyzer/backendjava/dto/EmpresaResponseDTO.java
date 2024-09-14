package br.com.analyzer.backendjava.dto;

public record EmpresaResponseDTO(
    Long id,
    String nome,
    String cnpj,
    String contato) {
}
