
# Documentation: https://docs.brew.sh/Formula-Cookbook
#                https://rubydoc.brew.sh/Formula
class Kdash < Formula
  desc "A fast and simple dashboard for Kubernetes written in Rust"
  homepage "https://github.com/kdash-rs/kdash"
  if OS.mac?
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.7/kdash-macos.tar.gz"
    sha256 "4974690e9d4f561e0f83d6b3d830460081f9c85a54121c3fab415eb11d0b9134"
  else
    url "https://github.com/kdash-rs/kdash/releases/download/v0.2.7/kdash-linux-musl.tar.gz"
    sha256 "23f37ca211999c77095dc21e25df220988d70bff3ba3c04bf0cc948b033c601e"
  end
  version "v0.2.7"
  license "MIT"

  def install
    bin.install "kdash"
    ohai "You're done!  Run with \"kdash\""
    ohai "For runtime flags, see \"kdash --help\""
  end
end