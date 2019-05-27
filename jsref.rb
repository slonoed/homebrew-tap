require "language/node"

class Jsref < Formula
  desc "JavaScript refactoring language server"
  homepage "https://github.com/slonoed/jsref#readme"
  url "https://registry.npmjs.org/@slonoed/jsref/-/jsref-1.0.9.tgz"
  version "1.0.9"
  sha256 "ecc6981914b169ddc3ca9186df43fe9768e4fd24a70be209a6cd27b9408990fa"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

  test do
    raise "Test not implemented."
  end
end
