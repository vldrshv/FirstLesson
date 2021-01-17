//
//  Geekbrains.swift
//  WelcomeToSwift
//
//  Created by vlad on 17.01.2021.
//

import Foundation

class Geekbrains {
    private var students = [Courses: Set<String>]()
    
    enum Courses: CaseIterable {
        case Android, iOS
    }
    enum GeekError: Error {
        case CourseNotFormed(availableCourses: [Courses])
        case OverCrowdedGroup(course: Courses, freePlaces: Int)
        case DoubledStudentInsertion(email: String)
    }
    
    private var maxGroupSize = 20
    
    init(groupsSize: Int) {
        maxGroupSize = groupsSize
        for course in Courses.allCases {
            students[course] = []
        }
    }
    
    func registerStudent(email: String, course: Courses) throws -> Bool {
        let res = try addStudentToCourse(name: email, course: course)
        return res
    }
    
    private func addStudentToCourse(name: String, course: Courses) throws -> Bool {
        guard var group = students[course] else {
            throw GeekError.CourseNotFormed(availableCourses: Array(students.keys))
        }
        
        guard group.count != maxGroupSize else {
            throw GeekError.OverCrowdedGroup(course: course, freePlaces: 0)
        }
        
        guard !group.contains(name) else {
            throw GeekError.DoubledStudentInsertion(email: name)
        }
        
        print("add student: \(name) to \(course)")
        let (inserted, _) = group.insert(name)
        students[course] = group
        
        return inserted
    }
    
}


