import UIKit

struct Person: Decodable {
    let name: String /*-- The name of this person.*/
    let birth_year: String /*-- The birth year of the person, using the in-universe standard of BBY or ABY - Before the Battle of Yavin or After the Battle of Yavin. The Battle of Yavin is a battle that occurs at the end of Star Wars episode IV: A New Hope.*/
    let eye_color: String /*-- The eye color of this person. Will be "unknown" if not known or "n/a" if the person does not have an eye.*/
    let gender: String /*-- The gender of this person. Either "Male", "Female" or "unknown", "n/a" if the person does not have a gender.*/
    let hair_color: String /*-- The hair color of this person. Will be "unknown" if not known or "n/a" if the person does not have hair.*/
    let height: String /*-- The height of the person in centimeters.*/
    let mass: String /*-- The mass of the person in kilograms.*/
    let skin_color: String /*-- The skin color of this person.*/
    let homeworld: String /*-- The URL of a planet resource, a planet that this person was born on or inhabits.*/
    let films: String /*-- An array of film resource URLs that this person has been in.*/
    let species: String /*-- An array of species resource URLs that this person belongs to.*/
    let starships: String /*-- An array of starship resource URLs that this person has piloted.*/
    let vehicles: String /*-- An array of vehicle resource URLs that this person has piloted.*/
    let url: String /*-- the hypermedia URL of this resource.*/
    let created: String /*-- the ISO 8601 date format of the time that this resource was created.*/
    let edited: String /*-- the ISO 8601 date format of the time that this resource was edited.*/

}

let url = URL(string: "https://swapi.dev/api/people/1/")!

var request = URLRequest(url: url)

request.setValue(
    "application/json",
    forHTTPHeaderField: "Content-Type"
)

let task = URLSession.shared.dataTask(with: request) { data, response, error in
    if let data = data {
        if let person = try? JSONDecoder().decode([Person].self, from: data) {
            print(person)
        } else {
            print("Invalid Response")
        }
    } else if let error = error {
        print("HTTP Request Failed \(error)")
    }
}

task.resume()

//let task = URLSession.shared.dataTask(with: url) { data, response, error in
//    if let data = data {
//        let image = UIImage(data: data)
//    } else if let error = error {
//        print("HTTP Request Failed \(error)")
//    }
//}
//
//task.resume()
