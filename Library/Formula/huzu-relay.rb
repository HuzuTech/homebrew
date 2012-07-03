require 'formula'

# Documentation: https://github.com/mxcl/homebrew/wiki/Formula-Cookbook
# PLEASE REMOVE ALL GENERATED COMMENTS BEFORE SUBMITTING YOUR PULL REQUEST!

class HuzuRelay < Formula
  version '1.0.0'
  homepage 'http://www.huzutech.com/products/huzurelay'
  url 'http://www.huzutech.com/themes/huzutech/downloads/huzurelay.zip'
  sha1 '8141f4679caf70bef07efb54cb19234b6ce296e1'

  # depends_on 'pyYAML' => :python

  def install
    prefix.install Dir['*']
    mkdir bin
    ln_s prefix + 'huRUservice', bin + 'huRUservice'
  end

  def caveats; <<-EOS.undent
    NOTE: You will have to manually install pyYAML:

      sudo easy_install pyyaml

    To run the test server, try:

      cd #{prefix}
      huRUService start test

    EOS
  end

  def test
    # This test will fail and we won't accept that! It's enough to just replace
    # "false" with the main program this formula installs, but it'd be nice if you
    # were more thorough. Run the test with `brew test huzurelay`.
    system "false"
  end
end
