class SPX < Formula
  desc "NPX for Swift"
  homepage "https://github.com/FullQueueDeveloper/SPX"
  url "https://github.com/FullQueueDeveloper/SPX/archive/refs/tags/1.1.1.tar.gz"
  sha256 "47fb02ba413e80a228536107af71e23dcc76d2e3124f7a206f853c2053d7efbe"
  # curl -sL $url | sha256sum
  name "spx"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/spx"
  end

  test do
    # Test by showing the version
    system "#{bin}/spx", "-v"
  end
end
