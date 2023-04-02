class SPX < Formula
  desc "NPX for Swift"
  homepage "https://github.com/FullQueueDeveloper/SPX"
  url "https://github.com/FullQueueDeveloper/SPX/archive/refs/tags/1.0.4.tar.gz"
  sha256 "09f605e40e21e35bc3d6be90fe7dd578989b2ddd59845e0e85446f1de750d8c7"
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
