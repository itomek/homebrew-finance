class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/archive/refs/tags/v0.1.1.tar.gz"
  sha256 "72fc2ca2f745de9b6eae8bce51fc08e7f25b905b49a8f49e16c5aa93ecf7f424"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end