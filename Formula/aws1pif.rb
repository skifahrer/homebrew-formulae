class Aws1pif < Formula
  desc "CLI tool to convert AWS credentials.csv to 1Password .1pif file"
  homepage "https://github.com/ngs/aws1pif"
  url "https://github.com/ngs/aws1pif/releases/download/v1.0.0/aws1pif_v1.0.0_darwin_amd64.tar.gz"
  version "1.0.0"
  sha256 "9e834264632a0a8e0e73c57daff4947418777f3d2de401b269b1f4c99fc882fe"

  def install
    bin.install "aws1pif"
  end

  test do
    res = JSON.parse shell_output(%Q(echo "\\nngs,pass,AKIAXXXXXXXXXXXXXXXX",ABBB,https://111111111111.signin.aws.amazon.com/console | #{bin}/aws1pif))
    assert_equal({
                   "location"       => "https://111111111111.signin.aws.amazon.com/console",
                   "locationKey"    => "amazon.com",
                   "secureContents" => {
                     "URLs"     => [
                       {
                         "label" => "Console",
                         "url"   => "https://111111111111.signin.aws.amazon.com/console",
                       },
                     ],
                     "fields"   => [
                       {
                         "designation" => "username",
                         "name"        => "username",
                         "type"        => "T",
                         "value"       => "ngs",
                       },
                       {
                         "designation" => "password",
                         "name"        => "password",
                         "type"        => "P",
                         "value"       => "pass",
                       },
                     ],
                     "sections" => [
                       {
                         "fields" => [
                           {
                             "k" => "string",
                             "t" => "AWS_ACCESS_KEY_ID",
                             "v" => "AKIAXXXXXXXXXXXXXXXX",
                           },
                           {
                             "k" => "string",
                             "t" => "AWS_SECRET_ACCESS_KEY",
                             "v" => "ABBB",
                           },
                         ],
                         "title"  => "API Credentials",
                       },
                       {
                         "fields" => [
                           {
                             "k" => "string",
                             "t" => "Account ID",
                             "v" => "111111111111",
                           },
                         ],
                         "title"  => "Account",
                       },
                     ],
                   },
                   "title"          => "AWS ngs@111111111111",
                   "typeName"       => "webforms.WebForm",
                 }, res)
  end
end
