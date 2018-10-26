#!/usr/bin/env bash
# File: arrays_exercises.sh

animais=(papagaio gato cachorro jacare cobra onca leao girafa macaco macaquinho macacao)
vetor1=(Alex Sandro Alves de Araujo 12 34 56)
vetor2=(2 3 4 20 30 40)

echo ""
echo "Index: $1"
echo "Animais: ${animais[*]}"
echo "Animal selecionado: ${animais[$1]}"
echo ""
echo "Vetor 1: ${vetor1[*]} (${#vetor1[*]})"
echo "Vetor 2: ${vetor2[*]} (${#vetor2[*]})"
echo "${#vetor1[*]} + ${#vetor2[*]}" | bc -l
