//
//  main.swift
//  WelcomeToSwift
//
//  Created by Leonid Nifantyev on 11.12.2020.
//

import Foundation


let geek = Geekbrains(groupsSize: 10)

func randomString(length: Int) -> String {
  let letters = "abc"//defghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
  return String((0..<length).map{ _ in letters.randomElement()! })
}
func randomCourse(hashString: String) -> Geekbrains.Courses {
    switch hashString.hash % 2 {
    case 0:
        return Geekbrains.Courses.Android
    case 1:
        return Geekbrains.Courses.iOS
    default:
        return Geekbrains.Courses.iOS
    }
}

var studentsIos = 0
while studentsIos != 30 {
    let name = randomString(length: 3)
    let course = randomCourse(hashString: name)
    
    let (inserted, hasPlaces) = register(name, course)
    
    if inserted {
        studentsIos += 1
    }
    if !hasPlaces {
        break
    }
}


func register(_ name: String,_ course: Geekbrains.Courses) -> (Bool, Bool) {
    var hasPlaces = true
    do {
        return try (geek.registerStudent(email: name, course: course), hasPlaces)
    } catch Geekbrains.GeekError.CourseNotFormed(let availableCourses) {
        print("- error: no such course, available: \(availableCourses)")
    } catch Geekbrains.GeekError.DoubledStudentInsertion(let email) {
        print("- error doubled insertion of \(email)")
    } catch Geekbrains.GeekError.OverCrowdedGroup(let (owercrowdedCourse, freePlaces)) {
        print("- error freePlaces in \(owercrowdedCourse) = \(freePlaces)")
        hasPlaces = false
    } catch let error {
        print(error.localizedDescription)
    }
    return (false, hasPlaces)
}




