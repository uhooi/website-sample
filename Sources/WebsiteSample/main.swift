import Foundation
import Publish
import Plot

// This type acts as the configuration for your website.
struct WebsiteSample: Website {
    enum SectionID: String, WebsiteSectionID {
        // Add the sections that you want your website to contain here:
        case posts
    }

    struct ItemMetadata: WebsiteItemMetadata {
        // Add any site-specific metadata that you want to use here.
    }

    // Update these properties to configure your website:
    var url = URL(string: "https://uhooi.github.io/website-sample-output")!
    var name = "THE Uhooi"
    var description = "Uhooi's Website"
    var language: Language { .japanese }
    var imagePath: Path? { nil }
}

// This will generate your website using the built-in Foundation theme:
try WebsiteSample().publish(using: [
    .addMarkdownFiles(),
    .copyResources(),
    .generateHTML(withTheme: .uhooi),
    .generateRSSFeed(including: [.posts]),
    .generateSiteMap(),
    .deploy(using: .gitHub("uhooi/website-sample-output", useSSH: false))
])
