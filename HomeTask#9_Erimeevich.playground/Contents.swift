import UIKit

// MARK: - Task 1 - Classes + Initialization
// 1. Создайте 3 любых класса и реализуйте в них инициализаторы разного типа

class FirstClass {
    var one: String
    var second: String
    var thirt: String
    
    init(one: String, second: String, thirt: String) {
        self.one = one
        self.second = second
        self.thirt = thirt
    }
}
var firstClassExample = FirstClass(one: "one", second: "two", thirt: "tre")


class SecondClass {
    var one: Int?
    var second: String = "Second line"
    var thirt: Bool = false
    
}
var itemOfSecondClass = SecondClass()
itemOfSecondClass.one = 13

class ThirtClass {
  let text: String
  var response: String?
  init(text: String) {
    self.text = text
  }
  func ask() {
    print(text)
  }
}
let beetsQuestion = ThirtClass(text:" wow ")
beetsQuestion.ask()

beetsQuestion.response = "OWO"

// MARK: - Task 2 - Structure
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте структуру Студент.
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этой структуры и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?
// Распечатайте оба массива.

struct Student {
    var name: String
    var surname: String
    var born: Int
    var averageMark: Double
    
    init(name: String, surname: String, born: Int, mark: Double) {
        self.name = name
        self.surname = surname
        self.born = born
        self.averageMark = mark
    }
}

let firstStudent = Student(name: "Makar", surname: "Erimeevich", born: 1919, mark: 6.86)
let secondStudent = Student(name: "Roman", surname: "Knuh", born: 1978, mark: 5.9819)
let thirtStudent = Student(name: "Hanna", surname: "Loblva", born: 1996, mark: 7.4)
let fourthStudent = Student(name: "Roman", surname: "Nosurname", born: 2000, mark: 8)
let fifthStudent = Student(name: "Serg", surname: "Iotchenko", born: 1881, mark: 10.0)

var classBook = [firstStudent]
classBook.append(secondStudent)
classBook.append(thirtStudent)
classBook.append(fourthStudent)
classBook.append(fifthStudent)


func printClassBook (array: [Student]){
    array.enumerated().forEach {
        print("#\($0.offset + 1)....name - \($0.element.name.uppercased()), surname - \($0.element.surname.uppercased()), year of born - \($0.element.born), Average mark - \($0.element.averageMark)")
    }
}

func sortMark (){
    classBook.sort() { ($0.averageMark) > ($1.averageMark)}
}

func sortSurname (){
    classBook.sort() { ($0.surname) == ($1.surname) ? ($0.name) < ($1.name) : ($0.surname) < ($1.surname)  }
}

printClassBook(array: classBook)

sortMark()
print("-------CLASSBOOK SORTED BY MARK-------")
printClassBook(array: classBook)

sortSurname()
print("-------CLASSBOOK SORTED BY SURNAME-------")
printClassBook(array: classBook)

var cloneClassBook = classBook

cloneClassBook[0].name = "Volodya"
cloneClassBook[0].surname = "Solovyev"
cloneClassBook[0].born = 1829
cloneClassBook[0].averageMark = 2.8

cloneClassBook[1].name = "Volodya"
cloneClassBook[1].surname = "Putin"
cloneClassBook[1].born = 1942
cloneClassBook[1].averageMark = 9.9

cloneClassBook[0].name = "Evgeniy"
cloneClassBook[0].surname = "Navalniy"
cloneClassBook[0].born = 1998
cloneClassBook[0].averageMark = 7.4

cloneClassBook[0].name = "Hanna"
cloneClassBook[0].surname = "Pietrusha"
cloneClassBook[0].born = 2000
cloneClassBook[0].averageMark = 8.8

cloneClassBook[0].name = "Anasteysha"
cloneClassBook[0].surname = "Belochkina"
cloneClassBook[0].born = 2002
cloneClassBook[0].averageMark = 4.4

print("-------CHANGED CLASSBOOK-------")
printClassBook(array: cloneClassBook)

print("-------OLD CLASSBOOK-------")
printClassBook(array: classBook)

print("-------OLD CLASSBOOK DOESN'T CHANGE-------")

// MARK: - Task 3 - Classes
// Используйте решение и предыдущей домашней работы
// Если домашнее было не выполнено, тогда реализуйте Ваше решение ниже.

