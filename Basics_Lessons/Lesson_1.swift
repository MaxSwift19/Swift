//
//  Lesson_1.swift
//  Basics_Lessons
//
//  Created by User on 02/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

// Задача №1 Решить квадратное уровнение axˆ2 + bx + c = 0, где коэффициенты a, b и c — произвольные числа, причем a ≠ 0.

var x1: Float = 0
var x2: Float = 0
var d: Float = 0
 
var a: Float = 1
var b: Float = -2
var c: Float = -3
 
// Дискриминант (D) — это число по формуле D = bˆ2 − 4ac.
d = b * b - 4 * a * c

// Если D > 0, корней будет два. Если D = 0, есть ровно один корень; Если D < 0, корней нет;
if d > 0 {
    x1 = (-b + sqrt(d)) / (2 * a)
    x2 = (-b - sqrt(d)) / (2 * a)
    print("X1 = \(x1); X2 = \(x2)")
}else if d == 0 {
    x1 = (-b + sqrt(d)) / (2 * a)
    print("X1 = X2 = \(x1)")
} else {
    print("Корней нет")
}


// Задача №2 Даны катеты прямоугольного треугольника. Найти площадь, периметр и гипотенузу треугольника.

// Катет 1 и 2
var legOne: Float = 3
var legTwo: Float = 4

var square: Float = 0
var perimetr: Float = 0
var hypotenuse: Float = 0

// Площадь (S) - вычисляется по формуле S = a * b / 2
square = legOne * legTwo / 2
print("Площадь треугольника = \(square)")

// Гипотенуза (С) - вычисляется по Теореме Пифагора = Квадрат гипотенузы равен сумме квадратов катетов cˆ2 = aˆ2 + bˆ2
var h = pow(legOne, 2) + pow(legTwo, 2)
hypotenuse = sqrt(h)
print("Гипотенза треугольника = \(hypotenuse)")

// Периметр (P) - вычисляется по формуле P = a + b + c
perimetr = legOne + legTwo + hypotenuse
print("Периметр треугольника = \(perimetr)")


// Задача №3 * Пользователь вводит сумму вклада в банк и годовой процент. Найти сумму вклада через 5 лет.

// Запрашиваем сумму вклада у клиента по "определенной" ставке на срок 5 лет
var deposit: Float = 1000
var rate: Float = 7
var period: Float = 5
var sum: Float = 0

// Сумма вклада черерз 5 лет (простые проценты)
sum = deposit + (deposit * (rate / 100) * period)
print("Сумма вклада через 5 лет = \(sum) рублей.")

// Сумма вклада черерз 5 лет (сложные проценты)
var count: Float = 0
var depositDiff: Float = 1000
var rateDiff: Float = 8
var periodDiff: Float = 5

/*
while count < periodDiff {
    depositDiff = depositDiff + (depositDiff * rateDiff / 100)
    count += 1
    print("Сумма вклада \(Int(count)) лет =", String(format: "%.2f", depositDiff) + " рублей.")
}*/

for i in 1...5 {
    depositDiff = depositDiff + (depositDiff * rateDiff / 100)
    print("Сумма вклада \(i) лет =", String(format: "%.2f", depositDiff) + " рублей.")
}


