require "language/node"

class Jsref < Formula
  desc "JavaScript refactoring language server"
  homepage "https://github.com/slonoed/jsref#readme"
  url "https://registry.npmjs.org/@slonoed/jsref/-/jsref-1.1.10.tgz"
  version "1.1.10"
  sha256 "2c34bce8c6cbb0d8ef056a8cd3868bb91a58c91a9d060310c2aef36fe8178c58"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
