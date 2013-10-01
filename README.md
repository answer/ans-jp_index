# Ans::JpIndex

五十音順の「行」を取得する

## Installation

Add this line to your application's Gemfile:

    gem 'ans-jp_index'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ans-jp_index

## Usage

    Ans::JpIndex.jp_index "インデックス" # => ア
    Ans::JpIndex.jp_index "ジュース" # => サ

    include Ans::JpIndex
    jp_index "ニュース" # => ナ

    jp_index_ord "ニュース" # => 4
    # ア => 0, カ => 1, サ => 2

ひらがなか、カタカナで始まる単語を渡すと、先頭の文字の「行」を全角カタカナで返す

ひらがな、カタカナ以外を渡すと「ワ」を返す

濁点、拗音を含む場合でも、全部取り除いたものを返す  
(戻り値は濁点、拗音を含まない)

`jp_index_ord` メソッドは、「行」の番号を返す

## Requirements

nkf 2.0.9 以上(-Z4 オプションを使用しています)

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
