# coding: Shift_JIS

class Event
  attr_accessor :message                          #メッセージのON,OFF

  def initialize
    @font = Font.new(32)                          #文字のフォント
    @fin = 1                                      #ゴール順のカウント
    @m_box = Image.new(700, 100, [255, 255, 255]) #メッセージボックス
    @text = ''                                    #イベントで表示する文字列
    @image =Image.load(File.join(File.dirname(__FILE__), "images", "event_photo0.png"))
  end
  
  def draw
    Window.draw(30, 50, @image)#画像表示
    Window.draw(30, 400, @m_box)#メッセージボックスを表示（白色）
    Window.drawFont(30, 400, @text, @font, {color: [0, 0, 0]})#文字列を表示（黒色）
  end

  def happen(pos_str)
    case pos_str
#買収マス
      when "d" then
        exec(1)
      when "bi" then
         exec(2)
      when "ao" then
         exec(3)
      when "bn" then
         exec(4)
      when "as" then
         exec(4)
      when "au" then
         exec(5)
      when "ay" then
         exec(6)
      when "o" then
         exec(7)
      when "bc" then
         exec(8)
      when "br" then
         exec(9)
      when "t" then
         exec(9)
      when "w" then
         exec(8)
      when "bx" then
         exec(7)
      when "ag" then
         exec(6)
      when "bg" then
         exec(5)
#増額マス
      when "a" then
         exec(10)
      when "c" then
         exec(11)
      when "e" then
         exec(12)
      when "g" then
         exec(13)
      when "j" then
         exec(14)
      when "k" then
         exec(15)
      when "l" then
         exec(15)
      when "s" then
         exec(10)
      when "u" then
         exec(11)
      when "z" then
         exec(12)
      when "aa" then
         exec(13)
      when "ae" then
         exec(14)
      when "af" then
         exec(15)
      when "ah" then
         exec(15)
      when "ai" then
         exec(10)
      when "bf" then
         exec(11)
      when "bw" then
         exec(12)
      when "bv" then
         exec(13)
      when "bu" then
         exec(14)
      when "bs" then
         exec(15)
      when "ch" then
         exec(15)
      when "cf" then
         exec(10)
      when "cd" then
         exec(11)
      when "cl" then
         exec(12)
      when "ca" then
         exec(13)
      when "bo" then
         exec(14)
      when "aq" then
         exec(15)
      when "bj" then
         exec(15)
      when "aj" then
         exec(10)
      when "am" then
         exec(11)
      when "an" then
         exec(12)
#減額マス
      when "f" then
         exec(16)
      when "q" then
         exec(17)
      when "v" then
         exec(18)
      when "ab" then
         exec(19)
      when "ac" then
         exec(20)
      when "ad" then
         exec(21)
      when "ck" then
         exec(16)
      when "cm" then
         exec(17)
      when "ak" then
         exec(18)
      when "cc" then
         exec(19)
      when "cg" then
         exec(20)
      when "cl" then
         exec(21)
      when "cj" then
         exec(16)
      when "bm" then
         exec(17)
      when "bp" then
         exec(18)
      when "ar" then
         exec(19)
      when "av" then
         exec(20)
      when "aw" then
         exec(21)
      when "ba" then
         exec(16)
      when "bb" then
         exec(17)
      when "bd" then
         exec(18)
      when "be" then
         exec(19)
      when "bt" then
         exec(20)
      when "by" then
         exec(21)
