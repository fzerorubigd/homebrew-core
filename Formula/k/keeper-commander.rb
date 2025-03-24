class KeeperCommander < Formula
  include Language::Python::Virtualenv

  desc "Command-line and SDK interface to Keeper Password Manager"
  homepage "https://docs.keeper.io/en/privileged-access-manager/commander-cli/overview"
  url "https://files.pythonhosted.org/packages/77/0c/1d3fa7af27bbd1248046c6697abc44a315310ca0a4a50a42fb13dd40455d/keepercommander-17.0.11.tar.gz"
  sha256 "45579c86fcd030d71099b106531f86c71f203075928d3b2770d401539b3254db"
  license "MIT"
  head "https://github.com/Keeper-Security/Commander.git", branch: "master"

  bottle do
    sha256 cellar: :any,                 arm64_sequoia: "75027ed5e3d4ca0c9225e70ffa11c8b972caaac7118bbbfe388b8c10cb785e68"
    sha256 cellar: :any,                 arm64_sonoma:  "11e44f064d782a1f95f5b213a50a1ea5cd62c76d8566a3d63c088a41cfa67122"
    sha256 cellar: :any,                 arm64_ventura: "ce6e53a70dfe6be928b3f7f91504ee019c80f0035f3e463e52fcc72b690228f4"
    sha256 cellar: :any,                 sonoma:        "8e9c1caf06e46a849716fd7a6248acdb698b6dba865a9531b6f9c74472a59b80"
    sha256 cellar: :any,                 ventura:       "e7634acb7899cd3e70ccc7745de857e10ad1a0e712455ee87f26238d4c43af62"
    sha256 cellar: :any_skip_relocation, arm64_linux:   "007de50b72a1f648d6bf72395a4dc9e68785fca1e95d40292b09b6e946ae34ca"
    sha256 cellar: :any_skip_relocation, x86_64_linux:  "0bb961866e2e05be87e4de88d808d80f388192efdf6190acee31d7e8bfa78783"
  end

  # bcrypt dependencies
  depends_on "pkgconf" => :build
  depends_on "rust" => :build

  depends_on "certifi"
  depends_on "cryptography"
  depends_on "python@3.13"

  resource "aioice" do
    url "https://files.pythonhosted.org/packages/33/b6/e2b0e48ccb5b04fe29265e93f14a0915f416e359c897ae87d570566c430b/aioice-0.9.0.tar.gz"
    sha256 "fc2401b1c4b6e19372eaaeaa28fd1bd9cbf6b0e412e48625297c53b495eebd1e"
  end

  resource "aiortc" do
    url "https://files.pythonhosted.org/packages/8a/f8/408e092748521889c9d33dddcef920afd9891cf6db4615ba6b6bfe114ff8/aiortc-1.10.1.tar.gz"
    sha256 "64926ad86bde20c1a4dacb7c3a164e57b522606b70febe261fada4acf79641b5"
  end

  resource "annotated-types" do
    url "https://files.pythonhosted.org/packages/ee/67/531ea369ba64dcff5ec9c3402f9f51bf748cec26dde048a2f973a4eea7f5/annotated_types-0.7.0.tar.gz"
    sha256 "aff07c09a53a08bc8cfccb9c85b05f1aa9a2a6f23728d790723543408344ce89"
  end

  resource "asciitree" do
    url "https://files.pythonhosted.org/packages/2d/6a/885bc91484e1aa8f618f6f0228d76d0e67000b0fdd6090673b777e311913/asciitree-0.3.3.tar.gz"
    sha256 "4aa4b9b649f85e3fcb343363d97564aa1fb62e249677f2e18a96765145cc0f6e"
  end

  resource "av" do
    url "https://files.pythonhosted.org/packages/0c/9d/486d31e76784cc0ad943f420c5e05867263b32b37e2f4b0f7f22fdc1ca3a/av-13.1.0.tar.gz"
    sha256 "d3da736c55847d8596eb8c26c60e036f193001db3bc5c10da8665622d906c17e"
  end

  resource "bcrypt" do
    url "https://files.pythonhosted.org/packages/bb/5d/6d7433e0f3cd46ce0b43cd65e1db465ea024dbb8216fb2404e919c2ad77b/bcrypt-4.3.0.tar.gz"
    sha256 "3a3fd2204178b6d2adcf09cb4f6426ffef54762577a7c9b54c159008cb288c18"
  end

  resource "charset-normalizer" do
    url "https://files.pythonhosted.org/packages/16/b0/572805e227f01586461c80e0fd25d65a2115599cc9dad142fee4b747c357/charset_normalizer-3.4.1.tar.gz"
    sha256 "44251f18cd68a75b56585dd00dae26183e102cd5e0f9f1466e6df5da2ed64ea3"
  end

  resource "colorama" do
    url "https://files.pythonhosted.org/packages/d8/53/6f443c9a4a8358a93a6792e2acffb9d9d5cb0a5cfd8802644b7b1c9a02e4/colorama-0.4.6.tar.gz"
    sha256 "08695f5cb7ed6e0531a20572697297273c47b8cae5a63ffc6d6ed5c201be6e44"
  end

  resource "dnspython" do
    url "https://files.pythonhosted.org/packages/b5/4a/263763cb2ba3816dd94b08ad3a33d5fdae34ecb856678773cc40a3605829/dnspython-2.7.0.tar.gz"
    sha256 "ce9c432eda0dc91cf618a5cedf1a4e142651196bbcd2c80e89ed5a907e5cfaf1"
  end

  resource "fido2" do
    url "https://files.pythonhosted.org/packages/eb/cc/4529123364d41f342145f2fd775307eaed817cd22810895dea10e15a4d06/fido2-1.2.0.tar.gz"
    sha256 "e39f95920122d64283fda5e5581d95a206e704fa42846bfa4662f86aa0d3333b"
  end

  resource "google-crc32c" do
    url "https://files.pythonhosted.org/packages/fd/c6/bd09366753b49353895ed73bad74574d9086b26b53bb5b9213962009719a/google_crc32c-1.7.0.tar.gz"
    sha256 "c8c15a04b290c7556f277acc55ad98503a8bc0893ea6860fd5b5d210f3f558ce"
  end

  resource "idna" do
    url "https://files.pythonhosted.org/packages/f1/70/7703c29685631f5a7590aa73f1f1d3fa9a380e654b86af429e0934a32f7d/idna-3.10.tar.gz"
    sha256 "12f65c9b470abda6dc35cf8e63cc574b1c52b11df2c86030af0ac09b01b13ea9"
  end

  resource "ifaddr" do
    url "https://files.pythonhosted.org/packages/e8/ac/fb4c578f4a3256561548cd825646680edcadb9440f3f68add95ade1eb791/ifaddr-0.2.0.tar.gz"
    sha256 "cc0cbfcaabf765d44595825fb96a99bb12c79716b73b44330ea38ee2b0c4aed4"
  end

  resource "importlib-metadata" do
    url "https://files.pythonhosted.org/packages/33/08/c1395a292bb23fd03bdf572a1357c5a733d3eecbab877641ceacab23db6e/importlib_metadata-8.6.1.tar.gz"
    sha256 "310b41d755445d74569f993ccfc22838295d9fe005425094fad953d7f15c8580"
  end

  resource "keeper-secrets-manager-core" do
    url "https://files.pythonhosted.org/packages/c4/b2/1e0fe5d7b64ddb98609a16e35ded1234bd2bb48a67bc302facb27adbdda1/keeper_secrets_manager_core-16.6.6.tar.gz"
    sha256 "bda9e733908b34edbac956825fc062e6934894f210d49b0bba1679d167d7be80"
  end

  resource "prompt-toolkit" do
    url "https://files.pythonhosted.org/packages/a1/e1/bd15cb8ffdcfeeb2bdc215de3c3cffca11408d829e4b8416dcfe71ba8854/prompt_toolkit-3.0.50.tar.gz"
    sha256 "544748f3860a2623ca5cd6d2795e7a14f3d0e1c3c9728359013f79877fc89bab"
  end

  resource "protobuf" do
    url "https://files.pythonhosted.org/packages/55/de/8216061897a67b2ffe302fd51aaa76bbf613001f01cd96e2416a4955dd2b/protobuf-6.30.1.tar.gz"
    sha256 "535fb4e44d0236893d5cf1263a0f706f1160b689a7ab962e9da8a9ce4050b780"
  end

  resource "pycryptodomex" do
    url "https://files.pythonhosted.org/packages/ba/d5/861a7daada160fcf6b0393fb741eeb0d0910b039ad7f0cd56c39afdd4a20/pycryptodomex-3.22.0.tar.gz"
    sha256 "a1da61bacc22f93a91cbe690e3eb2022a03ab4123690ab16c46abb693a9df63d"
  end

  resource "pydantic" do
    url "https://files.pythonhosted.org/packages/b7/ae/d5220c5c52b158b1de7ca89fc5edb72f304a70a4c540c84c8844bf4008de/pydantic-2.10.6.tar.gz"
    sha256 "ca5daa827cce33de7a42be142548b0096bf05a7e7b365aebfa5f8eeec7128236"
  end

  resource "pydantic-core" do
    url "https://files.pythonhosted.org/packages/fc/01/f3e5ac5e7c25833db5eb555f7b7ab24cd6f8c322d3a3ad2d67a952dc0abc/pydantic_core-2.27.2.tar.gz"
    sha256 "eb026e5a4c1fee05726072337ff51d1efb6f59090b7da90d30ea58625b1ffb39"
  end

  resource "pyee" do
    url "https://files.pythonhosted.org/packages/95/03/1fd98d5841cd7964a27d729ccf2199602fe05eb7a405c1462eb7277945ed/pyee-13.0.0.tar.gz"
    sha256 "b391e3c5a434d1f5118a25615001dbc8f669cf410ab67d04c4d4e07c55481c37"
  end

  resource "pylibsrtp" do
    url "https://files.pythonhosted.org/packages/2e/49/1c5101ecfeda540699e0754dddfc91c401fbf736ebe99d66e59fe3dad2ba/pylibsrtp-0.11.0.tar.gz"
    sha256 "5a8d19b1448baebde5ae3cedfa51f10e8ada3d9d99f43046ced0ecf1c105b8ec"
  end

  resource "pyopenssl" do
    url "https://files.pythonhosted.org/packages/9f/26/e25b4a374b4639e0c235527bbe31c0524f26eda701d79456a7e1877f4cc5/pyopenssl-25.0.0.tar.gz"
    sha256 "cd2cef799efa3936bb08e8ccb9433a575722b9dd986023f1cabc4ae64e9dac16"
  end

  resource "pyperclip" do
    url "https://files.pythonhosted.org/packages/30/23/2f0a3efc4d6a32f3b63cdff36cd398d9701d26cda58e3ab97ac79fb5e60d/pyperclip-1.9.0.tar.gz"
    sha256 "b7de0142ddc81bfc5c7507eea19da920b92252b548b96186caf94a5e2527d310"
  end

  resource "pysocks" do
    url "https://files.pythonhosted.org/packages/bd/11/293dd436aea955d45fc4e8a35b6ae7270f5b8e00b53cf6c024c83b657a11/PySocks-1.7.1.tar.gz"
    sha256 "3f8804571ebe159c380ac6de37643bb4685970655d3bba243530d6558b799aa0"
  end

  resource "python-dotenv" do
    url "https://files.pythonhosted.org/packages/bc/57/e84d88dfe0aec03b7a2d4327012c1627ab5f03652216c63d49846d7a6c58/python-dotenv-1.0.1.tar.gz"
    sha256 "e324ee90a023d808f1959c46bcbc04446a10ced277783dc6ee09987c37ec10ca"
  end

  resource "requests" do
    url "https://files.pythonhosted.org/packages/63/70/2bf7780ad2d390a8d301ad0b550f1581eadbd9a20f896afe06353c2a2913/requests-2.32.3.tar.gz"
    sha256 "55365417734eb18255590a9ff9eb97e9e1da868d4ccd6402399eaf68af20a760"
  end

  resource "setuptools" do
    url "https://files.pythonhosted.org/packages/81/ed/7101d53811fd359333583330ff976e5177c5e871ca8b909d1d6c30553aa3/setuptools-77.0.3.tar.gz"
    sha256 "583b361c8da8de57403743e756609670de6fb2345920e36dc5c2d914c319c945"
  end

  resource "tabulate" do
    url "https://files.pythonhosted.org/packages/ec/fe/802052aecb21e3797b8f7902564ab6ea0d60ff8ca23952079064155d1ae1/tabulate-0.9.0.tar.gz"
    sha256 "0095b12bf5966de529c0feb1fa08671671b3368eec77d7ef7ab114be2c068b3c"
  end

  resource "typing-extensions" do
    url "https://files.pythonhosted.org/packages/df/db/f35a00659bc03fec321ba8bce9420de607a1d37f8342eee1863174c69557/typing_extensions-4.12.2.tar.gz"
    sha256 "1a7ead55c7e559dd4dee8856e3a88b41225abfe1ce8df57b7c13915fe121ffb8"
  end

  resource "urllib3" do
    url "https://files.pythonhosted.org/packages/aa/63/e53da845320b757bf29ef6a9062f5c669fe997973f966045cb019c3f4b66/urllib3-2.3.0.tar.gz"
    sha256 "f8c5449b3cf0861679ce7e0503c7b44b5ec981bec0d1d3795a07f1ba96f0204d"
  end

  resource "wcwidth" do
    url "https://files.pythonhosted.org/packages/6c/63/53559446a878410fc5a5974feb13d31d78d752eb18aeba59c7fef1af7598/wcwidth-0.2.13.tar.gz"
    sha256 "72ea0c06399eb286d978fdedb6923a9eb47e1c486ce63e9b4e64fc18303972b5"
  end

  resource "websockets" do
    url "https://files.pythonhosted.org/packages/21/e6/26d09fab466b7ca9c7737474c52be4f76a40301b08362eb2dbc19dcc16c1/websockets-15.0.1.tar.gz"
    sha256 "82544de02076bafba038ce055ee6412d68da13ab47f0c60cab827346de828dee"
  end

  resource "zipp" do
    url "https://files.pythonhosted.org/packages/3f/50/bad581df71744867e9468ebd0bcd6505de3b275e06f202c2cb016e3ff56f/zipp-3.21.0.tar.gz"
    sha256 "2c9958f6430a2040341a52eb608ed6dd93ef4392e02ffe219417c1b28b5dd1f4"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "keepersecurity.com", shell_output("#{bin}/keeper server")
  end
end
