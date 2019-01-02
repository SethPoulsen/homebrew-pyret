require "language/node"

class Pyret < Formula
  desc "A functional scripting language geared toward education."
  homepage "https://www.pyret.org"
  url "https://registry.npmjs.org/pyret-npm/-/pyret-npm-0.0.16.tgz"
  sha256 "eacbb9241ba6ecbc705f1f108d91a8e8560c6c913da36def73136ae0b71dfd6f"

  depends_on "node"

  def install
    system "npm", "install", *Language::Node.std_npm_install_args(libexec)
    bin.install_symlink Dir["#{libexec}/bin/*"]
  end

end
