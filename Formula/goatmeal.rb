class Goatmeal < Formula
  desc "Goatmeal is a powerful terminal-based application that provides access to various AI chat providers and web search capabilities, all within your terminal."
  homepage "https://github.com/tedfulk/goatmeal"
  version "1.3.0"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.0/goatmeal-darwin-arm64.tar.gz"
    sha256 "cc7737658493eb5c96c1425c015fac5a8ef4960745249c7cef98f5fbc807087a"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.0/goatmeal-darwin-amd64.tar.gz"
    sha256 "84f59b7359d1c162fb53f267804247a4f735cbc7704d66f29ac91a3d857f1bed"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.0/goatmeal-linux-amd64.tar.gz"
    sha256 "84f59b7359d1c162fb53f267804247a4f735cbc7704d66f29ac91a3d857f1bed"
  end

  def install
    bin.install "goatmeal"
  end

  test do
    system "#{bin}/goatmeal", "--version"
  end
end