//
//  Print.swift
//  WelcomeToSwift
//
//  Created by vlad on 28.12.2020.
//

import Foundation


class Print {
    /// returns a string of object fields and in values
    /// - Parameter reflectingObj: thw object, which fields to print
    static func toString(reflectingObj: AnyObject) -> String {
        let selfMirror = Mirror(reflecting: reflectingObj)
        var output = getChildren(children: selfMirror.children)
        output.append(getSuperClassChildren(mirror: selfMirror))
        
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
