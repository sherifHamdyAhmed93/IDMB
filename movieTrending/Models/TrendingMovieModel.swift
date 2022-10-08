//
//  BaseClass.swift
//
//  Created by Sherif Hamdy on 19/09/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct TrendingMovieModel: Codable {

  enum CodingKeys: String, CodingKey {
    case page
    case totalResults = "total_results"
    case results
    case totalPages = "total_pages"
  }

  var page: Int?
  var totalResults: Int?
  var results: [Movie]?
  var totalPages: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    page = try container.decodeIfPresent(Int.self, forKey: .page)
    totalResults = try container.decodeIfPresent(Int.self, forKey: .totalResults)
    results = try container.decodeIfPresent([Movie].self, forKey: .results)
    totalPages = try container.decodeIfPresent(Int.self, forKey: .totalPages)
  }

}
