//
//  OnboardingModel.swift
//  flora_fauna
//
//  Created by Timia Raines on 11/2/22.
//

import Foundation

struct Page: Identifiable, Equatable{
    let id = UUID()
    var name: String
    var description: String
    var imageURL: String
    var tag: Int
    
    static var samplePage = Page(name: "Title Example", description: "A sample page for identifying any issues during debugging", imageURL: "Lotus-Flower", tag: 0)
    
    static var onboardingPages: [Page] = [
        Page(name: "Welcome!", description: "Flora Fauna is the #1 one stop shop for all of your womens health needs", imageURL: "3641634", tag: 0),
        Page(name: "Worry no more.", description: "Track your cycle, learn from other women and even chat with a doctor about any concerns from the comfort of the app.", imageURL: "4447", tag: 1),
        Page(name: "Finding care made simple.", description: "Struggling to find a care provider or specialist? We can help you locate clinics and providers in your area.", imageURL: "doctor-and-patient-in-hospital-room-vector-32184585", tag: 2)
    ]
}

