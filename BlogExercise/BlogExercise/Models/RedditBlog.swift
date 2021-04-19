//
//  ReditBlog.swift
//  BlogExercise
//
//  Created by Aleksandar Janakievski on 4/18/21.
//
// This file was generated from JSON Schema using quicktype, do not modify it directly.
// To parse the JSON, add this file to your project and do:
//
//   let reditBlog = try? newJSONDecoder().decode(ReditBlog.self, from: jsonData)

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseReditBlog { response in
//     if let reditBlog = response.result.value {
//       ...
//     }
//   }

import Foundation
import Alamofire

// MARK: - ReditBlog
class RedditBlog: Codable {
    let kind: String?
    let data: RedditBlogData?

    init(kind: String?, data: RedditBlogData?) {
        self.kind = kind
        self.data = data
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseReditBlogData { response in
//     if let reditBlogData = response.result.value {
//       ...
//     }
//   }

// MARK: - ReditBlogData
class RedditBlogData: Codable {
    let modhash: String?
    let dist: Int?
    let children: [Child]?
    let after: String?
    let before: JSONNull?

    init(modhash: String?, dist: Int?, children: [Child]?, after: String?, before: JSONNull?) {
        self.modhash = modhash
        self.dist = dist
        self.children = children
        self.after = after
        self.before = before
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseChild { response in
//     if let child = response.result.value {
//       ...
//     }
//   }

// MARK: - Child
class Child: Codable {
    let kind: Kind?
    let data: ChildData?

    init(kind: Kind?, data: ChildData?) {
        self.kind = kind
        self.data = data
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseChildData { response in
//     if let childData = response.result.value {
//       ...
//     }
//   }

// MARK: - ChildData
class ChildData: Codable {
    let approvedAtUTC: JSONNull?
    let subreddit: Subreddit?
    let selftext, authorFullname: String?
    let saved: Bool?
    let modReasonTitle: JSONNull?
    let gilded: Int?
    let clicked: Bool?
    let title: String?
    let linkFlairRichtext: [FlairRichtext]?
    let subredditNamePrefixed: SubredditNamePrefixed?
    let hidden: Bool?
    let pwls: Int?
    let linkFlairCSSClass: String?
    let downs: Int?
    let thumbnailHeight: Int?
    let topAwardedType: JSONNull?
    let hideScore: Bool?
    let name: String?
    let quarantine: Bool?
    let linkFlairTextColor: LinkFlairTextColor?
    let upvoteRatio: Double?
    let authorFlairBackgroundColor: String?
    let subredditType: SubredditType?
    let ups, totalAwardsReceived: Int?
    let mediaEmbed: MediaEmbed?
    let thumbnailWidth: Int?
    let authorFlairTemplateID: JSONNull?
    let isOriginalContent: Bool?
    let userReports: [JSONAny]?
    let secureMedia: Media?
    let isRedditMediaDomain, isMeta: Bool?
    let category: JSONNull?
    let secureMediaEmbed: MediaEmbed?
    let linkFlairText: String?
    let canModPost: Bool?
    let score: Int?
    let approvedBy: JSONNull?
    let authorPremium: Bool?
    let thumbnail: String?
    let edited: Edited?
    let authorFlairCSSClass: JSONNull?
    let authorFlairRichtext: [FlairRichtext]?
    let gildings: Gildings?
    let postHint: PostHint?
    let contentCategories: JSONNull?
    let isSelf: Bool?
    let modNote: JSONNull?
    let created: Int?
    let linkFlairType: AuthorFlairType?
    let wls: Int?
    let removedByCategory, bannedBy: JSONNull?
    let authorFlairType: AuthorFlairType?
    let domain: String?
    let allowLiveComments: Bool?
    let selftextHTML: String?
    let likes: JSONNull?
    let suggestedSort: SuggestedSort?
    let bannedAtUTC: JSONNull?
    let urlOverriddenByDest: String?
    let viewCount: JSONNull?
    let archived, noFollow, isCrosspostable, pinned: Bool?
    let over18: Bool?
    let preview: Preview?
    let allAwardings: [AllAwarding]?
    let awarders: [JSONAny]?
    let mediaOnly: Bool?
    let linkFlairTemplateID: String?
    let canGild, spoiler, locked: Bool?
    let authorFlairText: String?
    let treatmentTags: [JSONAny]?
    let visited: Bool?
    let removedBy, numReports, distinguished: JSONNull?
    let subredditID: SubredditID?
    let modReasonBy, removalReason: JSONNull?
    let linkFlairBackgroundColor, id: String?
    let isRobotIndexable: Bool?
    let reportReasons: JSONNull?
    let author: String?
    let discussionType: JSONNull?
    let numComments: Int?
    let sendReplies: Bool?
    let whitelistStatus: WhitelistStatus?
    let contestMode: Bool?
    let modReports: [JSONAny]?
    let authorPatreonFlair: Bool?
    let authorFlairTextColor: String?
    let permalink: String?
    let parentWhitelistStatus: WhitelistStatus?
    let stickied: Bool?
    let url: String?
    let subredditSubscribers, createdUTC, numCrossposts: Int?
    let media: Media?
    let isVideo: Bool?
    let mediaMetadata: [String: MediaMetadatum]?
    let authorCakeday, isGallery: Bool?
    let galleryData: GalleryData?

    enum CodingKeys: String, CodingKey {
        case approvedAtUTC
        case subreddit, selftext
        case authorFullname
        case saved
        case modReasonTitle
        case gilded, clicked, title
        case linkFlairRichtext
        case subredditNamePrefixed
        case hidden, pwls
        case linkFlairCSSClass
        case downs
        case thumbnailHeight
        case topAwardedType
        case hideScore
        case name, quarantine
        case linkFlairTextColor
        case upvoteRatio
        case authorFlairBackgroundColor
        case subredditType
        case ups
        case totalAwardsReceived
        case mediaEmbed
        case thumbnailWidth
        case authorFlairTemplateID
        case isOriginalContent
        case userReports
        case secureMedia
        case isRedditMediaDomain
        case isMeta
        case category
        case secureMediaEmbed
        case linkFlairText
        case canModPost
        case score
        case approvedBy
        case authorPremium
        case thumbnail, edited
        case authorFlairCSSClass
        case authorFlairRichtext
        case gildings
        case postHint
        case contentCategories
        case isSelf
        case modNote
        case created
        case linkFlairType
        case wls
        case removedByCategory
        case bannedBy
        case authorFlairType
        case domain
        case allowLiveComments
        case selftextHTML
        case likes
        case suggestedSort
        case bannedAtUTC
        case urlOverriddenByDest
        case viewCount
        case archived
        case noFollow
        case isCrosspostable
        case pinned
        case over18
        case preview
        case allAwardings
        case awarders
        case mediaOnly
        case linkFlairTemplateID
        case canGild
        case spoiler, locked
        case authorFlairText
        case treatmentTags
        case visited
        case removedBy
        case numReports
        case distinguished
        case subredditID
        case modReasonBy
        case removalReason
        case linkFlairBackgroundColor
        case id
        case isRobotIndexable
        case reportReasons
        case author
        case discussionType
        case numComments
        case sendReplies
        case whitelistStatus
        case contestMode
        case modReports
        case authorPatreonFlair
        case authorFlairTextColor
        case permalink
        case parentWhitelistStatus
        case stickied, url
        case subredditSubscribers
        case createdUTC
        case numCrossposts
        case media
        case isVideo
        case mediaMetadata
        case authorCakeday
        case isGallery
        case galleryData
    }

    init(approvedAtUTC: JSONNull?, subreddit: Subreddit?, selftext: String?, authorFullname: String?, saved: Bool?, modReasonTitle: JSONNull?, gilded: Int?, clicked: Bool?, title: String?, linkFlairRichtext: [FlairRichtext]?, subredditNamePrefixed: SubredditNamePrefixed?, hidden: Bool?, pwls: Int?, linkFlairCSSClass: String?, downs: Int?, thumbnailHeight: Int?, topAwardedType: JSONNull?, hideScore: Bool?, name: String?, quarantine: Bool?, linkFlairTextColor: LinkFlairTextColor?, upvoteRatio: Double?, authorFlairBackgroundColor: String?, subredditType: SubredditType?, ups: Int?, totalAwardsReceived: Int?, mediaEmbed: MediaEmbed?, thumbnailWidth: Int?, authorFlairTemplateID: JSONNull?, isOriginalContent: Bool?, userReports: [JSONAny]?, secureMedia: Media?, isRedditMediaDomain: Bool?, isMeta: Bool?, category: JSONNull?, secureMediaEmbed: MediaEmbed?, linkFlairText: String?, canModPost: Bool?, score: Int?, approvedBy: JSONNull?, authorPremium: Bool?, thumbnail: String?, edited: Edited?, authorFlairCSSClass: JSONNull?, authorFlairRichtext: [FlairRichtext]?, gildings: Gildings?, postHint: PostHint?, contentCategories: JSONNull?, isSelf: Bool?, modNote: JSONNull?, created: Int?, linkFlairType: AuthorFlairType?, wls: Int?, removedByCategory: JSONNull?, bannedBy: JSONNull?, authorFlairType: AuthorFlairType?, domain: String?, allowLiveComments: Bool?, selftextHTML: String?, likes: JSONNull?, suggestedSort: SuggestedSort?, bannedAtUTC: JSONNull?, urlOverriddenByDest: String?, viewCount: JSONNull?, archived: Bool?, noFollow: Bool?, isCrosspostable: Bool?, pinned: Bool?, over18: Bool?, preview: Preview?, allAwardings: [AllAwarding]?, awarders: [JSONAny]?, mediaOnly: Bool?, linkFlairTemplateID: String?, canGild: Bool?, spoiler: Bool?, locked: Bool?, authorFlairText: String?, treatmentTags: [JSONAny]?, visited: Bool?, removedBy: JSONNull?, numReports: JSONNull?, distinguished: JSONNull?, subredditID: SubredditID?, modReasonBy: JSONNull?, removalReason: JSONNull?, linkFlairBackgroundColor: String?, id: String?, isRobotIndexable: Bool?, reportReasons: JSONNull?, author: String?, discussionType: JSONNull?, numComments: Int?, sendReplies: Bool?, whitelistStatus: WhitelistStatus?, contestMode: Bool?, modReports: [JSONAny]?, authorPatreonFlair: Bool?, authorFlairTextColor: String?, permalink: String?, parentWhitelistStatus: WhitelistStatus?, stickied: Bool?, url: String?, subredditSubscribers: Int?, createdUTC: Int?, numCrossposts: Int?, media: Media?, isVideo: Bool?, mediaMetadata: [String: MediaMetadatum]?, authorCakeday: Bool?, isGallery: Bool?, galleryData: GalleryData?) {
        self.approvedAtUTC = approvedAtUTC
        self.subreddit = subreddit
        self.selftext = selftext
        self.authorFullname = authorFullname
        self.saved = saved
        self.modReasonTitle = modReasonTitle
        self.gilded = gilded
        self.clicked = clicked
        self.title = title
        self.linkFlairRichtext = linkFlairRichtext
        self.subredditNamePrefixed = subredditNamePrefixed
        self.hidden = hidden
        self.pwls = pwls
        self.linkFlairCSSClass = linkFlairCSSClass
        self.downs = downs
        self.thumbnailHeight = thumbnailHeight
        self.topAwardedType = topAwardedType
        self.hideScore = hideScore
        self.name = name
        self.quarantine = quarantine
        self.linkFlairTextColor = linkFlairTextColor
        self.upvoteRatio = upvoteRatio
        self.authorFlairBackgroundColor = authorFlairBackgroundColor
        self.subredditType = subredditType
        self.ups = ups
        self.totalAwardsReceived = totalAwardsReceived
        self.mediaEmbed = mediaEmbed
        self.thumbnailWidth = thumbnailWidth
        self.authorFlairTemplateID = authorFlairTemplateID
        self.isOriginalContent = isOriginalContent
        self.userReports = userReports
        self.secureMedia = secureMedia
        self.isRedditMediaDomain = isRedditMediaDomain
        self.isMeta = isMeta
        self.category = category
        self.secureMediaEmbed = secureMediaEmbed
        self.linkFlairText = linkFlairText
        self.canModPost = canModPost
        self.score = score
        self.approvedBy = approvedBy
        self.authorPremium = authorPremium
        self.thumbnail = thumbnail
        self.edited = edited
        self.authorFlairCSSClass = authorFlairCSSClass
        self.authorFlairRichtext = authorFlairRichtext
        self.gildings = gildings
        self.postHint = postHint
        self.contentCategories = contentCategories
        self.isSelf = isSelf
        self.modNote = modNote
        self.created = created
        self.linkFlairType = linkFlairType
        self.wls = wls
        self.removedByCategory = removedByCategory
        self.bannedBy = bannedBy
        self.authorFlairType = authorFlairType
        self.domain = domain
        self.allowLiveComments = allowLiveComments
        self.selftextHTML = selftextHTML
        self.likes = likes
        self.suggestedSort = suggestedSort
        self.bannedAtUTC = bannedAtUTC
        self.urlOverriddenByDest = urlOverriddenByDest
        self.viewCount = viewCount
        self.archived = archived
        self.noFollow = noFollow
        self.isCrosspostable = isCrosspostable
        self.pinned = pinned
        self.over18 = over18
        self.preview = preview
        self.allAwardings = allAwardings
        self.awarders = awarders
        self.mediaOnly = mediaOnly
        self.linkFlairTemplateID = linkFlairTemplateID
        self.canGild = canGild
        self.spoiler = spoiler
        self.locked = locked
        self.authorFlairText = authorFlairText
        self.treatmentTags = treatmentTags
        self.visited = visited
        self.removedBy = removedBy
        self.numReports = numReports
        self.distinguished = distinguished
        self.subredditID = subredditID
        self.modReasonBy = modReasonBy
        self.removalReason = removalReason
        self.linkFlairBackgroundColor = linkFlairBackgroundColor
        self.id = id
        self.isRobotIndexable = isRobotIndexable
        self.reportReasons = reportReasons
        self.author = author
        self.discussionType = discussionType
        self.numComments = numComments
        self.sendReplies = sendReplies
        self.whitelistStatus = whitelistStatus
        self.contestMode = contestMode
        self.modReports = modReports
        self.authorPatreonFlair = authorPatreonFlair
        self.authorFlairTextColor = authorFlairTextColor
        self.permalink = permalink
        self.parentWhitelistStatus = parentWhitelistStatus
        self.stickied = stickied
        self.url = url
        self.subredditSubscribers = subredditSubscribers
        self.createdUTC = createdUTC
        self.numCrossposts = numCrossposts
        self.media = media
        self.isVideo = isVideo
        self.mediaMetadata = mediaMetadata
        self.authorCakeday = authorCakeday
        self.isGallery = isGallery
        self.galleryData = galleryData
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseAllAwarding { response in
//     if let allAwarding = response.result.value {
//       ...
//     }
//   }

// MARK: - AllAwarding
class AllAwarding: Codable {
    let giverCoinReward: Int?
    let subredditID: SubredditID?
    let isNew: Bool?
    let daysOfDripExtension, coinPrice: Int?
    let id: String?
    let pennyDonate: Int?
    let awardSubType: AwardSubType?
    let coinReward: Int?
    let iconURL: String?
    let daysOfPremium: Int?
    let tiersByRequiredAwardings: [String: TiersByRequiredAwarding]?
    let resizedIcons: [ResizedIcon]?
    let iconWidth, staticIconWidth: Int?
    let startDate: JSONNull?
    let isEnabled: Bool?
    let awardingsRequiredToGrantBenefits: Int?
    let allAwardingDescription: String?
    let endDate: JSONNull?
    let subredditCoinReward, count, staticIconHeight: Int?
    let name: String?
    let resizedStaticIcons: [ResizedIcon]?
    let iconFormat: Format?
    let iconHeight: Int?
    let pennyPrice: Int?
    let awardType: AwardType?
    let staticIconURL: String?

    enum CodingKeys: String, CodingKey {
        case giverCoinReward
        case subredditID
        case isNew
        case daysOfDripExtension
        case coinPrice
        case id
        case pennyDonate
        case awardSubType
        case coinReward
        case iconURL
        case daysOfPremium
        case tiersByRequiredAwardings
        case resizedIcons
        case iconWidth
        case staticIconWidth
        case startDate
        case isEnabled
        case awardingsRequiredToGrantBenefits
        case allAwardingDescription
        case endDate
        case subredditCoinReward
        case count
        case staticIconHeight
        case name
        case resizedStaticIcons
        case iconFormat
        case iconHeight
        case pennyPrice
        case awardType
        case staticIconURL
    }

    init(giverCoinReward: Int?, subredditID: SubredditID?, isNew: Bool?, daysOfDripExtension: Int?, coinPrice: Int?, id: String?, pennyDonate: Int?, awardSubType: AwardSubType?, coinReward: Int?, iconURL: String?, daysOfPremium: Int?, tiersByRequiredAwardings: [String: TiersByRequiredAwarding]?, resizedIcons: [ResizedIcon]?, iconWidth: Int?, staticIconWidth: Int?, startDate: JSONNull?, isEnabled: Bool?, awardingsRequiredToGrantBenefits: Int?, allAwardingDescription: String?, endDate: JSONNull?, subredditCoinReward: Int?, count: Int?, staticIconHeight: Int?, name: String?, resizedStaticIcons: [ResizedIcon]?, iconFormat: Format?, iconHeight: Int?, pennyPrice: Int?, awardType: AwardType?, staticIconURL: String?) {
        self.giverCoinReward = giverCoinReward
        self.subredditID = subredditID
        self.isNew = isNew
        self.daysOfDripExtension = daysOfDripExtension
        self.coinPrice = coinPrice
        self.id = id
        self.pennyDonate = pennyDonate
        self.awardSubType = awardSubType
        self.coinReward = coinReward
        self.iconURL = iconURL
        self.daysOfPremium = daysOfPremium
        self.tiersByRequiredAwardings = tiersByRequiredAwardings
        self.resizedIcons = resizedIcons
        self.iconWidth = iconWidth
        self.staticIconWidth = staticIconWidth
        self.startDate = startDate
        self.isEnabled = isEnabled
        self.awardingsRequiredToGrantBenefits = awardingsRequiredToGrantBenefits
        self.allAwardingDescription = allAwardingDescription
        self.endDate = endDate
        self.subredditCoinReward = subredditCoinReward
        self.count = count
        self.staticIconHeight = staticIconHeight
        self.name = name
        self.resizedStaticIcons = resizedStaticIcons
        self.iconFormat = iconFormat
        self.iconHeight = iconHeight
        self.pennyPrice = pennyPrice
        self.awardType = awardType
        self.staticIconURL = staticIconURL
    }
}

enum AwardSubType: String, Codable {
    case community = "COMMUNITY"
    case global = "GLOBAL"
    case group = "GROUP"
    case premium = "PREMIUM"
}

enum AwardType: String, Codable {
    case community = "community"
    case global = "global"
}

enum Format: String, Codable {
    case apng = "APNG"
    case png = "PNG"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseResizedIcon { response in
//     if let resizedIcon = response.result.value {
//       ...
//     }
//   }

// MARK: - ResizedIcon
class ResizedIcon: Codable {
    let url: String?
    let width, height: Int?
    let format: Format?

    init(url: String?, width: Int?, height: Int?, format: Format?) {
        self.url = url
        self.width = width
        self.height = height
        self.format = format
    }
}

enum SubredditID: String, Codable {
    case t52Th52 = "t5_2th52"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseTiersByRequiredAwarding { response in
//     if let tiersByRequiredAwarding = response.result.value {
//       ...
//     }
//   }

// MARK: - TiersByRequiredAwarding
class TiersByRequiredAwarding: Codable {
    let resizedIcons: [ResizedIcon]?
    let awardingsRequired: Int?
    let staticIcon: ResizedIcon?
    let resizedStaticIcons: [ResizedIcon]?
    let icon: ResizedIcon?

    enum CodingKeys: String, CodingKey {
        case resizedIcons
        case awardingsRequired
        case staticIcon
        case resizedStaticIcons
        case icon
    }

    init(resizedIcons: [ResizedIcon]?, awardingsRequired: Int?, staticIcon: ResizedIcon?, resizedStaticIcons: [ResizedIcon]?, icon: ResizedIcon?) {
        self.resizedIcons = resizedIcons
        self.awardingsRequired = awardingsRequired
        self.staticIcon = staticIcon
        self.resizedStaticIcons = resizedStaticIcons
        self.icon = icon
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseFlairRichtext { response in
//     if let flairRichtext = response.result.value {
//       ...
//     }
//   }

// MARK: - FlairRichtext
class FlairRichtext: Codable {
    let e: AuthorFlairType?
    let t: String?

    init(e: AuthorFlairType?, t: String?) {
        self.e = e
        self.t = t
    }
}

enum AuthorFlairType: String, Codable {
    case richtext = "richtext"
    case text = "text"
}

enum Edited: Codable {
    case bool(Bool)
    case integer(Int)

    init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if let x = try? container.decode(Bool.self) {
            self = .bool(x)
            return
        }
        if let x = try? container.decode(Int.self) {
            self = .integer(x)
            return
        }
        throw DecodingError.typeMismatch(Edited.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for Edited"))
    }

    func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        switch self {
        case .bool(let x):
            try container.encode(x)
        case .integer(let x):
            try container.encode(x)
        }
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGalleryData { response in
//     if let galleryData = response.result.value {
//       ...
//     }
//   }

// MARK: - GalleryData
class GalleryData: Codable {
    let items: [Item]?

    init(items: [Item]?) {
        self.items = items
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseItem { response in
//     if let item = response.result.value {
//       ...
//     }
//   }

// MARK: - Item
class Item: Codable {
    let mediaID: String?
    let id: Int?

    enum CodingKeys: String, CodingKey {
        case mediaID
        case id
    }

    init(mediaID: String?, id: Int?) {
        self.mediaID = mediaID
        self.id = id
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseGildings { response in
//     if let gildings = response.result.value {
//       ...
//     }
//   }

// MARK: - Gildings
class Gildings: Codable {
    let gid1, gid2: Int?

    enum CodingKeys: String, CodingKey {
        case gid1
        case gid2
    }

    init(gid1: Int?, gid2: Int?) {
        self.gid1 = gid1
        self.gid2 = gid2
    }
}

enum LinkFlairTextColor: String, Codable {
    case dark = "dark"
    case light = "light"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMedia { response in
//     if let media = response.result.value {
//       ...
//     }
//   }

// MARK: - Media
class Media: Codable {
    let redditVideo: RedditVideo?

    enum CodingKeys: String, CodingKey {
        case redditVideo
    }

    init(redditVideo: RedditVideo?) {
        self.redditVideo = redditVideo
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseRedditVideo { response in
//     if let redditVideo = response.result.value {
//       ...
//     }
//   }

// MARK: - RedditVideo
class RedditVideo: Codable {
    let bitrateKbps: Int?
    let fallbackURL: String?
    let height, width: Int?
    let scrubberMediaURL: String?
    let dashURL: String?
    let duration: Int?
    let hlsURL: String?
    let isGIF: Bool?
    let transcodingStatus: String?

    enum CodingKeys: String, CodingKey {
        case bitrateKbps
        case fallbackURL
        case height, width
        case scrubberMediaURL
        case dashURL
        case duration
        case hlsURL
        case isGIF
        case transcodingStatus
    }

    init(bitrateKbps: Int?, fallbackURL: String?, height: Int?, width: Int?, scrubberMediaURL: String?, dashURL: String?, duration: Int?, hlsURL: String?, isGIF: Bool?, transcodingStatus: String?) {
        self.bitrateKbps = bitrateKbps
        self.fallbackURL = fallbackURL
        self.height = height
        self.width = width
        self.scrubberMediaURL = scrubberMediaURL
        self.dashURL = dashURL
        self.duration = duration
        self.hlsURL = hlsURL
        self.isGIF = isGIF
        self.transcodingStatus = transcodingStatus
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMediaEmbed { response in
//     if let mediaEmbed = response.result.value {
//       ...
//     }
//   }

// MARK: - MediaEmbed
class MediaEmbed: Codable {

    init() {
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseMediaMetadatum { response in
//     if let mediaMetadatum = response.result.value {
//       ...
//     }
//   }

// MARK: - MediaMetadatum
class MediaMetadatum: Codable {
    let status: Status?
    let e: E?
    let m: M?
    let p: [S]?
    let s: S?
    let id: String?

    init(status: Status?, e: E?, m: M?, p: [S]?, s: S?, id: String?) {
        self.status = status
        self.e = e
        self.m = m
        self.p = p
        self.s = s
        self.id = id
    }
}

enum E: String, Codable {
    case image = "Image"
}

enum M: String, Codable {
    case imageJpg = "image/jpg"
    case imagePNG = "image/png"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseS { response in
//     if let s = response.result.value {
//       ...
//     }
//   }

// MARK: - S
class S: Codable {
    let y, x: Int?
    let u: String?

    init(y: Int?, x: Int?, u: String?) {
        self.y = y
        self.x = x
        self.u = u
    }
}

enum Status: String, Codable {
    case valid = "valid"
}

enum WhitelistStatus: String, Codable {
    case someAds = "some_ads"
}

enum PostHint: String, Codable {
    case hostedVideo = "hosted:video"
    case image = "image"
    case postHintSelf = "self"
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responsePreview { response in
//     if let preview = response.result.value {
//       ...
//     }
//   }

// MARK: - Preview
class Preview: Codable {
    let images: [Image]?
    let enabled: Bool?

    init(images: [Image]?, enabled: Bool?) {
        self.images = images
        self.enabled = enabled
    }
}

//
// To parse values from Alamofire responses:
//
//   Alamofire.request(url).responseImage { response in
//     if let image = response.result.value {
//       ...
//     }
//   }

// MARK: - Image
class Image: Codable {
    let source: ResizedIcon?
    let resolutions: [ResizedIcon]?
    let variants: MediaEmbed?
    let id: String?

    init(source: ResizedIcon?, resolutions: [ResizedIcon]?, variants: MediaEmbed?, id: String?) {
        self.source = source
        self.resolutions = resolutions
        self.variants = variants
        self.id = id
    }
}

enum Subreddit: String, Codable {
    case wallstreetbets = "wallstreetbets"
}

enum SubredditNamePrefixed: String, Codable {
    case rWallstreetbets = "r/wallstreetbets"
}

enum SubredditType: String, Codable {
    case subredditTypePublic = "public"
}

enum SuggestedSort: String, Codable {
    case confidence = "confidence"
    case new = "new"
}

enum Kind: String, Codable {
    case t3 = "t3"
}

// MARK: - Helper functions for creating encoders and decoders

func newJSONDecoder() -> JSONDecoder {
    let decoder = JSONDecoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        decoder.dateDecodingStrategy = .iso8601
    }
    return decoder
}

func newJSONEncoder() -> JSONEncoder {
    let encoder = JSONEncoder()
    if #available(iOS 10.0, OSX 10.12, tvOS 10.0, watchOS 3.0, *) {
        encoder.dateEncodingStrategy = .iso8601
    }
    return encoder
}

// MARK: - Encode/decode helpers

class JSONNull: Codable, Hashable {

    public static func == (lhs: JSONNull, rhs: JSONNull) -> Bool {
        return true
    }

    public var hashValue: Int {
        return 0
    }

    public func hash(into hasher: inout Hasher) {
        // No-op
    }

    public init() {}

    public required init(from decoder: Decoder) throws {
        let container = try decoder.singleValueContainer()
        if !container.decodeNil() {
            throw DecodingError.typeMismatch(JSONNull.self, DecodingError.Context(codingPath: decoder.codingPath, debugDescription: "Wrong type for JSONNull"))
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encodeNil()
    }
}

class JSONCodingKey: CodingKey {
    let key: String

    required init?(intValue: Int) {
        return nil
    }

    required init?(stringValue: String) {
        key = stringValue
    }

    var intValue: Int? {
        return nil
    }

    var stringValue: String {
        return key
    }
}

class JSONAny: Codable {

    let value: Any

    static func decodingError(forCodingPath codingPath: [CodingKey]) -> DecodingError {
        let context = DecodingError.Context(codingPath: codingPath, debugDescription: "Cannot decode JSONAny")
        return DecodingError.typeMismatch(JSONAny.self, context)
    }

    static func encodingError(forValue value: Any, codingPath: [CodingKey]) -> EncodingError {
        let context = EncodingError.Context(codingPath: codingPath, debugDescription: "Cannot encode JSONAny")
        return EncodingError.invalidValue(value, context)
    }

    static func decode(from container: SingleValueDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if container.decodeNil() {
            return JSONNull()
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout UnkeyedDecodingContainer) throws -> Any {
        if let value = try? container.decode(Bool.self) {
            return value
        }
        if let value = try? container.decode(Int64.self) {
            return value
        }
        if let value = try? container.decode(Double.self) {
            return value
        }
        if let value = try? container.decode(String.self) {
            return value
        }
        if let value = try? container.decodeNil() {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer() {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decode(from container: inout KeyedDecodingContainer<JSONCodingKey>, forKey key: JSONCodingKey) throws -> Any {
        if let value = try? container.decode(Bool.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Int64.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(Double.self, forKey: key) {
            return value
        }
        if let value = try? container.decode(String.self, forKey: key) {
            return value
        }
        if let value = try? container.decodeNil(forKey: key) {
            if value {
                return JSONNull()
            }
        }
        if var container = try? container.nestedUnkeyedContainer(forKey: key) {
            return try decodeArray(from: &container)
        }
        if var container = try? container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key) {
            return try decodeDictionary(from: &container)
        }
        throw decodingError(forCodingPath: container.codingPath)
    }

    static func decodeArray(from container: inout UnkeyedDecodingContainer) throws -> [Any] {
        var arr: [Any] = []
        while !container.isAtEnd {
            let value = try decode(from: &container)
            arr.append(value)
        }
        return arr
    }

    static func decodeDictionary(from container: inout KeyedDecodingContainer<JSONCodingKey>) throws -> [String: Any] {
        var dict = [String: Any]()
        for key in container.allKeys {
            let value = try decode(from: &container, forKey: key)
            dict[key.stringValue] = value
        }
        return dict
    }

    static func encode(to container: inout UnkeyedEncodingContainer, array: [Any]) throws {
        for value in array {
            if let value = value as? Bool {
                try container.encode(value)
            } else if let value = value as? Int64 {
                try container.encode(value)
            } else if let value = value as? Double {
                try container.encode(value)
            } else if let value = value as? String {
                try container.encode(value)
            } else if value is JSONNull {
                try container.encodeNil()
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer()
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout KeyedEncodingContainer<JSONCodingKey>, dictionary: [String: Any]) throws {
        for (key, value) in dictionary {
            let key = JSONCodingKey(stringValue: key)!
            if let value = value as? Bool {
                try container.encode(value, forKey: key)
            } else if let value = value as? Int64 {
                try container.encode(value, forKey: key)
            } else if let value = value as? Double {
                try container.encode(value, forKey: key)
            } else if let value = value as? String {
                try container.encode(value, forKey: key)
            } else if value is JSONNull {
                try container.encodeNil(forKey: key)
            } else if let value = value as? [Any] {
                var container = container.nestedUnkeyedContainer(forKey: key)
                try encode(to: &container, array: value)
            } else if let value = value as? [String: Any] {
                var container = container.nestedContainer(keyedBy: JSONCodingKey.self, forKey: key)
                try encode(to: &container, dictionary: value)
            } else {
                throw encodingError(forValue: value, codingPath: container.codingPath)
            }
        }
    }

    static func encode(to container: inout SingleValueEncodingContainer, value: Any) throws {
        if let value = value as? Bool {
            try container.encode(value)
        } else if let value = value as? Int64 {
            try container.encode(value)
        } else if let value = value as? Double {
            try container.encode(value)
        } else if let value = value as? String {
            try container.encode(value)
        } else if value is JSONNull {
            try container.encodeNil()
        } else {
            throw encodingError(forValue: value, codingPath: container.codingPath)
        }
    }

    public required init(from decoder: Decoder) throws {
        if var arrayContainer = try? decoder.unkeyedContainer() {
            self.value = try JSONAny.decodeArray(from: &arrayContainer)
        } else if var container = try? decoder.container(keyedBy: JSONCodingKey.self) {
            self.value = try JSONAny.decodeDictionary(from: &container)
        } else {
            let container = try decoder.singleValueContainer()
            self.value = try JSONAny.decode(from: container)
        }
    }

    public func encode(to encoder: Encoder) throws {
        if let arr = self.value as? [Any] {
            var container = encoder.unkeyedContainer()
            try JSONAny.encode(to: &container, array: arr)
        } else if let dict = self.value as? [String: Any] {
            var container = encoder.container(keyedBy: JSONCodingKey.self)
            try JSONAny.encode(to: &container, dictionary: dict)
        } else {
            var container = encoder.singleValueContainer()
            try JSONAny.encode(to: &container, value: self.value)
        }
    }
}
