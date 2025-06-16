function main()

# Matriz de transição Γ
T = [
    0.0   0.5   0.5   0.0   0.0;
    0.2   0.2   0.2   0.2   0.2;
    1/3   1/3   0.0   1/3   0.0;
    0.0   0.0   0.0   0.0   1.0;
    0.0   0.0   0.5   0.5   0.0
]
println("Matriz de transição T:")
display(T)
println("-"^50)

# Estado inicial: começando na página 1
estado_inicial = [1.0 0.0 0.0 0.0 0.0]
println("Estado inicial (distribuição de probabilidade das páginas):")
display(estado_inicial)
println("-"^50)


# Número de interações
num_interacoes = 5
estado_atual = estado_inicial

# Simulando interações
for i in 1:num_interacoes
    estado_atual *= T
end    

# Exibir resultado
println("Distribuição de Probabilidade Final após $num_interacoes interações:")
for i in 1:num_interacoes
    println("Página $i: $(round(estado_atual[i]*100, digits=2))%")
end    


end
main()