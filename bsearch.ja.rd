=begin
= Ruby/Bsearch: ����� 2ʬõ������ Ruby�ѤΥ饤�֥��

Ruby/Bsearch ������� 2ʬõ������ Ruby�ѤΥ饤�֥��Ǥ�����
��å���Ϳ�������˥ޥå����롢�ǽ�����Ǥ���ӺǸ�����Ǥ�
���Ĥ��ޤ���

�ǿ��Ǥ�
((<URL:http://namazu.org/~satoru/ruby-bsearch/>))
���������ǽ�Ǥ�

== ������

  % irb -r ./bsearch.rb
  >> %w(a b c c c d e f).bsearch_first {|x| x <=> "c"}
  => 2
  >> %w(a b c c c d e f).bsearch_last {|x| x <=> "c"}
  => 5
  >> %w(a b c e f).bsearch_first {|x| x <=> "c"}
  => 2
  >> %w(a b e f).bsearch_first {|x| x <=> "c"}
  => nil
  >> %w(a b e f).bsearch_last {|x| x <=> "c"}
  => nil
  >> %w(a b e f).bsearch_lower_boundary {|x| x <=> "c"}
  => 2
  >> %w(a b e f).bsearch_upper_boundary {|x| x <=> "c"}
  => 2
  >> %w(a b c c c d e f).bsearch_range {|x| x <=> "c"}
  => 2...5
  >> %w(a b c d e f).bsearch_range {|x| x <=> "c"}
  => 2...3
  >> %w(a b d e f).bsearch_range {|x| x <=> "c"}
  => 2...2

== ������

<<< figure

== API

--- Array#bsearch_first (ange = 0 ... self.length) {|x| ...}
    �֥�å���Ϳ�������˥ޥå�����ǽ�����Ǥ�ź�����֤�������
    ����ʤ��ä��� nil ���֤�����ά��ǽ�ʰ��� range �ϸ����ϰϤ�
    ���ꤹ��
    ����������õ��������ϥ֥�å��� {|x| x <=> key} �Τ褦���Ϥ��ޤ���
    �߽�������õ��������ϥ֥�å��� {|x| key <=> x} �Τ褦���Ϥ��ޤ���
    �����Τ��Ȥʤ��顢�����2ʬõ�������˥����Ȥ��Ƥ���ɬ�פ�����ޤ���

--- Array#bsearch_last (range = 0 ... self.length) {|x| ...}
    �֥�å���Ϳ�������˥ޥå�����Ǹ�����Ǥ�ź�����֤���
    ���Ĥ���ʤ��ä��� nil ���֤�����ά��ǽ�ʰ��� range �ϸ�
    ���ϰϤ���ꤹ��
    ����������õ��������ϥ֥�å��� {|x| x <=> key} �Τ褦���Ϥ��ޤ���
    �߽�������õ��������ϥ֥�å��� {|x| key <=> x} �Τ褦���Ϥ��ޤ���
    �����Τ��Ȥʤ��顢�����2ʬõ�������˥����Ȥ��Ƥ���ɬ�פ�����ޤ���

--- Array#bsearch_lower_boundary (range = 0 ... self.length) {|x| ...}
    �֥�å���Ϳ�������˥ޥå����벼�¤ζ������֤���
    ��ά��ǽ�ʰ��� range �ϸ����ϰϤ���ꤹ��
    ����������õ��������ϥ֥�å��� {|x| x <=> key} �Τ褦���Ϥ��ޤ���
    �߽�������õ��������ϥ֥�å��� {|x| key <=> x} �Τ褦���Ϥ��ޤ���
    �����Τ��Ȥʤ��顢�����2ʬõ�������˥����Ȥ��Ƥ���ɬ�פ�����ޤ���

--- Array#bsearch_upper_boundary (range = 0 ... self.length) {|x| ...}
    �֥�å���Ϳ�������˥ޥå������¤ζ������֤���
    ��ά��ǽ�ʰ��� range �ϸ����ϰϤ���ꤹ��
    ����������õ��������ϥ֥�å��� {|x| x <=> key} �Τ褦���Ϥ��ޤ���
    �߽�������õ��������ϥ֥�å��� {|x| key <=> x} �Τ褦���Ϥ��ޤ���
    �����Τ��Ȥʤ��顢�����2ʬõ�������˥����Ȥ��Ƥ���ɬ�פ�����ޤ���

--- Array#bsearch_range (range = 0 ... self.length) {|x| ...}
    �֥�å���Ϳ�������˥ޥå����벼�¤Ⱦ�¤ζ�����
    Range ���֥������ȤȤ����֤���
    ��ά��ǽ�ʰ��� range �ϸ����ϰϤ���ꤹ��
    ����������õ��������ϥ֥�å��� {|x| x <=> key} �Τ褦���Ϥ��ޤ���
    �߽�������õ��������ϥ֥�å��� {|x| key <=> x} �Τ褦���Ϥ��ޤ���
    �����Τ��Ȥʤ��顢�����2ʬõ�������˥����Ȥ��Ƥ���ɬ�פ�����ޤ���

--- Array#bsearch (range = 0 ... self.length) {|x| ...}
    Array#bsearch_first ����̾

== ���������

Ruby �Υ饤���󥹤˽��ä��ե꡼���եȥ������Ȥ��Ƹ������ޤ���
������̵�ݾڤǤ���

  * ((<URL:http://namazu.org/~satoru/ruby-bsearch/ruby-bsearch-1.4.tar.gz>))
  * ((<URL:http://cvs.namazu.org/ruby-bsearch/>))

satoru@namazu.org
=end