// 1. Создайте класс Студент
// Добавьте свойства: имя, фамилия, год рождения, средний бал.
// Создайте несколько экземпляров этого класса и заполните их данными.
// Положите их всех в массив (журнал).

// 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого.
// Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.

// 3. Отсортируйте массив по среднему баллу по убыванию и распечатайте “журнал”.

// 4. Отсортируйте теперь массив по фамилии (по возрастанию).
// Eсли фамилии одинаковые, то сравнивайте по имени. Распечатайте “журнал”.

// 5. Создайте переменную и присвойте ей ваш существующий массив.
// Измените в нем данные всех студентов.
// Изменится ли первый массив?

class StudentCLASS {
    var name: String
    var surname: String
    var born: Int
    var averageMark: Double
    
    init(name: String, surname: String, born: Int, mark: Double) {
        self.name = name
        self.surname = surname
        self.born = born
        self.averageMark = mark
    }
}

let firStudent = StudentCLASS(name: "Makar", surname: "Erimeevich", born: 1919, mark: 6.86)
let secStudent = StudentCLASS(name: "Roman", surname: "Knuh", born: 1978, mark: 5.9819)
let thirStudent = StudentCLASS(name: "Hanna", surname: "Loblva", born: 1996, mark: 7.4)
let fourStudent = StudentCLASS(name: "Roman", surname: "Nosurname", born: 2000, mark: 8)
let fifStudent = StudentCLASS(name: "Serg", surname: "Iotchenko", born: 1881, mark: 10.0)

var journal = [firStudent]
journal.append(secStudent)
journal.append(thirStudent)
journal.append(fourStudent)
journal.append(fifStudent)

func printClassBookCLASS (array: [StudentCLASS]){
    array.enumerated().forEach {
        print("#\($0.offset + 1)....name - \($0.element.name.uppercased()), surname - \($0.element.surname.uppercased()), year of born - \($0.element.born), Average mark - \($0.element.averageMark)")
    }
}

func sortMarkCLASS (){
    journal.sort() { ($0.averageMark) > ($1.averageMark)}
}

func sortSurnameCLASS (){
    journal.sort() { ($0.surname) == ($1.surname) ? ($0.name) < ($1.name) : ($0.surname) < ($1.surname)  }
}

printClassBookCLASS(array: journal)

sortMarkCLASS()
print("-------JOURNAL SORTED BY MARK-------")
printClassBookCLASS(array: journal)

sortSurnameCLASS()
print("-------JOURNAL SORTED BY SURNAME-------")
printClassBookCLASS(array: journal)

var cloneJournal = journal

cloneJournal[0].name = "Inav"
cloneJournal[0].surname = "Prohorov"
cloneJournal[0].born = 1943
cloneJournal[0].averageMark = 6.34

cloneJournal[1].name = "Mark"
cloneJournal[1].surname = "Ivanov"
cloneJournal[1].born = 1982
cloneJournal[1].averageMark = 7.89

cloneJournal[2].name = "Alexei"
cloneJournal[2].surname = "Bodrov"
cloneJournal[2].born = 1856
cloneJournal[2].averageMark = 8.2

cloneJournal[3].name = "Jan"
cloneJournal[3].surname = "Murmansiy"
cloneJournal[3].born = 1946
cloneJournal[3].averageMark = 5.678

cloneJournal[4].name = "Igor"
cloneJournal[4].surname = "Lychshiy"
cloneJournal[4].born = 1980
cloneJournal[4].averageMark = 10.0

print("-------NEW ARRAY-------")
printClassBookCLASS(array: cloneJournal)

print("-------OLD ARRAY-------")
printClassBookCLASS(array: journal)

print("-------OLD CLASSBOOK CHANGED-------")

// MARK: - Почему по итогу массивы из заданий 2 и 3 менялись / не менялись? Чем это обусловлено?
//  менялись в классе, но не в структуре. Обусловлено тем, что классы ссылаются а не копируются в другой объект
// MARK: - Резюмируйте, чем отличаются классы от структур и когда что лучше использовать?
// главное отличие заключается в том что структуры копируются, а классы ссылаются
// когда нужно четкое закрепление данных за переменные и кейсы, то лучше использовать структуры
// если нужно гибкое хранение данных лучше использовать классы

