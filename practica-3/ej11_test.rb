#!/usr/bin/ruby
=begin
Implementá al menos 3 tests para cada uno de los siguientes ejercicios de las prácticas anteriores:
    1. De la práctica 1: 4 (`en_palabras`), 5 (`contar`), 6 (`contar_palabras`) y 9 (`longitud`).
    2. De la práctica 2: 1 (`ordenar_arreglo`), 2 (`ordenar`), 4 (`longitud`), 14 (`opposite`) y 16 (`da_nil?`).
=end
require 'minitest/autorun'
require 'minitest/spec'
require_relative '../practica-1/ej4.rb'

describe '#en_palabras' do
   
   it 'cuando el valor esta entre 0..10' do
      time = Time.new(2017,8,12,13,00)
      result = "Son las #{time.hour} en punto"
      assert_equal(result, en_palabras(time))
   end

   it 'cuando el valor esta entre 11..20' do
      time = Time.new(2017,8,12,13,19)
      result = "Son las #{time.hour} y cuarto"
      assert_equal(result, en_palabras(time))
   end

   it 'cuando el valor esta entre 21..34' do
      time = Time.new(2017,8,12,13,34)
      result = "Son las #{time.hour} y media"
      assert_equal(result, en_palabras(time))
   end

   it 'cuando el valor esta entre 35..44' do
      time = Time.new(2017,8,12,13,35)
      result = "Son las #{time.hour + 1} menos vinticinco"
      assert_equal(result, en_palabras(time))
   end

   it 'cuando el valor esta entre 45..55' do
      time = Time.new(2017,8,12,13,54)
      result = "Son las #{time.hour + 1} menos cuarto"
      assert_equal(result, en_palabras(time))
   end
   it 'cuando el valor esta entre 56..59' do
      time = Time.new(2017,8,12,13,57)
      result = "Son casi las #{time.hour + 1}"
      assert_equal(result, en_palabras(time))
   end

end

