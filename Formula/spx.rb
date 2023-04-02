class SPX < Formula
  desc "NPX for Swift"
  homepage "https://github.com/FullQueueDeveloper/SPX"
  url "https://github.com/FullQueueDeveloper/SPX/archive/refs/tags/1.1.0.tar.gz"
  sha256 "83433261d3cf11c2215f84647c48c2ce3bd46d6828b6984b641c230cb1655661"
  # curl -sL $url | sha256sum
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    # Test by showing the version
    system "#{bin}/SPX", "-v"
  end
end
