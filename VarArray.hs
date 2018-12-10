;--------------------------------------------------
; �y���I�^�z��zVarArray���W���[��
;                                   by.YOS G-spec
; https://github.com/yosgspec/VarArrayHSP
;--------------------------------------------------

%dll
VarArray

%ver
3.5

%date
2018/12/10

%author
YOS G-spec

%url
https://github.com/yosgspec/VarArrayHSP

%note
���I�^�z�񃂃W���[��
VarArray.as���C���N���[�h���邱�ƁB

%type
���[�U�[��`����/�֐�

%port
Win
Mac
Cli
HSP3Dish
%index
#define VarArrayAliasOff
���I�^�z�񃂃W���[���̃G�C���A�X�𖳌���

%inst
���I�^�z�񃂃W���[���̃C���N���[�h�O�ɐ錾�����va����n�܂��`��S�Ė��������܂��B
���̏ꍇ���̑Ή��ɏ]���Ė���/�֐����Ăяo���K�v������܂��B

�G�C���A�X         : ���ۂ̖���/�֐���
-------------------:-----------------------
vaCount@VarArray   : count@VarArray
vaForeach@VarArray : foreach@VarArray
vaAdd@VarArray     : add@VarArray
vaSet@VarArray     : set@VarArray
vaReSet@VarArray   : reSet@VarArray
vaItem@VarArray    : item@VarArray
vaRefItem@VarArray : refItem@VarArray
vaRemove@VarArray  : remove@VarArray	

%sample
#define VarArrayAliasOff
#include "VarArray.as"

new@VarArray

// mes vaItem(dict, "name") // ������
mes item@VarArray(dict, "name")


// �G�C���A�X���ǂ�
#define global ctype va(%1) %1@VarArray

mes va(item)(dict, "name")

%href
new@VarArray
news@VarArray
vaCount
vaForeach
vaSet
vaAdd
vaReSet
vaItem
vaRefItem
vaRemove

%group
���I�^�z��̒�`
%index
vaAdd
���I�^�z��ɗv�f��ǉ�

%prm
vArray, value
vArray : ���I�^�z��̃��W���[���^�ϐ�
value  : �o�^����l(�C�ӂ̌^)

%inst
���I�^�z��ɒl��ǉ����܂��B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����add@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"vArray"
mes vaItem(vArray,0)

%href
vaSet
vaReSet
vaRemove
vaItem
vaRefItem
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̕ύX
%index
vaCount
���I�^�z��̗v�f��

%prm
(vArray)
val    : ���I�^�z��̗v�f��(����)
vArray : ���I�^�z��̃��W���[���^�ϐ�

%inst
���I�^�z��ɓo�^����Ă���v�f����Ԃ��܂��B 


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{�֐��͎g�p�ł��Ȃ��Ȃ�A�����count@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"����"
vaAdd vArray,2
vaAdd vArray,3.14
vaAdd vArray,"Four"
vaAdd vArray,50

mes vaCount(vArray)

%href
repeat
dcForeach
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
��Ԃ̎擾
%index
vaForeach
���I�^�z��̗v�f�������J��Ԃ�

%prm
vArray
vArray : ���I�^�z��̃��W���[���^�ϐ�

%inst
repeat/foreach�L�[���[�h�̑���Ɏg�p���܂��B
�z��ϐ��Ɋi�[����Ă���v�f�̐������J��Ԃ����s�Ȃ��܂��B
�v�f�̃C���f�b�N�X�����ԂɎ擾���܂��B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����foreach@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

news@VarArray vArray
repeat 5
	vaAdd vArray,5-cnt
loop

vaForeach vArray
	mes vaItem(vArray,cnt)
loop

%href
repeat
foreach
loop
break
continue
vaItem
vaRefItem
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
���[�e�B���e�B
%index
vaItem
���I�^�z�񂩂�v�f���擾

%prm
(vArray, index)
val    : �擾�����l�o�^����l(�����A���V�����_�A������)
vArray : ���I�^�z��̃��W���[���^�ϐ�
index  : �擾����v�f�̃C���f�b�N�X

%inst
���I�^�z�񂩂�v�f���擾���܂��B

���x���^�⃂�W���[���^�̒l�擾�������ꍇ�́A�Q�ƕԂ��ł�vaRefItem���g�p���Ă��������B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{�֐��͎g�p�ł��Ȃ��Ȃ�A�����item@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"vArray"
mes vaItem(vArray,0)

%href
vaRefItem
vaAdd
vaSet
vaReSet
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̎擾
%index
vaRefItem
���I�^�z�񂩂�v�f���擾(�Q�Ɠn��)

%prm
vArray, index, refValue
vArray   : ���I�^�z��̃��W���[���^�ϐ�
index    : �v�f�̃C���f�b�N�X
refValue : �l��Ԃ��ϐ�(�C�ӂ̌^)

%inst
vaItem�̎Q�Ɠn���łł��B
���I�^�z�񂩂�v�f���擾���܂��B
������Ȃ������ꍇ��dcNull���Ԃ�܂��B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����refItem@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,*l
ldim item,1
vaRefItem vArray,0,item
gosub item

stop

*l: mes "lalalabel": return

%href
vaItem
vaAdd
vaSet
vaReSet
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̎擾

%index
vaRemove
���I�^�z�񂩂�v�f���폜

%prm
vArray, key
vArray : ���I�^�z��̃��W���[���^�ϐ�
index  : �폜����v�f�̃C���f�b�N�X

%inst
���I�^�z�񂩂�v�f���폜���܂��B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����remove@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"����"
vaAdd vArray,2
vaAdd vArray,3.14
vaAdd vArray,"Four"
vaAdd vArray,50

mes "�yRemove�O�z"
vaForeach vArray
	mes vaItem(vArray,cnt)
loop

vaRemove vArray,1
vaRemove vArray,3

mes "�yRemove��z"
vaForeach vArray
	mes vaItem(vArray,cnt)
loop


%href
vaAdd
vaSet
vaReSet
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̕ύX
%index
vaReSet
���I�^�z��̗v�f�ɉ��Z��K�p���čđ��

%prm
vArray, index, sign, addValue 
vArray   : ���I�^�z��̃��W���[���^�ϐ�
index    : ���Z��K�p����v�f�̃C���f�b�N�X(����)
sign     : ���Z�q
addValue : ���Z���s���l(�����A���V�����_�A������)

%inst
������Z�q�ɑ������閽�߂ł��B
�ݒ肵�����Z�q�ƒl��K�p���čđ�����܂��B

#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����reSet@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray

vaAdd vArray, 16
mes vaItem(vArray, 0)

vaReSet vArray, 0, *, 2
mes vaItem(vArray, 0)

vaReSet vArray, 0, -, 64
mes vaItem(vArray, 0)

%href
vaSet
vaAdd
vaItem
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̕ύX
%index
vaSet
���I�^�z��̗v�f�ɒl����

%prm
vArray, key, value
vArray  : ���I�^�z��̃��W���[���^�ϐ�
key   : �o�^����L�[(������)
value : �o�^����l(�C�ӂ̌^)

%inst
���I�^�z��̃C���f�b�N�X�ɒl�������܂��B
�w�肷��C���f�b�N�X��vaAdd�Œǉ��ς݂ł���K�v������܂��B


#define VarArrayAliasOff���g�p�����ꍇ�́A
�{���߂͎g�p�ł��Ȃ��Ȃ�A�����set@VarArray���g�p���܂��B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"vArray"
mes vaItem(vArray,0)
vaSet vArray,0,128
mes vaItem(vArray,0)

%href
vaAdd
vaReSet
vaRemove
vaItem
vaRefItem
new@VarArray
news@VarArray
#define VarArrayAliasOff

%group
�v�f�̕ύX
%index
new@VarArray
���I�^�z��̏�����

%prm
vArray
vArray : ���������铮�I�^�z��(���W���[���^�ϐ��ŕԂ�)

%inst
���I�^�z�񃂃W���[�������������A���I�^�z��̃��W���[���^�ϐ��𐶐����܂��B
(VarArray���W���[���R���X�g���N�^)

���I�^�z���z��ϐ��Ɋi�[����ꍇ�͏��������ɔz��ϐ����j������邽�߁Anews@VarArray�����g�p���������B

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"vArray"
mes vaItem(vArray,0)

%href
news@VarArray
#define VarArrayAliasOff
vaCount
vaForeach
vaSet
vaAdd
vaReSet
vaItem
vaRefItem
vaRemove
newmod

%group
���I�^�z��̒�`
%index
news@VarArray
���I�^�z��̏�����(�z��p)

%prm
vArray
vArray : ���������铮�I�^�z��(���W���[���^�ϐ��ŕԂ�)

%inst
���I�^�z�񃂃W���[�������������A���I�^�z��̃��W���[���^�ϐ��𐶐����܂��B
(VarArray���W���[���R���X�g���N�^)

�{���߂�new@VarArray�̔z��������߂ł���A�z��ϐ��̔j���͂���܂���B

%sample
#include "VarArray.as"

dim vArrays
repeat 5
	news@VarArray vArrays
	vaAdd vArrays(cnt),5-cnt
loop

foreach vArrays
	mes vaItem(vArrays(cnt),0)
loop

%href
new@VarArray
#define VarArrayAliasOff
vaCount
vaForeach
vaSet
vaAdd
vaReSet
vaItem
vaRefItem
vaRemove
newmod

%group
���I�^�z��̒�`

