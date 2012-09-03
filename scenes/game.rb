# coding: utf-8

class Game

  IMAGE_CHANGE_COUNT = 111111

  def initialize
@map=Map.new(File.join(File.dirname(__FILE__), "..", "images", "map.png"))    #マップ画像の読み込み


#マスの初期位置
@pos_goal = Pos.new("goal", nil, nil, 278, 944)
@pos_cl = Pos.new("cl", @pos_cb, nil, 1700, 272)
@pos_ck = Pos.new("ck", @pos_cl, nil, 1764, 253)
@pos_cj = Pos.new("cj", @pos_ba, nil, 1179, 492)
@pos_ci = Pos.new("ci", @pos_cj, nil, 1271, 451)
@pos_ch = Pos.new("ch", @pos_ci, nil, 1357, 402)
@pos_cg = Pos.new("cg", @pos_ch, nil, 1445, 397)
@pos_cf = Pos.new("cf", @pos_ax, nil, 1425, 488)
@pos_ce = Pos.new("ce", @pos_cf, nil, 1486, 479)
@pos_cd = Pos.new("cd", @pos_cg, @pos_ce, 1505, 420) 
@pos_cc = Pos.new("cc", @pos_cd, nil, 1526, 360)
@pos_cb = Pos.new("cb", @pos_cc, nil, 1613, 330)
@pos_ca = Pos.new("ca", @pos_cb, nil, 1669, 324)
@pos_by = Pos.new("by", @pos_bg, nil, 578, 775)
@pos_bx = Pos.new("bx", @pos_by, nil, 655, 775)
@pos_bw = Pos.new("bw", @pos_bx, nil, 716, 731)
@pos_bv = Pos.new("bv", @pos_bw, nil, 769, 715)
@pos_bu = Pos.new("bu", @pos_bv, nil, 812, 701)
@pos_bt = Pos.new("bt", @pos_bu, nil, 855, 676)
@pos_bs = Pos.new("bs", @pos_bt, nil, 941, 625)
@pos_br = Pos.new("br", @pos_bs, nil, 952, 585)
@pos_bq = Pos.new("bq", @pos_aw, nil, 1521, 531)
@pos_bp = Pos.new("bp", @pos_bq, nil, 1596, 475)
@pos_bo = Pos.new("bo", @pos_bp, nil, 1700, 420)
@pos_bn = Pos.new("bn", @pos_bo, nil, 1760, 414)
@pos_bm = Pos.new("bm", @pos_bn, nil, 1799, 377)
@pos_bl = Pos.new("bl", @pos_bm, @pos_ca, 1849, 338)
@pos_bj = Pos.new("bj", @pos_bl, nil, 1908, 341)
@pos_bi = Pos.new("bi", @pos_bj, nil, 2017, 341)
@pos_bh = Pos.new("bh", @pos_bi, nil, 2053, 305)
@pos_bg = Pos.new("bg", @pos_ah, nil, 405, 797)
@pos_bf = Pos.new("bf", @pos_bg, nil, 497, 740) 
@pos_be = Pos.new("be", @pos_bf, nil, 605, 667)
@pos_bd = Pos.new("bd", @pos_be, nil, 756, 609)
@pos_bc = Pos.new("bc", @pos_bd, nil, 902, 549)
@pos_bb = Pos.new("bb", @pos_bc, @pos_br, 952, 540) 
@pos_ba = Pos.new("ba", @pos_bb, nil, 1064, 515)
@pos_az = Pos.new("az", @pos_cj, nil, 1234, 516)
@pos_ay = Pos.new("ay", @pos_az, nil, 1282, 538)
@pos_ax = Pos.new("ax", @pos_ay, nil, 1338, 547) 
@pos_aw = Pos.new("aw", @pos_ax, nil, 1453, 579)
@pos_av = Pos.new("av", @pos_aw, nil, 1518, 595)
@pos_au = Pos.new("au", @pos_av, nil, 1565, 583)
@pos_at = Pos.new("at", @pos_au, nil, 1671, 537)
@pos_as = Pos.new("as", @pos_at, nil, 1678, 483)
@pos_ar = Pos.new("ar", @pos_as, nil, 1771, 482)
@pos_aq = Pos.new("aq", @pos_ar, nil, 1877, 450)
@pos_ap = Pos.new("ap", @pos_aq, nil, 1938, 448) 
@pos_ao = Pos.new("ao", @pos_ap, nil, 1991, 446)
@pos_an = Pos.new("an", @pos_ao, nil, 2101, 423)
@pos_am = Pos.new("am", @pos_an, nil, 2135, 390)
@pos_al = Pos.new("al", @pos_am, nil, 2134, 342)
@pos_ak = Pos.new("ak", @pos_al, nil, 2136, 294)
@pos_aj = Pos.new("aj", @pos_ak, @pos_cm, 2132, 239) 
@pos_ai = Pos.new("ai", @pos_goal, nil, 317, 900)
@pos_ah = Pos.new("ah", @pos_ai, nil, 349, 853)
@pos_ag = Pos.new("ag", @pos_ah, nil, 297, 810)
@pos_af = Pos.new("af", @pos_ag, nil, 258, 757)
@pos_ae = Pos.new("ae", @pos_af, nil, 226, 688)
@pos_ad = Pos.new("ad", @pos_ae, nil, 200, 618)
@pos_ac = Pos.new("ac", @pos_ad, nil, 181, 545)
@pos_ab = Pos.new("ab", @pos_ac, nil, 163, 466)
@pos_aa = Pos.new("aa", @pos_ab, nil, 157, 406)
@pos_z = Pos.new("z", @pos_aa, nil, 150, 331)
@pos_y = Pos.new("y", @pos_z, nil, 197, 300)
@pos_x = Pos.new("x", @pos_y, nil, 255, 271)
@pos_w = Pos.new("w", @pos_x, nil, 328, 246)
@pos_v = Pos.new("v", @pos_w, nil, 417, 252)
@pos_u = Pos.new("u", @pos_v, nil, 489, 211)
@pos_t = Pos.new("t", @pos_u, nil, 593, 167)
@pos_s = Pos.new("s", @pos_t, nil, 695, 122)
@pos_r = Pos.new("r", @pos_s, nil, 781, 141)
@pos_q = Pos.new("q", @pos_r, nil, 894, 139)
@pos_p = Pos.new("p", @pos_q, nil, 1019, 138)
@pos_o = Pos.new("o", @pos_p, nil, 1129, 147)
@pos_n = Pos.new("n", @pos_o, nil, 1243, 153)
@pos_m = Pos.new("m", @pos_n, nil, 1342, 159)
@pos_l = Pos.new("l", @pos_m, nil, 1456, 159)
@pos_k = Pos.new("k", @pos_l, nil, 1574, 164)
@pos_j = Pos.new("j", @pos_k, nil, 1682, 167)
@pos_i = Pos.new("i", @pos_j, nil, 1746, 167)
@pos_h = Pos.new("h", @pos_i, @pos_ck, 1799, 206) 
@pos_g = Pos.new("g", @pos_h, nil, 1860, 208)
@pos_f = Pos.new("f", @pos_g, nil, 1976, 208)
@pos_e = Pos.new("e", @pos_f, nil, 2028, 208)
@pos_d = Pos.new("d", @pos_e, nil, 2089, 212)
@pos_c = Pos.new("c", @pos_d, @pos_aj, 2135, 184)  
@pos_b = Pos.new("b", @pos_c, nil, 2132, 125)
@pos_a = Pos.new("a", @pos_b, nil, 2174, 85)
@pos_start= Pos.new("start", @pos_a, nil, 2231, 79)


