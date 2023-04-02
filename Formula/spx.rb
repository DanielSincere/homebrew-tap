<<<<<<< HEAD
class SPX < Formula
  desc "NPX for Swift"
  homepage "https://github.com/FullQueueDeveloper/SPX"
  url "https://github.com/FullQueueDeveloper/SPX/archive/refs/tags/1.1.0.tar.gz"
  sha256 "83433261d3cf11c2215f84647c48c2ce3bd46d6828b6984b641c230cb1655661"
  # curl -sL $url | sha256sum
=======
class Spx < Formula
  desc "SPX: NPX for Swift"
  homepage "https://github.com/FullQueueDeveloper/SPX"
  url "https://github.com/FullQueueDeveloper/SPX/archive/refs/tags/1.1.1.tar.gz"
  sha256 "47fb02ba413e80a228536107af71e23dcc76d2e3124f7a206f853c2053d7efbe"
  # curl -sL $url | sha256sum
  name "spx"
>>>>>>> f71be28 (fix)
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
<<<<<<< HEAD
    bin.install ".build/release/#{name}"
=======
    bin.install ".build/release/spx"
>>>>>>> f71be28 (fix)
  end

  test do
    # Test by showing the version
<<<<<<< HEAD
    system "#{bin}/SPX", "-v"
=======
    system "#{bin}/spx", "-v"
>>>>>>> f71be28 (fix)
  end
end
