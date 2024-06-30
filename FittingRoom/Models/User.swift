//
//  User.swift
//  FittingRoom
//
//  Created by Ryan Montoyo on 6/25/24.
//


import Foundation

struct User:Codable {
    let id:String
    let first_name:String
    let last_name:String
    let email:String
    let joined:TimeInterval
}