// MARK: - Task 4 - Properties
// Добавить студенту property «Дата рождения» (структура, содержащая день, месяц, год) и два computed property:
// 1 — вычисляющее его возраст
// 2 — вычисляющее, сколько всего лет он учился (студент учился в школе с 6 лет, если ему меньше 6 лет — возвращать 0)

class Date {
    var day: Int
    var month: Int
    var year: Int
    
    init(day: Int, month: Int, year: Int) {
        self.day = day
        self.month = month
        self.year = year
    }
}

class countingAge {
    let nowDay = Date(day: 25, month: 11, year: 2020)
    let bornOfStudent = Date(day: 3, month: 1, year: 1999)
    
    var age: Int {
        get {
            if nowDay.month >= bornOfStudent.month && nowDay.day >= bornOfStudent.day ||
                nowDay.month > bornOfStudent.month {
                return nowDay.year - bornOfStudent.year
            } else {
                return nowDay.year - bornOfStudent.year - 1
            }
        }
    }
}

let howOld = countingAge()
print("Man is \(howOld.age) y.o.")

class StudingCounting {
    let studentAge = countingAge()
    
    var yearStudy: Int {
        get {
            if studentAge.age >= 6 {
                return studentAge.age - 6
            } else {
                return 0
            }
        }
    }
}

let calculationStuding = StudingCounting()
print("Man has studied \(calculationStuding.yearStudy) years.")

// MARK: - Task 5 - Properties
// 1. Создайте класс Человек, который будет содержать имя, фамилию, возраст, рост и вес.
// 2. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
// - минимальный и максимальный возраст каждого объекта
// - минимальную и максимальную длину имени и фамилии
// - минимально возможный рост и вес
// - создайте свойство, которое будет содержать количество созданных объектов этого класса

class Human {
    class var ageControlMin: Int { return 1 }
    class var ageControlMax: Int { return 100 }
    class var lenghtControlMin: Int { return 2 }
    class var lenghtControlMax: Int { return 10 }
    class var weightControlMin: Int { return 20 }
    class var weightControlMax: Int { return 200 }
    class var heightControlMin: Int { return 10 }
    class var heightControlMax: Int { return 250 }
   
    var name: String {
        didSet {
            if name.count < Human.lenghtControlMin || name.count > Human.lenghtControlMax {
                name = String(oldValue)
            }
        }
        
    }
    var surname: String {
        didSet {
            if surname.count > Human.lenghtControlMin || surname.count < Human.lenghtControlMax {
                surname = String(oldValue)
            }
        }
    }
    var age: Int {
        didSet {
            if age < Human.ageControlMin || age > Human.ageControlMax {
                age = oldValue
            }
        }
    }
    var height: Int {
        didSet {
            if height > Human.heightControlMin && height < Human.heightControlMax {
                height = oldValue
            }
        }
    }
    var weight: Int {
        didSet {
            if weight > Human.weightControlMin && weight < Human.weightControlMax {
                weight = oldValue
            }
        }
    }

    struct ItemCounter {
        static var totalHuman = 0
    }

    init(name: String, surname: String, age: Int, height: Int, weight: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
        self.weight = weight
        ItemCounter.totalHuman += 1
    }
}

Human.ItemCounter.totalHuman
var humanOne = Human(name: "Makar", surname: "Erimeevich", age: 15, height: 300, weight: 89)
humanOne.name = "///////////////////////////////////////////////////////"
humanOne.surname = "////////////////////////////////////////////////////"
Human.ItemCounter.totalHuman
var humanTwo = Human(name: "TATYANA", surname: "PUPOVA", age: 20, height: 190, weight: 44)
Human.ItemCounter.totalHuman

// MARK: - Task 6 - Inheritance
// 1. Создайте класс Кот
// 2. Наделите родительский класс свойствами и методами
// 3. Создайте 2 класса наследника: Рыжий кот и Черная кошка
// 4. Добавьте все необходимые свойства: цвет, пол, размер
// 5. Добавьте приватное свойство Голос, в которое нельзя записать значение извне
// 6. Реализуйте свойство имя кота, доступное только для чтения, и дайте имя каждому котику
// 7. Реализуйте конструктор, который в качестве аргумента принимает имя животного и устанавливает его в переменную с соответствующим уровнем доступа, который не позволяет переопределить её в дочерних классах

