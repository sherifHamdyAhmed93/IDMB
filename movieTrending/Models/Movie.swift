//
//  Results.swift
//
//  Created by Sherif Hamdy on 19/09/2022
//  Copyright (c) . All rights reserved.
//

import Foundation

struct Movie: Codable {

  enum CodingKeys: String, CodingKey {
    case voteAverage = "vote_average"
    case backdropPath = "backdrop_path"
    case releaseDate = "release_date"
    case originalLanguage = "original_language"
    case originalName = "original_name"
    case genreIds = "genre_ids"
    case adult
    case originCountry = "origin_country"
    case id
    case video
    case overview
    case popularity
    case mediaType = "media_type"
    case originalTitle = "original_title"
    case posterPath = "poster_path"
    case title
    case name
    case firstAirDate = "first_air_date"
    case voteCount = "vote_count"
  }

  var voteAverage: Float?
  var backdropPath: String?
  var releaseDate: String?
  var originalLanguage: String?
  var originalName: String?
  var genreIds: [Int]?
  var adult: Bool?
  var originCountry: [String]?
  var id: Int?
  var video: Bool?
  var overview: String?
  var popularity: Float?
  var mediaType: String?
  var originalTitle: String?
  var posterPath: String?
  var title: String?
  var name: String?
  var firstAirDate: String?
  var voteCount: Int?



  init(from decoder: Decoder) throws {
    let container = try decoder.container(keyedBy: CodingKeys.self)
    voteAverage = try container.decodeIfPresent(Float.self, forKey: .voteAverage)
    backdropPath = try container.decodeIfPresent(String.self, forKey: .backdropPath)
    releaseDate = try container.decodeIfPresent(String.self, forKey: .releaseDate)
    originalLanguage = try container.decodeIfPresent(String.self, forKey: .originalLanguage)
    originalName = try container.decodeIfPresent(String.self, forKey: .originalName)
    genreIds = try container.decodeIfPresent([Int].self, forKey: .genreIds)
    adult = try container.decodeIfPresent(Bool.self, forKey: .adult)
    originCountry = try container.decodeIfPresent([String].self, forKey: .originCountry)
    id = try container.decodeIfPresent(Int.self, forKey: .id)
    video = try container.decodeIfPresent(Bool.self, forKey: .video)
    overview = try container.decodeIfPresent(String.self, forKey: .overview)
    popularity = try container.decodeIfPresent(Float.self, forKey: .popularity)
    mediaType = try container.decodeIfPresent(String.self, forKey: .mediaType)
    originalTitle = try container.decodeIfPresent(String.self, forKey: .originalTitle)
    posterPath = try container.decodeIfPresent(String.self, forKey: .posterPath)
    title = try container.decodeIfPresent(String.self, forKey: .title)
    name = try container.decodeIfPresent(String.self, forKey: .name)
    firstAirDate = try container.decodeIfPresent(String.self, forKey: .firstAirDate)
    voteCount = try container.decodeIfPresent(Int.self, forKey: .voteCount)
  }

}
