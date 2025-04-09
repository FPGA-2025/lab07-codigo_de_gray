# Conversores Binário para Código Gray e Código Gray para Binário  

Nesta atividade, você implementará dois módulos em **Verilog** para converter números de **binário para Código Gray** e **Código Gray para binário**. Esta prática introduz o conceito de **Codificação Gray**, frequentemente usada em sistemas digitais para minimizar erros durante transições entre estados binários.  

---

## O que é Código Gray?  

O **Código Gray** é um sistema de numeração binária em que dois valores consecutivos diferem por apenas **um bit**. É útil em aplicações como:  

- **Circuitos digitais com múltiplos estados**, onde transições seguras são necessárias.  
- **Encoders rotativos**, onde mudanças rápidas podem causar erros.  
- **Sistemas assíncronos**, onde múltiplos bits podem mudar simultaneamente.  

---

### Conversão Binário para Código Gray (4 bits)  

A conversão de binário para Código Gray é realizada com **operações XOR**.  

#### Fórmula Geral  

Dado um número binário de 4 bits \( B = B3, B2, B1, B0 \), o Código Gray correspondente \( G = G3, G2, G1, G0 \) é calculado como:  

- G3 = B3  
- G2 = B3 xor B2  
- G1 = B2 xor B1  
- G0 = B1 xor B0  

Onde "xor" é a operação lógica exclusiva OU.  

---

### Conversão Código Gray para Binário (4 bits)  

A conversão de **Código Gray para Binário** utiliza uma operação **cumulativa** de XOR.  

#### Fórmula Geral  

Dado um número em Código Gray de 4 bits \( G = G3, G2, G1, G0 \), o número binário correspondente \( B = B3, B2, B1, B0 \) é calculado como:  

- B3 = G3  
- B2 = B3 xor G2  
- B1 = B2 xor G1  
- B0 = B1 xor G0  

---

### Exemplo de Conversão  

Converter \( B = 1010 \) para **Código Gray** e retornar para binário:  

- Binário \( B = 1010 \) → Código Gray \( G = 1111 \)  
- Código Gray \( G = 1111 \) → Binário \( B = 1010 \)  

O Código Gray preserva o número original quando a conversão de ida e volta é implementada corretamente.  

---

## Atividade  

Implemente dois módulos em **Verilog**: `Binary_to_Gray` e `Gray_to_Binary`.  

### Binary_to_Gray  

Recebe uma entrada binária de 4 bits e gera uma saída de 4 bits correspondente ao Código Gray.  

```verilog
module Binary_to_Gray (
    input  wire [3:0] binary_in,
    output wire [3:0] gray_out
);
    // Implementação aqui
endmodule
```

### Gray_to_Binary  

Recebe uma entrada de Código Gray de 4 bits e gera uma saída de 4 bits correspondente ao número binário.  

```verilog
module Gray_to_Binary (
    input  wire [3:0] gray_in,
    output wire [3:0] binary_out
);
    // Implementação aqui
endmodule
```

---

## Entrega  

Faça um *commit* no repositório do **GitHub Classroom**. O sistema de correção automática validará sua implementação e atribuirá uma nota com base nos testes.  

> **Dica:**  
Não altere os arquivos de correção! Para entender como os testes funcionam, consulte o script `run.sh` no repositório.  