class Cat {
    var name: String {
        return ""
    }
    private var voice: String = "Meow!"
    var color: String
    var size: String
    var gender: String
    
    init(color: String, size: String, gender: String) {
        self.color = color
        self.size = size
        self.gender = gender
    }

    func scream() -> String {
        return voice
    }
}

class RedCat: Cat {
    private var redCatName = "Jan"
    final override var name: String {
        return redCatName
    }
}

class BlackCat: Cat {
    private var blackCatName = "Vylga"
    final override var name: String {
        return blackCatName
    }
}

let redCat = RedCat(color: "Red", size: "Big", gender: "boy")
redCat.scream()

let blackCat = BlackCat(color: "Black", size: "Little", gender: "girl")
blackCat.scream()

// MARK: - Task 7 - Overriding
// 1. Создайте класс Геометрическая фигура и реализуйте в нем метод подсчета площади фигуры
// 2. Создайте 5 классов-наследников: Круг, Квадрат, Треугольник, Трапеция и Ромб
// 3. Переопределите метод подсчета площади фигуры и реализуйте расчет этой площади для каждой фигуры
// 4. Все результаты вывести в консоль.
// 5. Добавьте переменную Description, которая характеризует тип фигуры
// 6. Переопределите ее для каждой фигуры и выведите описание каждой фигуры в консоль
// 7. Определите свойство цвет для каждой фигуры
// 8. Если фигуры - Круг, Треугольник или Ромб - задайте им красный цвет
// 9. Если фигуры - Квадрат или Трапеция - задайте им зеленый цвет

class GeometricFigure {
    var description: String { return "Figure" }
    
    func squareСalculation()  { }
}

class Circle: GeometricFigure {
    let color = "RED"
    
    func squareСalculation(radius: Float) -> Float {
        return Float.pi * pow(radius,2)
    }
    
    override var description: String {
        return super.description + " circle, square = \(squareСalculation(radius: 4.2)) _ color is " + color
    }
}

class Square: GeometricFigure {
    let color = "GREEN"
    
    func squareСalculation(with side: Double) -> Double {
        return pow(side,2)
    }
    
    override var description: String {
        return super.description + " square, square = \(squareСalculation(with: 5)) _ color is " + color
    }
}

class Triangle: GeometricFigure {
    let color = "RED"
    
    func squareСalculation(for base: Double, and height: Double) -> Double {
        return 0.5 * base * height
    }
    
    override var description: String {
        return super.description + " triangle, square = \(squareСalculation(for: 5, and: 5)) _ color is " + color
    }
}

class Trapezia: GeometricFigure {
    let color = "GREEN"
    
    func squareСalculation(for base: Double, and base2: Double, and height: Double) -> Double {
        return 0.5 * (base + base2) * height
    }
    
    override var description: String {
        return super.description + " trapezia, square = \(squareСalculation(for: 5, and: 10, and: 7)) _ color is " + color
    }
}

class Rhombus: GeometricFigure {
    let color = "RED"
    
    func squareСalculation(for base: Double, and height: Double) -> Double {
        return base * height
    }
    
    override var description: String {
        return super.description + " rhomb, square = \(squareСalculation(for: 10, and: 5)) _ color is " + color
    }
}

var circle = Circle()
var square = Square()
var triangle = Triangle()
var trapezia = Trapezia()
var rhombus = Rhombus()

let array: [String] = [circle.description, square.description, rhombus.description]
let array1: [String] = [triangle.description, trapezia.description]

for thing in array {
    print(thing)
}

for thing in array1 {
    print(thing)
}

// MARK: - Task 8 - Extensions
// 1. Создайте расширение для Int со свойствами isNegative, isPositive
// 2. Добавьте свойство, которое возвращает количество символов в числе
// 3. Добавьте типу String метод trimText(), чтобы он мог отсекать N последних символов
// !!! Обратите внимание, как будет вести себя ваша программа, если вы попытаетесь удалить больше символов, чем есть в строке

// 4. Добавьте типу String метод truncate(length: Int), который определит, что строка длиннее, чем length
// А затем отсечет лишние символы и заменит их на "..."

