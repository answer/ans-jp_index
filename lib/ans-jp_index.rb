# -*- coding: utf-8 -*-

require "ans-jp_index/version"

require "nkf"

module Ans
  module JpIndex
    extend self

    ALL_INDEX = "アカサタナハマヤラワ"

    def jp_index(word)
      # 濁点や拗音を含む場合も適切に対応するため、まず半角カナに変換してから最初の一文字を取得する
      # うまく取れなかった場合は「ワ」行
      index = "ﾜ"

      if word
        word = word.to_s
        word = NKF.nkf("-w -h2", word)
        word = NKF.nkf("-w -Z4", word)
        char = word[0]

        base_ord = "ｱ".ord
        char_ord = char.try(:ord)
        if char && char_ord >= base_ord
          case
          when char_ord < "ﾔ".ord
            index = (((char_ord - base_ord)/5*5)+base_ord).chr
          when char_ord < "ﾗ".ord
            index = "ﾔ"
          when char_ord < "ﾜ".ord
            index = "ﾗ"
          end
        end
      end

      NKF.nkf("-w -h0", index)
    end

    def jp_index_ord(word)
      if char = word.to_s[0]
        index = ALL_INDEX.index char
      end
      index || ALL_INDEX.index(jp_index word)
    end

  end
end
