class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "d23213f449d90f2751e9efa6556994b164f71957e010f957f45ad3704b46d30d"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end