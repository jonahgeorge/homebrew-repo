class AwscliLocal < Formula
  include Language::Python::Virtualenv

  desc "Thin wrapper around the 'aws' command-line interface for use with LocalStack"
  homepage "https://github.com/localstack/awscli-local"
  url "https://github.com/localstack/awscli-local/archive/ded935b1842ca0f008e01f0d5f71c3f4714597e0.tar.gz"
  sha256 "01daab95149bd695cc47a52c71d2289b6403f1cd00fae9229d44050c1b69fe2b"
  license "Apache-2.0"

  depends_on "python@3.9"
  depends_on "awscli"

  resource "localstack-client" do
    url "https://files.pythonhosted.org/packages/d3/41/1468bc8fce2b2abff02dbd26bd043c46c1a900c13f8be8c297ff3fbc4110/localstack-client-1.10.tar.gz"
    sha256 "1b9fa8c61f1bcc9d3e5b0fb8d7fe553f2e59f19ec5238eadc8f65af733497729"
  end

  resource "six" do
    url "https://files.pythonhosted.org/packages/6b/34/415834bfdafca3c5f451532e8a8d9ba89a21c9743a0c59fbd0205c7f9426/six-1.15.0.tar.gz"
    sha256 "30639c035cdb23534cd4aa2dd52c3bf48f06e5f4a941509c8bafd8ce11080259"
  end

  def install
    virtualenv_install_with_resources
  end
end
