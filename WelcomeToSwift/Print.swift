//
//  Print.swift
//  WelcomeToSwift
//
//  Created by vlad on 07.01.2021.
//

import Foundation


class Print {
    /// returns a string of object fields and in values
    /// - Parameter reflectingObj: thw object, which fields to print
    static func toString(reflectingObj: AnyObject) -> String {
        let mirror = Mirror(reflecting: reflectingObj)
        var output = getChildren(children: mirror.children)
        output.append(getSuperClassChildren(mirror: mirror))

        return output
    }

    private static func getChildren(children: Mirror.Children) -> String {
        var output = ""
        for child in children {
            output.append("\(child.label): \(child.value)\n")
        }
        return output
    }

    private static func getSuperClassChildren(mirror: Mirror) -> String {
        var output = ""
        var superclassMirror = mirror.superclassMirror
        var hasSuperClass = superclassMirror != nil

        while hasSuperClass {
            output.append(getChildren(children: superclassMirror!.children))

            superclassMirror = superclassMirror?.superclassMirror
            hasSuperClass = superclassMirror != nil
        }

        return output
    }
}
