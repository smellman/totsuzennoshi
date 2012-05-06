# -*- coding: utf-8 -*-
require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe "Totsuzennoshi" do
  describe "は" do
    it "突然の死を出す" do
      Totsuzennoshi.totsuzennoshi("突然の死").should eq("＿人人 人人＿\n＞ 突然の死 ＜\n￣Y^Y^Y^Y^Y￣\n")
    end

    it "その結果がこれだよ" do
      Totsuzennoshi.totsuzennoshi("その結果がこれだよ").should eq("＿人人人人人 人人人人＿\n＞ その結果がこれだよ ＜\n￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣\n")
    end

  end
  
  describe "ヘッダー部分の計算" do
    it "突然の死 は配列の2, 2を返す" do
      Totsuzennoshi.header_parts("突然の死").should == [2, 2]
    end

    it "その結果がこれだよ は配列の5, 4を返す" do
      Totsuzennoshi.header_parts("その結果がこれだよ").should == [5, 4]
    end
  end

  describe "フッター部分の出力" do
    it "突然の死 は ￣Y^Y^Y^Y^Y￣ を返す" do
      Totsuzennoshi.make_footer("突然の死").should eq("￣Y^Y^Y^Y^Y￣")
    end

    it "その結果がこれだよ は ￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣ を返す" do
      Totsuzennoshi.make_footer("その結果がこれだよ").should eq("￣Y^Y^Y^Y^Y^Y^Y^Y^Y^Y￣")
    end
  end

  describe "ヘッダー部分の出力" do
    it "突然の死 は ＿人人 人人＿ を返す" do
      Totsuzennoshi.make_header("突然の死").should eq("＿人人 人人＿")
    end

    it "その結果がこれだよ は ＿人人人人人 人人人人＿ を返す" do
      Totsuzennoshi.make_header("その結果がこれだよ").should eq("＿人人人人人 人人人人＿")
    end
  end

  describe "ボディ部分の出力" do
    it "突然の死 は ＞ 突然の死 ＜ を返す" do
      Totsuzennoshi.make_body("突然の死").should eq("＞ 突然の死 ＜")
    end
    
    it "その結果がこれだよ は ＞ その結果がこれだよ ＜ を返す" do
      Totsuzennoshi.make_body("その結果がこれだよ").should eq("＞ その結果がこれだよ ＜")
    end
  end

end