#何もないマス
      else
        exec(0)
    end
  end

  def exec(event_num)
    self.__send__("event#{event_num}".to_sym)  #実行されるイベントの選択
  end
    
  
  def event0#イベントのないマスの場合、このイベントを実行する
    @image = Image.load('./images/event_photo0.png')
    return[0,0]#[]の中は、所持金の増減、収入の増加　の順
  end

  def event1
    @image = Image.load('./images/event_photo1.png')#画像を読み込む
    @text = "松江城を買い上げた！\n所持金が3000減って、収入が1000増えた"#表示される文字列
    return [-3000, 1000]
  end

  def event2
    @image = Image.load('./images/event_photo2.png')
    @text = "宍道湖を買い占めた！\n所持金が5000減って、収入が2000増えた"
    return [-5000, 2000]
  end

  def event3
    @image = Image.load('./images/event_photo3.png')
    @text = "日立金属を買収した！\n所持金が1000減って、収入が300増えた"
    return [-1000,300]
  end

  def event4
    @image = Image.load('./images/event_photo4.png')
    @text = "富士通を買収した！\n所持金が1000減って、収入が500増えた"
    return [-1000,500]
  end

  def event5
    @image = Image.load('./images/event_photo5.png')
    @text = "三菱農機を買収した！\n所持金が1500減って、収入が700増えた"
    return [-1500,700]
  end

  def event6
    @image = Image.load('./images/event_photo6.png')
    @text = "ネットワーク応用通信研究所を買収した！\n所持金が500減って、収入が200増えた"
    return [-500,200]
  end

  def event7
    @image = Image.load('./images/event_photo7.png')
    @text = "隠岐を買収した！\n所持金が7000減って、収入が3000増えた"
    return [-7000,3000]
  end

  def event8
    @image = Image.load('./images/event_photo8.png')
    @text = "アクアスを買収した！\n所持金が9000減って、収入が5000増えた"
    return [-9000,5000]
  end

  def event9
    @image = Image.load('./images/event_photo9.png')
    @text = "ゴビウスを買収した！\n所持金が2000減って、収入が900増えた"
    return [-2000,900]
  end

  def event10
    @image = Image.load('./images/event_photo0.png')
    @text = "玉造温泉で温泉みやげを販売した！\n所持金が600増えた"
    return [600,0]
  end

  def event11
    @image = Image.load('./images/event_photo0.png')
    @text = "出雲大社で神様からお小遣いを貰った！\n所持金が1000増えた"
    return [1000,0]
  end

  def event12
    @image = Image.load('./images/event_photo0.png')
    @text = "宍道湖でしじみを取る手伝いをした！\n給料として500手に入れた"
    return [500,0]
  end

  def event13
    @image = Image.load('./images/event_photo0.png')
    @text = "たたら製鉄をアピールして注目を集めた！\nお礼に700貰った"
    return [700,0]
  end

  def event14
    @image = Image.load('./images/event_photo0.png')
    @text = "オープンソースラボでシステム開発を手伝った！\n給料として800貰った"
    return [800,0]
  end

  def event15
    @image = Image.load('./images/event_photo0.png')
    @text = "秘密結社鷹の爪と一緒に奉仕活動を行った！\n吉田君からお礼に1000貰った"
    return [1000,0]
  end

  def event16
    @image = Image.load('./images/event_photo0.png')
    @text = "県庁で税金を支払った…\n所持金が500減った"
    return [-500,0]
  end

  def event17
    @image = Image.load('./images/event_photo0.png')
    @text = "水郷祭に寄付をした…\n所持金が700減った"
    return [-700,0]
  end

  def event18
    @image = Image.load('./images/event_photo0.png')
    @text = "サンレイクに宿泊した…\n所持金が500減った"
    return [-500,0]
  end

  def event19
    @image = Image.load('./images/event_photo0.png')
    @text = "島根和牛を食べまくった…\n所持金が1000減った"
    return [-1000,0]
  end

  def event20
    @image = Image.load('./images/event_photo0.png')
    @text = "県立美術館で神話博を見た…\n所持金が600減った"
    return [-600,0]
  end

  def event21
    @image = Image.load('./images/end.png')
    @text = "    ゴール!!    "
    case @fin
      when 1 then
        @fin += 1
        return[10000,0]
      when 2 then
        @fin += 1
        return[5000,0]
      when 3 then
        @fin += 1
        return[2500,0]
      when 4 then
        return[0,0]
    end
  end

end
