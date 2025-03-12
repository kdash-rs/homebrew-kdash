
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac? and Hardware::CPU.arm?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.2/kdash-macos-arm64.tar.gz"
    sha256 "1befa68bcc04c3abdfaa7552ed449480b0d9003f58d614ecaa6dc7eb2fcd8f5a"
  elsif OS.mac? and Hardware::CPU.intel?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.2/kdash-macos.tar.gz"
    sha256 "80335b0bc29f52c99771d59e45b4fa395a32fe0fe960698dfafdf9da70e163c4"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.6.2/kdash-linux-musl.tar.gz"
    sha256 "9124ccdb032cd5c0cb3a5c5555997c222aa9e7f63e02acfde44b9e3b173b6ab6"
  end
  version "v0.6.2"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end