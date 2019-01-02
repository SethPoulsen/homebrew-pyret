require "language/node"

class Pyret < Formula
  desc "A functional scripting language geared toward education."
  homepage "https://www.pyret.org"
  url "https://registry.npmjs.org/pyret-npm/-/pyret-npm-0.0.16.tgz"
  sha256 "05dd83789506b81a9a04769b2a74cfb40e055acbdae0a74eb89fef8c90314552"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
