class Finance < Formula
  include Language::Python::Virtualenv

  desc "Historical financial analysis and planning tool"
  homepage "https://github.com/itomek/finance"
  url "https://github.com/itomek/finance/releases/download/v0.1.4/finance-0.1.4.tar.gz"
  sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    system "#{bin}/finance", "--version"
  end
end