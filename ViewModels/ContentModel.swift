//
//  ContentModel.swift
//  LearningApp (iOS)
//
//  Created by Aditi Singh  Karnawat on 2021-05-03.
//

import Foundation

class ContentModel: ObservableObject {
    
    @Published var modules = [Module]()
    
    var styleData: Data?
    
    init(){
        
        getLocalData()
    }
    
    func getLocalData(){
        
        //Get a url to the json file
        let jsonUrl = Bundle.main.url(forResource: "data", withExtension: "json")
        
        do{
        // Read the file into a data object
        let jsonData = try Data(contentsOf: jsonUrl!)
            
            // Try to decode the json into an array of modules
            let jsonDecoder = JSONDecoder()
            let modules = try jsonDecoder.decode([Module].self, from: jsonData)
            
            //Assign parsed modules to modules property
            self.modules = modules
    }
    catch {
    //TODO log error
        print("Coultn't parse local data")
    }
        
        let styleUrl = Bundle.main.url(forResource: "style", withExtension: "html")
        do{
            //Read the file into a data
            let styleData = try Data(contentsOf: styleUrl!)
            self.styleData = styleData
            
            //
        }
        catch{
            //Log error
            print("Couldn't parse style data")
        }
}
}
