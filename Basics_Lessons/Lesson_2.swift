//
//  Lesson_2.swift
//  Basics_Lessons
//
//  Created by User on 02/12/2019.
//  Copyright © 2019 Home. All rights reserved.
//

import Foundation

// Пример использования тернарного опреатора.

var money = 100

money >= 100 ? print("Денег достаточно!") : print("Денег не достаточно!")

// ----------------------------------------------------------------------------
 
// Задача №1 Написать функцию, которая определяет, четное число или нет.

func checkConditions (_ number: Int) -> Bool {
    return number % 2 == 0
}

print(checkConditions(10))


// Задача №2 Написать функцию, которая определяет, делится ли число без остатка на 3.

func checkConditionsTwo (_ number: Int) -> Bool {
    return number % 3 == 0
}

print(checkConditionsTwo(9))


// Задача №3 Создать возрастающий массив из 100 чисел.

var array = Array(0...100) // [0...100] Более быстрый способ

//for i in 0...100 {
//    array.append(i)
//}
 // print(array)


// Задача №4 Удалить из этого массива все четные числа и все числа, которые не делятся на 3.

//func deleteElement (_ element: Int){
//    if let index = array.firstIndex(of: element) {
//    array.remove(at: index)
//    }
//}
//
//for revise in array {
//    if checkConditions(revise) {
//        deleteElement(revise)
//        continue
//    }
//    if !checkConditionsTwo(revise) {
//        deleteElement(revise)
//    }
//}

array = array.filter { $0 % 2 != 0 && $0 % 3 == 0 } // Если true -> add console
    
print(array)


// Задание №5 Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов.

// Интересное
