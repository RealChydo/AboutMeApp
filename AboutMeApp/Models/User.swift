//
//  User.swift
//  AboutMeApp
//
//  Created by Геник Мурадян on 09.08.2023.
//

struct User {
    let userName: String
    let login: String
    let password: String
    let person: Person
    
    static func getUser() -> User {
        User(
            userName: "Alexey",
            login: "qwerty",
            password: "1234",
            person: Person.getPerson()
            )
    }
}


struct Person {
    let name: String
    let surname: String
    let bio: String
    let job: Job
    
    var fullName: String {
        "\(name) \(surname)"
    }
    
    static func getPerson() -> Person {
        Person(
            name: "Genik",
            surname: "Muradian",
            bio: """
            Геник Мурадян родился в 1995 году в городе Сыктывкар, республика Коми. Мать будущего инженера была бухгалтером, а отец - предпринимателем. Геник мало рассказывал о своей жизни. Известна история о том, как он спокойно обедал в фастфуде, к нему подошёл незнакомец и бесцеремонно взял пару ломтиков картофеля фри и сказал Генику: "Тебе всё равно никто не поверит." - этим человеком был Альберт Энштейн.
            """,
            job: Job.getJob()
        )
    }
}

struct Job {
    let companyName: String
    let department: String
    let position: String
    
    static func getJob() -> Job {
        Job(
            companyName: "MegaFon",
            department: "Technical Support",
            position: "Lead Engineer"
        )
    }
    
}