@event = Event.new               #イベント
@player1 = Player.new(@pos_start) #プレイヤー
@dice = Dice.new()               #サイコロ

@rest_step = 0

@sound = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "main.wav"))  
@sound_played = false

@sound_move = Sound.new(File.join(File.dirname(__FILE__), "..", "sounds", "move.wav"))  

@done_event=true
  
end

  def play
  
   if !@sound_played
      @sound.play
      @sound_played = true
   end

  
   @map.scroll
   @map.draw    #マップの描写


 if Input.keyPush?(K_RIGHT) || Input.keyPush?(K_LEFT)
    @player1.select
  end



   if Input.keyPush?(K_SPACE) && @rest_step == 0   #スペースキーを押すと
     @done_event = false 
     @dice.enter                #サイコロを振る
     p @dice.result             #サイコロの結果の出力
     @rest_step = @dice.result
  end
  
  
  #以下、イベント処理
    
   if !@done_event && @rest_step == 0
     @event.happen(@player1.pos.name)
     
     # メッセージ、メッセージボックスを表示する
     @event.draw
   end
  
  if Input.keyPush?(K_Z) && (@rest_step > 0)
     @sound_move.play
     p "before rest_step: #{@rest_step}"
     @player1.move #プレイヤーがサイコロの目に応じて動く
     @rest_step -= 1
     p "after rest_step: #{@rest_step}"
  else
    @player1.draw(@map.x, @map.y)
    @dice.rotate
    @dice.draw
   # @event.message = false 
  end

 if (@rest_step > 0)
   @dice.draw_result
 end


  end

  def finished?
    Input.keyPush?(K_RETURN)
  end
end
