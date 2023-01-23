class Swish < Formula
  desc "Swift script runner"
  homepage "https://github.com/FullQueueDeveloper/Swish"
  url "https://github.com/FullQueueDeveloper/Swish/archive/refs/tags/1.0.2.tar.gz"
  sha256 "9d8bc0f6f42b6648eec6c52cb3518d4da2e13e198b4baac189c364f1a24fc872"
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
