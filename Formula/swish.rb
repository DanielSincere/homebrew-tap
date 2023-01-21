class Swish < Formula
  desc "Swift script runner"
  homepage "https://github.com/FullQueueDeveloper/Swish"
  url "https://github.com/FullQueueDeveloper/Swish/archive/refs/tags/1.0.1.tar.gz"
  
  sha256 "0d3e9475544e937a01811476d35ea0ee62e46f89"
  license "MIT"

  depends_on xcode: ["14.0", :build]
  uses_from_macos "swift"

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install ".build/release/#{name}"
  end

  test do
    # Test by showing the version
    system "#{bin}/swish", "-v"
  end
end
