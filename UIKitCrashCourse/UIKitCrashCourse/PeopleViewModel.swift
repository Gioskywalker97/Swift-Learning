//
//  PeopleViewModel.swift
//  UIKitCrashCourse
//
//  Created by Giovanni Salas on 1/29/24.
//

import Foundation

class PeopleViewModel {
    
    private var people = [PersonResponse]()
    
    func getUsers() {
        
        Task { [weak self] in
            do {
                let url = URL(string: "https://regres")!
                let(data, _) = try await URLSession.shared.data(from: url)
                
                let jsonDecoder = JSONDecoder()
                jsonDecoder.keyDecodingStrategy = .convertFromSnakeCase
                
                self?.people = try jsonDecoder.decode(UsersResponse.self, from: data).data
                
            } catch {
                print(error)
            }
        }
    }
}