extension Int {
    enum Eigth {
        case isNegative, isPositive, zero
    }
    var eigth: Eigth {
        switch self {
        case 0:
            return .zero
        case let x where x > 0:
            return .isPositive
        default:
            return .isNegative
        }
    }
}

func printEight(number: Int) {
    switch number.eigth {
    case .isNegative:
        print("\(number) - negative")
    case .isPositive:
        print("\(number) - positive")
    default:
        print("\(number) - zero")
    }
}

printEight(number: 5)

extension String {
    var lengthString: Int { return self.count }

    func trimText(n: Int) -> String  {
        return String(dropLast(n))
    }
    
    func truncate(length: Int) -> String{
        
        if length < lengthString {
            return String(dropLast(lengthString - length) + "...")
        } else {
            return String ("Длинна строки меньше условия")
        }
 
    }
}

var str = "HI BRO LET CHECK THE TASK BY THIS STRING"
print("String length = \(str.lengthString) + \(str.truncate(length: 10))")

print("\(str.trimText(n: 10))")

print("\(str.truncate(length: 10))")

// MARK: - Task 9 - Inheritance + Protocol
// 1. Создайте базовый класс «Артист», у которого должны быть:

/// `Свойства`
// - имя (структура) - разрешить только чтение
// - возраст - сделать проверку на положительное значение
// - страна работы (Беларусь, Россия, Украина, другое (enum associated value))
// - стаж работы
// - зарплата в неделю - артист может отказаться её озвучивать
// - зарплата за день - вычисляется на основе зарплаты в неделю после того, как было установлено новое значение
// - сколько процентов своей жизни работал артистом - computed property

/// `Инициализаторы`
// 2 разных инициализатора (имя в каждом инициализаторе - обязательно)

/// `Методы`
// статический метод, возвращающий возможные страны проживания артиста. сделать недоступным к переопределению
// статический метод, выводящий информацию о названии класса в консоль
// метод с информацией об артисте - выводит все свойства в читаемом виде. недоступен к переопределению
// метод «выступить», выводящий информацию об артисте, в каком жанре выступает и что показывает

// Создать классы «Музыкант», «Художник», «Танцор», наследующиеся от артиста.
// В каждом классе переопределить метод с информацией о классе.
// - Танцор отказывается выступать, если его зарплата за день меньше 100, о чем сообщает в консоли.
// - Художник не хочет использовать своё родное имя, заменяя его на сценическое, которое состоит из перемешанных букв родного имени.
// - Музыканты не хотят работать в Турции, уезжая в любую другую страну из списка доступных, а также у них появляется новый параметр - любимый инструмент.

// Создать по два экземпляра каждого класса (в том числе родителя) с различными данными, положив их в массив типа Артист.
// Пройтись по массиву и вызвать у каждого элемента метод выступить. Если в списке попался Танцор, то вывести его зарплату за день, если Музыкант, то отобразить любимый инструмент.

// 2. Создать протокол BusinessTrip со свойствами страна, продолжительность поездки, методы startTrip(), endTrip() и expressIndignation().
// Сделать реализацию по умолчанию метода startTrip(), который выводит страну командировки и продолжительность поездки.
// Позволить сущностям, который подчиняются протоколу, не реализовывать метод expressIndignation() - можно сделать через расширение
// Подчиниться в extension класса Артист протоколу BusinessTrip.
// В классе Художник в расширении реализовать метод expressIndignation(), в котором Художник выражает недовольство о необходимости поездки в командировку.

// 3. Создать протокол PayableBusinessTrip, наследующийся от протокола BusinessTrip, с новыми computed property - salaryInBusinessTrip, salaryCoefficient.
/// properties - `salaryInBusinessTrip`,  `salaryCoefficient` - доступ только на чтение

// Подчиниться в классе Артист протоколу PayableBusinessTrip в уже имеющемся extension.
// salaryInBusinessTrip вычисляется на основе зарплаты за день (если артист отказался ее называть, то зарплата по умолчанию - 80), помноженной на salaryCoefficient, зависящий от стажа работы:
/// - `1-2 года - 1x`,
/// - `3-5 лет - 1.5x`,
/// - `> 5 лет -  2x`.
// Танцорам повысить salaryInBusinessTrip на 10% и доработать метод startTrip(), исходя из требования танцора о минимальной зарплате в 100.

