//
//  ContentModel.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 22/06/2024.
//

import SwiftUI

struct ContentModel:Codable,Identifiable {
    let id : UUID
    let title : String
    let image : String
    let topicsData : [TopicsModel]
    var isPopularCategory  = false
    var linkToWesbite : String?
    
    
    static func examples() -> [ContentModel] {
        var data : [ContentModel] = []
        for number in 1...5 {
            data.append(ContentModel(id:UUID(),title: "Benefits\(number)", image: "gov", topicsData: TopicsModel.examples()))
        }
        data.append(ContentModel(id:UUID(),title: "Personal tax account: sign in or set up", image: "gov", topicsData: TopicsModel.examples()))
        
        return data
    }
    
    static func featuredData() -> [ContentModel] {
        var data : [ContentModel] = []
        
        data.append(ContentModel(id:UUID(),title: "HMRC account: sign in or set up", image: "HMRC account: sign in or set up", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/log-in-register-hmrc-online-services#:~:text=HMRC%20online%20services-,Sign%20in%20to%20HMRC%20online%20services,Sign%20in,-If%20you%20cannot"))
        
        data.append(ContentModel(id:UUID(),title: "Universal Credit account: sign in", image: "Universal Credit account: sign in", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/sign-in-universal-credit#:~:text=Sign%20in%20to%20your%20Universal%20Credit%20account%20to"))
        
        data.append(ContentModel(id:UUID(),title: "Personal tax account: sign in or set up", image: "Personal tax account: sign in or set up", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/personal-tax-account#:~:text=Sign%20in%20to%20or%20set%20up%20your%20personal%20tax%20account"))
        
        data.append(ContentModel(id:UUID(),title: "Self Assessment tax return: sign in", image: "Self Assessment tax return: sign in", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/log-in-file-self-assessment-tax-return#:~:text=Sign%20in%20to%20file%20your%20tax%20return"))
        
        data.append(ContentModel(id:UUID(),title: "Childcare account: sign in", image: "Childcare account: sign in", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/sign-in-childcare-account#:~:text=You%E2%80%99ll%20need%20the%20Government%20Gateway%20user%20ID%20and%20password%20you%20used%20when%20you%20applied%20for%20Tax%2DFree%20Childcare."))
        
        data.append(ContentModel(id:UUID(),title: "Visit the UK on a Standard Visitor visa", image: "Visit the UK on a Standard Visitor visa", topicsData: TopicsModel.examples(),isPopularCategory: true,linkToWesbite: "https://www.gov.uk/standard-visitor#:~:text=Visit%20the%20UK-,Visit%20the%20UK%20as%20a%20Standard%20Visitor,-Skip%20contents"))
        
        
        return data
    }
    
    static func servicesData() -> [ContentModel] {
        var data : [ContentModel] = []
        
        data.append(ContentModel(id:UUID(),title: "Benefits", image: "gov", topicsData: TopicsModel.benefitsData()))
        
        data.append(ContentModel(id:UUID(),title: "Births, deaths, marriages and care", image: "gov", topicsData: TopicsModel.birthDeathTopicsData()))
        
        data.append(ContentModel(id:UUID(),title: "Business and self-employed", image: "Business and self-employed", topicsData: TopicsModel.bussAndSelfEmployedData()))
        
        data.append(ContentModel(id:UUID(),title: "Childcare and parenting", image: "gov", topicsData: TopicsModel.childcareData()))
        
        data.append(ContentModel(id:UUID(),title: "Citizenship and living in the UK", image: "gov", topicsData: TopicsModel.citizenshipData()))
        
        data.append(ContentModel(id:UUID(),title: "Crime, justice and the law", image: "gov", topicsData: TopicsModel.crimeAndJusticeData()))
        
        data.append(ContentModel(id:UUID(),title: "Disabled people", image: "gov", topicsData: TopicsModel.disabledCareData()))
        
        data.append(ContentModel(id:UUID(),title: "Education and learning", image: "gov", topicsData: TopicsModel.educationAndLearningData()))
        
        data.append(ContentModel(id:UUID(),title: "Employing people", image: "gov", topicsData: TopicsModel.employingPeopleData()))
        
        data.append(ContentModel(id:UUID(),title: "Environment and countryside", image: "gov", topicsData: TopicsModel.environmentData()))
        
        data.append(ContentModel(id:UUID(),title: "Housing and local services", image: "gov", topicsData: TopicsModel.housingAndLocalData()))
        
        data.append(ContentModel(id:UUID(),title: "Money and tax", image: "gov", topicsData: TopicsModel.moneyAndTaxData()))
        
        data.append(ContentModel(id:UUID(),title: "Passports, travel and living abroad", image: "gov", topicsData: TopicsModel.passportAndTravellingData()))
        
        data.append(ContentModel(id:UUID(),title: "Visas and immigration", image: "gov", topicsData: TopicsModel.visasAndImmigrationData()))
        
        data.append(ContentModel(id:UUID(),title: "Working, jobs and pensions", image: "gov", topicsData: TopicsModel.jobsAndPensionsData()))
        
        
        return data
    }
}
