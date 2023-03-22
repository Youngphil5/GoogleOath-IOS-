//
//  AppDelegate.swift
//  SignInGod
//
//  Created by Olisemedua Onwuatogwu on 3/20/23.
//

import UIKit
import ParseSwift

@main
class AppDelegate: UIResponder, UIApplicationDelegate {



    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        //Configure parse swift connection here
        ParseSwift.initialize(applicationId: "wdWuYqiQ4aJplZT7LposcPfgSE954iDGZc4Wemgo",
                              clientKey: "es3xQgo1frfvFeKI64yt8BQM9Mscuk2NiWCFEazG",
                              serverURL: URL(string: "https://parseapi.back4app.com")!)
        
        //test that parse works
//        var score = GameScore()
//        score.playerName = "Kingsley"
//        score.points = 13
//
//        score.save { result in
//                    switch result {
//                    case .success(let savedScore):
//                        print("✅ Parse Object SAVED!: Player: \(String(describing: savedScore.playerName)), Score: \(String(describing: savedScore.points))")
//                    case .failure(let error):
//                        assertionFailure("Error saving: \(error)")
//                    }
//                }
        return true
    }

    // MARK: UISceneSession Lifecycle

    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }
    
    
    }

struct GameScore: ParseObject {
    // These are required by ParseObject
    var objectId: String?
    var createdAt: Date?
    var updatedAt: Date?
    var ACL: ParseACL?
    var originalData: Data?

    // Your own custom properties.
    // All custom properties must be optional.
    var playerName: String?
    var points: Int?
}

extension GameScore {

    // Use the init to set your custom properties
    // NOTE: Properties in custom init are NOT required to be optional
    init(playerName: String, points: Int) {
        self.playerName = playerName
        self.points = points
    }
}



