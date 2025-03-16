class Goatmeal < Formula
  desc "Goatmeal is a powerful terminal-based application that provides access to various AI chat providers and web search capabilities, all within your terminal."
  homepage "https://github.com/tedfulk/goatmeal"
  version "1.3.3"

  if OS.mac? && Hardware::CPU.arm?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.3/goatmeal-darwin-arm64.tar.gz"
    sha256 "fe4d70f5fddbb7ab7605bbf73df9898432e024486b660b9a6a7f26bdc33525d4"
  elsif OS.mac? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.3/goatmeal-darwin-amd64.tar.gz"
    sha256 "1f7c548b25397c66358bac774439fe44c8f35508c39954b7dcf0aaf097eddb79"
  elsif OS.linux? && Hardware::CPU.intel?
    url "https://github.com/tedfulk/goatmeal/releases/download/v1.3.3/goatmeal-linux-amd64.tar.gz"
    sha256 "b86b64ebe33433f7939db2b2caa9f937f011d9f6f21223c19882b9b07bb37c44"
  end

  def install
    bin.install "goatmeal"
  end

  test do
    system "#{bin}/goatmeal", "--version"
  end
end