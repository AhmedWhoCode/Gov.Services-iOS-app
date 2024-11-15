//
//  TopicsModel.swift
//  Gov.Services
//
//  Created by Tehseen Ahmed on 24/06/2024.
//

import Foundation

struct TopicsModel:Codable,Identifiable {
    let id : UUID
    let title : String
    let desc : String
    var linkToWeb : String?
    var searchText = ""
    
    
    static func examples() -> [TopicsModel] {
        var data : [TopicsModel] = []
        for number in 1...5 {
            data.append(TopicsModel(id:UUID(),
                                    title: "Manage an existing benefit, payment or claim\(number)",
                                    desc: "find out about overpayments, or appeal a decision. Includes existing Universal Credit and tax credits claims."))
        }
        
        return data
    }
    
    
    static func benefitsData() -> [TopicsModel] {
        var data : [TopicsModel] = []
        
        data.append(TopicsModel(id: UUID(),
                                title: "Manage an existing benefit, payment or claim",
                                desc: "Sign in to your account, report changes, find out about overpayments, or appeal a decision. Includes existing Universal Credit and tax credits claims.",
                                linkToWeb: "https://www.gov.uk/browse/benefits/manage-your-benefit"
                               
                               ))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support if you're looking for work",
                                desc: "Help if you're looking for a new job, are out of work or affected by redundancy. Includes Universal Credit and Jobseeker’s Allowance (JSA)."
                                ,
                                linkToWeb: "https://www.gov.uk/browse/benefits/looking-for-work"
                               ))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support if you're temporarily unable to work",
                                desc: "Help if you’re unable to work because you’re ill or self-isolating. Includes Universal Credit and Employment and Support Allowance (ESA).",
                                linkToWeb: "https://www.gov.uk/browse/benefits/unable-to-work"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support for families",
                                desc: "Help if you look after children or plan to have or adopt a child. Includes Child Benefit.",
                                linkToWeb: "https://www.gov.uk/browse/benefits/families"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support if you're disabled or have a health condition",
                                desc: "Help if you're living with a health condition or disability. Includes Employment and Support Allowance (ESA).",
                                linkToWeb: "https://www.gov.uk/browse/benefits/disability"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support if you're caring for someone",
                                desc: "Help if you regularly spend time caring for someone. Includes Universal Credit.",
                                linkToWeb: "https://www.gov.uk/browse/benefits/help-for-carers"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support if you're on a low income",
                                desc: "Help with heating, housing and other living costs. Includes Universal Credit.",
                                linkToWeb: "https://www.gov.uk/browse/benefits/low-income"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial support when someone dies",
                                desc: "Help with costs and funeral expenses after someone has died. Includes Universal Credit.",
                                linkToWeb: "https://www.gov.uk/browse/benefits/bereavement"))
        
        
        return data
    }
    
    static func birthDeathTopicsData() -> [TopicsModel] {
        var data : [TopicsModel] = []
        
        data.append(TopicsModel(id: UUID(),
                                title: "Child Benefit",
                                desc: "Information about eligibility, claiming and when Child Benefit stops.",
                                linkToWeb: "https://www.gov.uk/browse/births-deaths-marriages/child"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Death and bereavement",
                                desc: "Reporting a death, wills, probate and Inheritance Tax.",
                                linkToWeb: "https://www.gov.uk/browse/births-deaths-marriages/death"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Having a child, parenting and adoption",
                                desc: "Legal rights, birth certificates, parental rights and child maintenance.",
                                linkToWeb: "https://www.gov.uk/browse/births-deaths-marriages/child-adoption"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Lasting power of attorney, being in care and managing finances",
                                desc: "Includes dealing with benefits, taxes and leaving care.",
                                linkToWeb: "https://www.gov.uk/browse/births-deaths-marriages/lasting-power-attorney"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Marriage, civil partnership and divorce",
                                desc: "Includes getting married abroad, decree absolutes and looking after children.",
                                linkToWeb: "https://www.gov.uk/browse/births-deaths-marriages/marriage-divorce"))
        return data
    }
    
    static func bussAndSelfEmployedData() ->[TopicsModel]{
        var businessTopics = [TopicsModel]()
        
        // Append TopicsModel instances to the businessTopics array
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Setting up",
                                          desc: "Includes self-employment and starting a business",
                                          linkToWeb: "https://www.gov.uk/browse/business/setting-up"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Business tax",
                                          desc: "Includes Corporation Tax, Capital Gains Tax, Construction Industry Scheme (CIS) and VAT",
                                          linkToWeb: "https://www.gov.uk/browse/business/business-tax"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Business finance and support",
                                          desc: "Finding finance, business support, writing a business plan",
                                          linkToWeb: "https://www.gov.uk/browse/business/finance-support"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Running a limited company",
                                          desc: "Includes registering, setting up, company accounts and tax returns",
                                          linkToWeb: "https://www.gov.uk/browse/business/limited-company"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Expenses and employee benefits",
                                          desc: "Includes company cars and paying tax on employee benefits",
                                          linkToWeb: "https://www.gov.uk/browse/business/expenses-employee-benefits"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Business debt and bankruptcy",
                                          desc: "Includes bankruptcy, insolvency and recovering debt",
                                          linkToWeb: "https://www.gov.uk/browse/business/funding-debt"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Business premises and business rates",
                                          desc: "Includes business rates, leases, renting, planning permission, waste, and energy certificates",
                                          linkToWeb: "https://www.gov.uk/browse/business/premises-rates"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Food, catering and retail",
                                          desc: "Labelling and handling food, transporting, food safety",
                                          linkToWeb: "https://www.gov.uk/browse/business/food"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Importing",
                                          desc: "Includes moving goods in the EU and commodity codes",
                                          linkToWeb: "https://www.gov.uk/browse/business/imports"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Exporting and doing business abroad",
                                          desc: "Includes moving goods in the EU and commodity codes",
                                          linkToWeb: "https://www.gov.uk/browse/business/exports"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Licences and licence applications",
                                          desc: "Applying for licences for events and businesses",
                                          linkToWeb: "https://www.gov.uk/browse/business/licences"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Selling your business and closing down",
                                          desc: "Stopping self-employment, winding up or liquidating a limited company",
                                          linkToWeb: "https://www.gov.uk/browse/business/selling-closing"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Sale of goods and services and data protection",
                                          desc: "Includes regulations for online retailers, offering credit and Trading Standards",
                                          linkToWeb: "https://www.gov.uk/browse/business/sale-goods-services-data"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Childcare providers",
                                          desc: "Includes registering as a childcare provider",
                                          linkToWeb: "https://www.gov.uk/browse/business/childcare-providers"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Manufacturing",
                                          desc: "Managing waste, health and safety, regulations",
                                          linkToWeb: "https://www.gov.uk/browse/business/manufacturing"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Patents, trade marks, copyright and designs",
                                          desc: "Includes registering, protecting and applying for designs and patents",
                                          linkToWeb: "https://www.gov.uk/browse/business/intellectual-property"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Business waste and environmental impact",
                                          desc: "Includes registering as a waste carrier, classifying waste, hazardous waste",
                                          linkToWeb: "https://www.gov.uk/browse/business/waste-environment"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Scientific research and development",
                                          desc: "Includes funding and support scheme guidance",
                                          linkToWeb: "https://www.gov.uk/browse/business/science"))
        
        businessTopics.append(TopicsModel(id: UUID(),
                                          title: "Maritime vessels and work at sea",
                                          desc: "Includes health and safety onboard, crew, registering vessels",
                                          linkToWeb: "https://www.gov.uk/browse/business/maritime"))
        
        return businessTopics
        
    }
    
    static func childcareData() ->[TopicsModel]{
        
        var data = [TopicsModel]()
        data.append(TopicsModel(id: UUID(),
                                title: "Pregnancy and birth",
                                desc: "Working, time off and financial support when you have a baby, registering a birth",
                                linkToWeb: "https://www.gov.uk/browse/childcare-parenting/pregnancy-birth"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Fostering, adoption and surrogacy",
                                desc: "Fostering or adopting a child, including from abroad, and being a surrogate mother",
                                linkToWeb: "https://www.gov.uk/browse/childcare-parenting/fostering-adoption-surrogacy"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Financial help if you have children",
                                desc: "Includes help when having a baby or adopting, child benefit and tax credits, support for childcare",
                                linkToWeb: "https://www.gov.uk/browse/childcare-parenting/financial-help-children"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Childcare",
                                desc: "Finding childcare, financial support for childcare and childcare for school-age children",
                                linkToWeb: "https://www.gov.uk/browse/childcare-parenting/childcare"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Schools and education",
                                desc: "Sending a child to school, financial support, dealing with the school",
                                linkToWeb: "https://www.gov.uk/browse/childcare-parenting/schools-education"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Divorce, separation and legal issues",
                                desc: "Child maintenance and disagreements about parentage",
                                linkToWeb: "https://www.gov.uk/browse/business/setting-up"))
        return data
        
    }
    
    static func citizenshipData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "British citizenship",
                                desc: "Becoming a citizen, Life in the UK test and getting a passport",
                                linkToWeb: "https://www.gov.uk/browse/citizenship/citizenship"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Charities, volunteering and honours",
                                desc: "Nominating someone for an honour, setting up a charity, community participation",
                                linkToWeb: "https://www.gov.uk/browse/citizenship/charities-honours"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Living in the UK, government and democracy",
                                desc: "Petitioning the government, government statistics, immigration status checks, national emergencies and terrorism",
                                linkToWeb: "https://www.gov.uk/browse/citizenship/government"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Voting",
                                desc: "Register to vote, getting on the electoral register and voting by proxy",
                                linkToWeb: "https://www.gov.uk/browse/citizenship/voting"))
        
        return data
    }
    
    static func crimeAndJusticeData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        data.append(TopicsModel(id: UUID(),
                                title: "Your rights and legal support",
                                desc: "Includes legal aid, consumer advice, discrimination, work and residential property disputes",
                                linkToWeb: "https://www.gov.uk/browse/justice/your-rights-legal-support"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Courts, tribunals and appeals",
                                desc: "Includes going to court, paying fines, appealing a sentence, jury service and tribunals",
                                linkToWeb: "https://www.gov.uk/browse/justice/courts-sentencing-tribunals"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Reporting crimes",
                                desc: "Includes antisocial behaviour, abuse, benefit fraud and terrorism",
                                linkToWeb: "https://www.gov.uk/browse/justice/reporting-crimes"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Compensation and victim support",
                                desc: "Includes criminal injuries compensation and other victim support",
                                linkToWeb: "https://www.gov.uk/browse/justice/compensation-victim-support"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Penalties, sentences and police",
                                desc: "Includes being charged with a crime, cautions, community sentences and police powers",
                                linkToWeb: "https://www.gov.uk/browse/justice/penalties-sentences-police"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Prisons and probation",
                                desc: "Sentencing, probation and support for families of prisoners",
                                linkToWeb: "https://www.gov.uk/browse/justice/prisons-probation"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Young people and the law",
                                desc: "Includes legal rights, youth offending teams and crime prevention",
                                linkToWeb: "https://www.gov.uk/browse/justice/young-people"))
        
        return data
    }
    
    static func disabledCareData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        data.append(TopicsModel(id: UUID(),
                                title: "Benefits and financial help",
                                desc: "Includes Disability Living Allowance, Employment and Support Allowance and Attendance Allowance",
                                linkToWeb: "https://www.gov.uk/browse/disabilities/benefits"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Carers",
                                desc: "Includes Carer's Allowance, disabled children and disability day care centres",
                                linkToWeb: "https://www.gov.uk/browse/disabilities/carers"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Disability equipment and transport",
                                desc: "Includes Disabled Students Allowances, Blue Badge and disabled access",
                                linkToWeb: "https://www.gov.uk/browse/disabilities/equipment"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Disability rights and the Equality Act 2010",
                                desc: "Discrimination and disability rights under the Equality Act 2010",
                                linkToWeb: "https://www.gov.uk/browse/disabilities/rights"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Work and disabled people",
                                desc: "Includes recruitment and disabled people, reasonable adjustments at work and Access to Work",
                                linkToWeb: "https://www.gov.uk/browse/disabilities/work"))
        
        return data
    }
    
    static func drivingAndTransportData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        data.append(TopicsModel(id: UUID(),
                                title: "Clean air zones, emissions and electric vehicles",
                                desc: "Congestion charges, vehicle emissions, ebikes and electric cars",
                                linkToWeb: "https://www.gov.uk/browse/driving/clean-air-zones-emissions-electric-vehicles"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Driving licences",
                                desc: "Apply for, renew or update your licence, view or share your driving licence, add new categories",
                                linkToWeb: "https://www.gov.uk/browse/driving/driving-licences"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Vehicle tax, MOT and insurance",
                                desc: "Pay or cancel vehicle tax, register your vehicle off road, book or check an MOT, insurance",
                                linkToWeb: "https://www.gov.uk/browse/driving/vehicle-tax-mot-insurance"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Driving tests and learning to drive or ride",
                                desc: "Find driving lessons, book and manage theory and driving tests, tests for different vehicles",
                                linkToWeb: "https://www.gov.uk/browse/driving/learning-to-drive"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Number plates, vehicle registration and log books",
                                desc: "Update details in your (V5C) log book, get a personalised number plate or trade licence plate",
                                linkToWeb: "https://www.gov.uk/browse/driving/number-plate"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Buy, sell or scrap a vehicle",
                                desc: "Buy or sell a vehicle, check a used vehicle, written off vehicles, scrapping a vehicle",
                                linkToWeb: "https://www.gov.uk/browse/driving/buy-sell-scrap-vehicle"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Driving with medical conditions, Blue Badges and transport for disabled people",
                                desc: "Check and report your medical condition, get a Blue Badge, mobility scooters and bus passes",
                                linkToWeb: "https://www.gov.uk/browse/driving/disability-health-condition"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "The Highway Code, road safety and vehicle rules",
                                desc: "Rules for motorists, cyclists and pedestrians and road safety",
                                linkToWeb: "https://www.gov.uk/browse/driving/highway-code-road-safety"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Vehicle and driver data and information",
                                desc: "Get vehicle information, check MOT history, check driving licence history",
                                linkToWeb: "https://www.gov.uk/browse/driving/vehicle-and-driver-information"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Penalty points, fines and driving bans",
                                desc: "Penalties and fines, speeding, drink-driving, parking fines, appeals",
                                linkToWeb: "https://www.gov.uk/browse/driving/penalty-points-fines-bans"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Driving in the UK and abroad",
                                desc: "Using a foreign licence in the UK, driving abroad, toll roads and DART charge, bringing a vehicle to the UK",
                                linkToWeb: "https://www.gov.uk/browse/driving/driving-uk-and-abroad"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "HGV, bus and coach drivers",
                                desc: "Become a HGV or bus driver, find training, drivers' hours rules, specialist tests",
                                linkToWeb: "https://www.gov.uk/browse/driving/drivers-lorries-buses"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Transport and driving businesses",
                                desc: "Vehicle operators and licences, managing vehicles and employing drivers",
                                linkToWeb: "https://www.gov.uk/browse/driving/businesses"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Teaching people to drive",
                                desc: "Become an instructor, book and manage tests, manage your ADI registration",
                                linkToWeb: "https://www.gov.uk/browse/driving/teaching-people-to-drive"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Reporting vehicle and driving offences",
                                desc: "Reporting untaxed or abandoned vehicles and other crimes",
                                linkToWeb: "https://www.gov.uk/browse/driving/driving-enforcing-the-law"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Parking and public transport",
                                desc: "Public transport and bus passes, parking and blue badges",
                                linkToWeb: "https://www.gov.uk/browse/driving/parking-public-transport-environment"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Build or adapt a vehicle",
                                desc: "Vehicle approval, registering a vehicle, manufacturing regulations",
                                linkToWeb: "https://www.gov.uk/browse/driving/manufacture-adapt-vehicle"))
        
        return data
    }
    
    static func educationAndLearningData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "Apprenticeships, 14 to 19 education and training for work",
                                desc: "Includes finding a course, finding an apprenticeship, information for employers",
                                linkToWeb: "https://www.gov.uk/browse/education/find-course"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "School admissions and transport to school",
                                desc: "Applying for a school place, home schooling and travel costs",
                                linkToWeb: "https://www.gov.uk/browse/education/school-admissions-transport"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Schools and curriculum",
                                desc: "Help with school costs, the curriculum and school attendance",
                                linkToWeb: "https://www.gov.uk/browse/education/school-life"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Student finance",
                                desc: "Including loans, bursaries, grants, student finance and paying back loans",
                                linkToWeb: "https://www.gov.uk/browse/education/student-finance"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Universities and higher education",
                                desc: "Finding courses, comparing qualifications and checking a university is recognised",
                                linkToWeb: "https://www.gov.uk/browse/education/universities-higher-education"))
        
        return data
    }
    
    static func employingPeopleData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "Contracts of employment and working hours",
                                desc: "Includes types of worker, employee rights, overtime and changes to contracts",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/contracts"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Dismissing staff and redundancies",
                                desc: "Resignations, dismissals, disciplinaries and redundancy pay",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/dismissals-redundancies"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Health and safety at work",
                                desc: "Accidents, health and safety law and workplace conditions",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/health-safety"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Payroll",
                                desc: "PAYE for employers, getting started, reporting and paying HMRC, expenses and benefits",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/payroll"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Pensions for your staff",
                                desc: "Includes workplace pensions and Combined Pension Statements",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/pensions"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Recruiting and hiring",
                                desc: "Advertise a job, Disclosure and Barring (DBS) checks, right to work checks, discrimination law and apprenticeships",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/recruiting-hiring"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Statutory leave and time off",
                                desc: "Includes maternity and paternity leave, holiday entitlement and sick pay",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/time-off"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Trade unions and workers rights",
                                desc: "Includes industrial action and recognising trade unions",
                                linkToWeb: "https://www.gov.uk/browse/employing-people/trade-unions"))
        
        return data
    }
    
    static func environmentData() -> [TopicsModel] {
        var data = [TopicsModel]()
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "Boats and waterways",
                                desc: "Boat registration, boat safety and river levels",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/boats-waterways"))

        
        data.append(TopicsModel(id: UUID(),
                                title: "Coasts",
                                desc: "Coastal erosion, flood defences, bathing water quality",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/coasts"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Countryside",
                                desc: "Countryside Code, access to the countryside, landscape",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/countryside"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Farming and land management",
                                desc: "Agriculture, rural payments, imports and exports, workers’ rights, regulations",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/farming-land-management"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Fishing and hunting",
                                desc: "Fishing rod licences, permission and byelaws, lawful hunting",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/fishing-hunting"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Flooding",
                                desc: "Check flood warnings, how to prepare for flooding, and what to do before, during and after flooding",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/flooding-extreme-weather"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Treasure and wrecks",
                                desc: "Report wreck material and treasure finds",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/treasure-wrecks"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Waste management",
                                desc: "Your responsibilities, hazardous waste and report an environmental incident",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/recycling-waste-management"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Wildlife and biodiversity",
                                desc: "Protected species, report a sighting",
                                linkToWeb: "https://www.gov.uk/browse/environment-countryside/wildlife-biodiversity"))
        
        return data
        
    }
    
    
    static func housingAndLocalData() -> [TopicsModel] {
        var data = [TopicsModel]()
        
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "Council housing and housing associations",
                                desc: "Includes Right to Buy, shared ownership, getting repairs and housing benefit",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/council-housing-association#:~:text=Council%20housing%20and%20housing%20associations"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Renting a property",
                                desc: "Includes proving your right to rent with a share code or documents, tenancy agreements and deposits",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/renting-property#:~:text=and%20local%20services-,Renting%20a%20property,-Includes%20proving%20your"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Buying and owning a property",
                                desc: "Includes buying and selling your home, home ownership schemes, mortgages and compensation",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/buying-owning-property#:~:text=Buying%20and%20owning%20a%20property"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Council Tax",
                                desc: "Includes council tax appeals, bands, discounts and reductions",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/council-tax#:~:text=and%20local%20services-,Council%20Tax,-Includes%20council%20tax"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Being a landlord and renting out a room",
                                desc: "Includes right to rent checks, evicting tenants, tenancy agreements and deposit protection schemes",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/landlords#:~:text=Being%20a%20landlord%20and%20renting%20out%20a%20room"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Local councils and services",
                                desc: "Find and access local services",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/local-councils#:~:text=Local%20councils%20and%20services"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Household energy",
                                desc: "Includes energy support, grants, energy performance certificates (EPCs), energy saving and renewable energy for your home",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/household-energy#:~:text=and%20local%20services-,Household%20energy,-Includes%20energy%20support"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Planning permission and building regulations",
                                desc: "Includes building regulations, planning permission and finding land and property information",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/planning-permission-regulations-information#:~:text=Planning%20permission%20and%20building%20regulations"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Repossessions, homelessness, emergency housing and evictions",
                                desc: "Includes help with homelessness, evictions and squatting",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/repossessions-evictions#:~:text=Repossessions%2C%20homelessness%2C%20emergency%20housing%20and%20evictions"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Recycling and rubbish",
                                desc: "Includes collecting large waste items, garden waste and reporting problems",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/recycling-rubbish#:~:text=Recycling%20and%20rubbish"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Noise, neighbours, pets and pests",
                                desc: "Includes neighbour disputes, reporting noise nuisance, pest control and looking after pets",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/noise-neighbours#:~:text=Noise%2C%20neighbours%2C%20pets%20and%20pests"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Streets, roads, pavements and buildings",
                                desc: "Includes street cleaning, traffic lights and reporting problems",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/streets-roads-pavements-buildings#:~:text=Streets%2C%20roads%2C%20pavements%20and%20buildings"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Safety and the environment in your community",
                                desc: "Includes smoke control areas, road safety and crime prevention",
                                linkToWeb: "https://www.gov.uk/browse/housing-local-services/safety-environment#:~:text=Safety%20and%20the%20environment%20in%20your%20community"))
        
        return data
        
    }
    
    static func moneyAndTaxData() -> [TopicsModel] {
        var data = [TopicsModel]()
        
        
        // Add the new topics to the 'data' array
        data.append(TopicsModel(id: UUID(),
                                title: "Capital Gains Tax",
                                desc: "Tax when you sell property, shares, personal possessions and business assets",
                                linkToWeb: "https://www.gov.uk/browse/tax/capital-gains#:~:text=Money%20and%20tax-,Capital%20Gains%20Tax,-Tax%20when%20you"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Court claims, debt and bankruptcy",
                                desc: "Includes recovering debts, registering for bankruptcy and as a creditor",
                                linkToWeb: "https://www.gov.uk/browse/tax/court-claims-debt-bankruptcy#:~:text=Court%20claims%2C%20debt%20and%20bankruptcy"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Dealing with HMRC",
                                desc: "Reporting changes, agents, appeals, checks, complaints and help with tax",
                                linkToWeb: "https://www.gov.uk/browse/tax/dealing-with-hmrc#:~:text=Money%20and%20tax-,Dealing%20with%20HMRC,-Reporting%20changes%2C%20agents"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Income Tax",
                                desc: "Includes rates and allowances, tax codes and refunds",
                                linkToWeb: "https://www.gov.uk/browse/tax/income-tax#:~:text=Money%20and%20tax-,Income%20Tax,-Includes%20rates%20and"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Inheritance Tax",
                                desc: "Includes valuing an estate, trusts and taxes",
                                linkToWeb: "https://www.gov.uk/browse/tax/inheritance-tax#:~:text=Money%20and%20tax-,Inheritance%20Tax,-Includes%20valuing%20an"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "National Insurance",
                                desc: "Voluntary contributions and credits, numbers, rates and classes",
                                linkToWeb: "https://www.gov.uk/browse/tax/national-insurance#:~:text=Money%20and%20tax-,National%20Insurance,-Voluntary%20contributions%20and"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Self Assessment",
                                desc: "Includes filing, deadlines, pay and tax records",
                                linkToWeb: "https://www.gov.uk/browse/tax/self-assessment#:~:text=Money%20and%20tax-,Self%20Assessment,-Includes%20filing%2C%20deadlines"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "VAT",
                                desc: "Includes online returns, rates, charging and record keeping",
                                linkToWeb: "https://www.gov.uk/browse/tax/vat#:~:text=Money%20and%20tax-,VAT,-Includes%20online%20returns"))
        
        return data
        
    }
    
    static func passportAndTravellingData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        
        data.append(TopicsModel(id: UUID(),
                                title: "Living abroad",
                                desc: "Includes tax, State Pension, benefits and UK government services abroad",
                                linkToWeb: "https://www.gov.uk/browse/abroad/living-abroad#:~:text=and%20living%20abroad-,Living%20abroad,-Includes%20tax%2C%20State"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Passports",
                                desc: "Eligibility, fees, applying, renewing and updating",
                                linkToWeb: "https://www.gov.uk/browse/abroad/passports#:~:text=and%20living%20abroad-,Passports,-Eligibility%2C%20fees%2C%20applying"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Travel abroad",
                                desc: "Includes the latest travel advice by country, your rights at the airport and getting help abroad",
                                linkToWeb: "https://www.gov.uk/browse/abroad/travel-abroad#:~:text=and%20living%20abroad-,Travel%20abroad,-Includes%20the%20latest"))
        
        return data
    }
    
    static func visasAndImmigrationData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        
        data.append(TopicsModel(id: UUID(),
                                title: "Check if you need a UK visa",
                                desc: "Check if you need a UK visa, how to apply, sign in, manage your application, biometric residence permits (BRPs), share codes",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/what-you-need-to-do#:~:text=Visas%20and%20immigration-,What%20you%20need%20to%20do,-Check%20if%20you"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Visit the UK",
                                desc: "Visit for tourism, business or a short stay (up to 6 months), airport transit visas",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/tourist-short-stay-visas#:~:text=Visas%20and%20immigration-,Visit%20the%20UK,-Visit%20for%20tourism"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Work in the UK",
                                desc: "Skilled Worker visa, Graduate visa, other work visas, right to work",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/work-visas#:~:text=Visas%20and%20immigration-,Work%20in%20the%20UK,-Skilled%20Worker%20visa"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Study in the UK",
                                desc: "Student visas for courses, degrees and independent schools",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/student-visas#:~:text=Visas%20and%20immigration-,Study%20in%20the%20UK,-Student%20visas%20for"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Family in the UK",
                                desc: "Partner, spouse, dependant and family member visas and permits",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/family-visas#:~:text=Visas%20and%20immigration-,Family%20in%20the%20UK,-Partner%2C%20spouse%2C%20dependant"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "EU, EEA and Swiss citizens",
                                desc: "Settled and pre-settled status, EU Settlement Scheme family permit, Frontier Worker permit",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/eu-eea-swiss#:~:text=EU%2C%20EEA%20and%20Swiss%20citizens"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Ukrainians and their families",
                                desc: "Find the right visa, Ukraine Family Scheme visa, Ukraine Sponsorship Scheme visa, Homes for Ukraine",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/ukrainian-nationals#:~:text=Ukrainians%20and%20their%20families"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Commonwealth citizens and British nationals (overseas)",
                                desc: "BNO visa, right of abode, UK Ancestry visa",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/commonwealth-british-nationals-overseas#:~:text=Commonwealth%20citizens%20and%20British%20nationals%20(overseas)"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Live permanently in the UK",
                                desc: "Ways to settle in the UK, indefinite leave to remain (ILR) and routes to British citizenship",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/settle-in-the-uk#:~:text=Live%20permanently%20in%20the%20UK"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Seek protection or asylum",
                                desc: "Claiming asylum as a refugee, the asylum process and support",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/asylum#:~:text=Seek%20protection%20or%20asylum"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Immigration appeals and status problems",
                                desc: "Appeal against a visa, settlement or asylum decision, immigration status problems",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/immigration-appeals#:~:text=Immigration%20appeals%20and%20status%20problems"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Travelling to the UK",
                                desc: "Moving your belongings, going through customs and tax",
                                linkToWeb: "https://www.gov.uk/browse/visas-immigration/arriving-in-the-uk#:~:text=Travelling%20to%20the%20UK"))
        
        return data
    }
    
    static func jobsAndPensionsData() -> [TopicsModel]{
        var data = [TopicsModel]()
        
        
        data.append(TopicsModel(id: UUID(),
                                title: "Armed forces",
                                desc: "Includes reserve forces and armed forces pensions, benefits and financial assistance.",
                                linkToWeb: "https://www.gov.uk/browse/working/armed-forces#:~:text=jobs%20and%20pensions-,Armed%20forces,-Includes%20reserve%20forces"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Finding a job",
                                desc: "Job search, Jobseeker's Allowance (JSA), job offers, right to work share codes, apprenticeships and volunteering",
                                linkToWeb: "https://www.gov.uk/browse/working/finding-job#:~:text=jobs%20and%20pensions-,Finding%20a%20job,-Job%20search%2C%20Jobseeker%27s"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Holidays, time off, sick leave, maternity and paternity leave",
                                desc: "Includes career breaks and the holiday entitlement calculator",
                                linkToWeb: "https://www.gov.uk/browse/working/time-off#:~:text=Holidays%2C%20time%20off%2C%20sick%20leave%2C%20maternity%20and%20paternity%20leave"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Redundancies, dismissals and disciplinaries",
                                desc: "Includes solving a workplace dispute, calculating redundancy pay and dismissal",
                                linkToWeb: "https://www.gov.uk/browse/working/redundancies-dismissals#:~:text=Redundancies%2C%20dismissals%20and%20disciplinaries"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "State Pension",
                                desc: "Calculating State Pension, Pension Credit, eligibility, claiming and deferring",
                                linkToWeb: "https://www.gov.uk/browse/working/state-pension#:~:text=jobs%20and%20pensions-,State%20Pension,-Calculating%20State%20Pension"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Workplace and personal pensions",
                                desc: "Includes automatic enrolment, lost pensions and planning for retirement",
                                linkToWeb: "https://www.gov.uk/browse/working/workplace-personal-pensions#:~:text=Workplace%20and%20personal%20pensions"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Your contract and working hours",
                                desc: "Includes employment status, workers' rights and changes to contracts",
                                linkToWeb: "https://www.gov.uk/browse/working/contract-working-hours#:~:text=Your%20contract%20and%20working%20hours"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Your pay, tax and the National Minimum Wage",
                                desc: "Includes National Minimum Wage rates, keeping pay records and pay rights",
                                linkToWeb: "https://www.gov.uk/browse/working/tax-minimum-wage#:~:text=Your%20pay%2C%20tax%20and%20the%20National%20Minimum%20Wage"))
        
        data.append(TopicsModel(id: UUID(),
                                title: "Your rights at work and trade unions",
                                desc: "Includes health and safety, accidents at work and joining a trade union",
                                linkToWeb: "https://www.gov.uk/browse/working/rights-trade-unions#:~:text=Your%20rights%20at%20work%20and%20trade%20unions"))
        
        return data
    }
    
//    var filteredExploreData: [TopicsModel] {
//        if searchText.isEmpty {
//            return [self]
//        } else {
//            return [self].filter { $0.title.localizedCaseInsensitiveContains(searchText) }
//        }
//    }
}


//class DetailViewModel: ObservableObject {
//    @Published var searchText: String = ""
//    @Published var exploreData: [TopicsModel] = TopicsModel.examples()
//  //  @Published var contentData: [ContentModel] = ContentModel.featuredData() + ContentModel.servicesData()
//
//    var filteredExploreData: [TopicsModel] {
//        if searchText.isEmpty {
//            return exploreData
//        } else {
//            return exploreData.filter { $0.title.localizedCaseInsensitiveContains(searchText) }
//        }
//    }
//
//}
