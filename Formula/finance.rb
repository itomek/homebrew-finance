class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "2a0ece64cb30eb3bd474aca6f2493eb1e9304f73b8284688b2067311e25a4ea2"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end