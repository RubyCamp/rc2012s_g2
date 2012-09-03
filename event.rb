# coding: Shift_JIS

class Event
  attr_accessor :message                          #���b�Z�[�W��ON,OFF

  def initialize
    @font = Font.new(32)                          #�����̃t�H���g
    @fin = 1                                      #�S�[�����̃J�E���g
    @m_box = Image.new(700, 100, [255, 255, 255]) #���b�Z�[�W�{�b�N�X
    @text = ''                                    #�C�x���g�ŕ\�����镶����
    @image =Image.load(File.join(File.dirname(__FILE__), "images", "event_photo0.png"))
  end
  
  def draw
    Window.draw(30, 50, @image)#�摜�\��
    Window.draw(30, 400, @m_box)#���b�Z�[�W�{�b�N�X��\���i���F�j
    Window.drawFont(30, 400, @text, @font, {color: [0, 0, 0]})#�������\���i���F�j
  end

  def happen(pos_str)
    case pos_str
#�����}�X
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
#���z�}�X
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
#���z�}�X
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
#�����Ȃ��}�X
      else
        exec(0)
    end
  end

  def exec(event_num)
    self.__send__("event#{event_num}".to_sym)  #���s�����C�x���g�̑I��
  end
    
  
  def event0#�C�x���g�̂Ȃ��}�X�̏ꍇ�A���̃C�x���g�����s����
    @image = Image.load('./images/event_photo0.png')
    return[0,0]#[]�̒��́A�������̑����A�����̑����@�̏�
  end

  def event1
    @image = Image.load('./images/event_photo1.png')#�摜��ǂݍ���
    @text = "���]��𔃂��グ���I\n��������3000�����āA������1000������"#�\������镶����
    return [-3000, 1000]
  end

  def event2
    @image = Image.load('./images/event_photo2.png')
    @text = "�����΂𔃂���߂��I\n��������5000�����āA������2000������"
    return [-5000, 2000]
  end

  def event3
    @image = Image.load('./images/event_photo3.png')
    @text = "���������𔃎������I\n��������1000�����āA������300������"
    return [-1000,300]
  end

  def event4
    @image = Image.load('./images/event_photo4.png')
    @text = "�x�m�ʂ𔃎������I\n��������1000�����āA������500������"
    return [-1000,500]
  end

  def event5
    @image = Image.load('./images/event_photo5.png')
    @text = "�O�H�_�@�𔃎������I\n��������1500�����āA������700������"
    return [-1500,700]
  end

  def event6
    @image = Image.load('./images/event_photo6.png')
    @text = "�l�b�g���[�N���p�ʐM�������𔃎������I\n��������500�����āA������200������"
    return [-500,200]
  end

  def event7
    @image = Image.load('./images/event_photo7.png')
    @text = "�B��𔃎������I\n��������7000�����āA������3000������"
    return [-7000,3000]
  end

  def event8
    @image = Image.load('./images/event_photo8.png')
    @text = "�A�N�A�X�𔃎������I\n��������9000�����āA������5000������"
    return [-9000,5000]
  end

  def event9
    @image = Image.load('./images/event_photo9.png')
    @text = "�S�r�E�X�𔃎������I\n��������2000�����āA������900������"
    return [-2000,900]
  end

  def event10
    @image = Image.load('./images/event_photo0.png')
    @text = "�ʑ�����ŉ���݂₰��̔������I\n��������600������"
    return [600,0]
  end

  def event11
    @image = Image.load('./images/event_photo0.png')
    @text = "�o�_��ЂŐ_�l���炨�������������I\n��������1000������"
    return [1000,0]
  end

  def event12
    @image = Image.load('./images/event_photo0.png')
    @text = "�����΂ł����݂�����`���������I\n�����Ƃ���500��ɓ��ꂽ"
    return [500,0]
  end

  def event13
    @image = Image.load('./images/event_photo0.png')
    @text = "�����琻�S���A�s�[�����Ē��ڂ��W�߂��I\n�����700�����"
    return [700,0]
  end

  def event14
    @image = Image.load('./images/event_photo0.png')
    @text = "�I�[�v���\�[�X���{�ŃV�X�e���J������`�����I\n�����Ƃ���800�����"
    return [800,0]
  end

  def event15
    @image = Image.load('./images/event_photo0.png')
    @text = "�閧���Б�̒܂ƈꏏ�ɕ�d�������s�����I\n�g�c�N���炨���1000�����"
    return [1000,0]
  end

  def event16
    @image = Image.load('./images/event_photo0.png')
    @text = "�����Őŋ����x�������c\n��������500������"
    return [-500,0]
  end

  def event17
    @image = Image.load('./images/event_photo0.png')
    @text = "�����ՂɊ�t�������c\n��������700������"
    return [-700,0]
  end

  def event18
    @image = Image.load('./images/event_photo0.png')
    @text = "�T�����C�N�ɏh�������c\n��������500������"
    return [-500,0]
  end

  def event19
    @image = Image.load('./images/event_photo0.png')
    @text = "�����a����H�ׂ܂������c\n��������1000������"
    return [-1000,0]
  end

  def event20
    @image = Image.load('./images/event_photo0.png')
    @text = "�������p�قŐ_�b���������c\n��������600������"
    return [-600,0]
  end

  def event21
    @image = Image.load('./images/end.png')
    @text = "    �S�[��!!    "
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
