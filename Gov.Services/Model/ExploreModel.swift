//
//  ExploreModel.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 25/06/2024.
//

import Foundation
struct ExploreModel:Codable,Identifiable {
    let id : UUID
    let title : String
    let icon : String
    let linkToWeb:String
    
    static func examples() -> [ExploreModel] {
        var data : [ExploreModel] = []
        //        for number in 1...5 {
        //            data.append(ExploreModel(id:UUID(),
        //                                    title: "HMRC\(number)",
        //                                    icon: "chevron.forward"))
        //        }
        data.append(ExploreModel(id: UUID(), title: "HMRC services: sign in", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/log-in-register-hmrc-online-services#:~:text=HMRC%20online%20services-,Sign%20in%20to%20HMRC%20online%20services,-Once%20you%E2%80%99ve%20set"))
        data.append(ExploreModel(id: UUID(), title: "Check MOT history of a vehicle", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/check-mot-history#:~:text=Check%20a%20vehicle%E2%80%99s%20MOT%20history"))
        
                
        data.append(ExploreModel(id: UUID(), title: "Tax your vehicle", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/vehicle-tax#:~:text=MOT%20and%20insurance-,Tax%20your%20vehicle,-Tax%20your%20car"))
        
        data.append(ExploreModel(id: UUID(), title: "Universal Credit", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/universal-credit#:~:text=Contact%20Universal%20Credit-,What%20Universal%20Credit%20is,-Universal%20Credit%20is"))
        
        data.append(ExploreModel(id: UUID(), title: "Foreign travel advice", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/foreign-travel-advice#:~:text=Foreign%20travel%20advice"))
        
        data.append(ExploreModel(id: UUID(), title: "Check your State Pension age", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/state-pension-age#:~:text=Check%20your%20State%20Pension%20age"))
        
        
        data.append(ExploreModel(id: UUID(), title: "Childcare account: sign in", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/sign-in-childcare-account#:~:text=Sign%20in%20to%20your%20childcare%20account"))
        
        
        data.append(ExploreModel(id: UUID(), title: "Student finance: sign in", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/student-finance-register-login#:~:text=Student%20finance%20login"))
        
        
        data.append(ExploreModel(id: UUID(), title: "Self Assessment tax returns", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/self-assessment-tax-returns#:~:text=Self%20Assessment%20tax%20returns"))
        
        data.append(ExploreModel(id: UUID(), title: "Apply for a passport", icon: "chevron.forward",linkToWeb:"https://www.gov.uk/apply-renew-passport#:~:text=Apply%20online%20for%20a%20UK%20passport"))
        
        return data
    }
}

