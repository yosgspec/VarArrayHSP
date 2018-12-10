;--------------------------------------------------
; 【動的型配列】VarArrayモジュール
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
動的型配列モジュール
VarArray.asをインクルードすること。

%type
ユーザー定義命令/関数

%port
Win
Mac
Cli
HSP3Dish
%index
#define VarArrayAliasOff
動的型配列モジュールのエイリアスを無効化

%inst
動的型配列モジュールのインクルード前に宣言するとvaから始まる定義を全て無効化します。
その場合次の対応に従って命令/関数を呼び出す必要があります。

エイリアス         : 実際の命令/関数名
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

// mes vaItem(dict, "name") // 無効化
mes item@VarArray(dict, "name")


// エイリアスもどき
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
動的型配列の定義
%index
vaAdd
動的型配列に要素を追加

%prm
vArray, value
vArray : 動的型配列のモジュール型変数
value  : 登録する値(任意の型)

%inst
動的型配列に値を追加します。


#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにadd@VarArrayを使用します。

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
要素の変更
%index
vaCount
動的型配列の要素数

%prm
(vArray)
val    : 動的型配列の要素数(整数)
vArray : 動的型配列のモジュール型変数

%inst
動的型配列に登録されている要素数を返します。 


#define VarArrayAliasOffを使用した場合は、
本関数は使用できなくなり、代わりにcount@VarArrayを使用します。

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"いち"
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
状態の取得
%index
vaForeach
動的型配列の要素数だけ繰り返す

%prm
vArray
vArray : 動的型配列のモジュール型変数

%inst
repeat/foreachキーワードの代わりに使用します。
配列変数に格納されている要素の数だけ繰り返しを行ないます。
要素のインデックスを順番に取得します。


#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにforeach@VarArrayを使用します。

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
ユーティリティ
%index
vaItem
動的型配列から要素を取得

%prm
(vArray, index)
val    : 取得した値登録する値(整数、浮遊小数点、文字列)
vArray : 動的型配列のモジュール型変数
index  : 取得する要素のインデックス

%inst
動的型配列から要素を取得します。

ラベル型やモジュール型の値取得したい場合は、参照返し版のvaRefItemを使用してください。


#define VarArrayAliasOffを使用した場合は、
本関数は使用できなくなり、代わりにitem@VarArrayを使用します。

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
要素の取得
%index
vaRefItem
動的型配列から要素を取得(参照渡し)

%prm
vArray, index, refValue
vArray   : 動的型配列のモジュール型変数
index    : 要素のインデックス
refValue : 値を返す変数(任意の型)

%inst
vaItemの参照渡し版です。
動的型配列から要素を取得します。
見つからなかった場合はdcNullが返ります。


#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにrefItem@VarArrayを使用します。

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
要素の取得

%index
vaRemove
動的型配列から要素を削除

%prm
vArray, key
vArray : 動的型配列のモジュール型変数
index  : 削除する要素のインデックス

%inst
動的型配列から要素を削除します。


#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにremove@VarArrayを使用します。

%sample
#include "VarArray.as"

new@VarArray vArray
vaAdd vArray,"いち"
vaAdd vArray,2
vaAdd vArray,3.14
vaAdd vArray,"Four"
vaAdd vArray,50

mes "【Remove前】"
vaForeach vArray
	mes vaItem(vArray,cnt)
loop

vaRemove vArray,1
vaRemove vArray,3

mes "【Remove後】"
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
要素の変更
%index
vaReSet
動的型配列の要素に演算を適用して再代入

%prm
vArray, index, sign, addValue 
vArray   : 動的型配列のモジュール型変数
index    : 演算を適用する要素のインデックス(整数)
sign     : 演算子
addValue : 演算を行う値(整数、浮遊小数点、文字列)

%inst
代入演算子に相当する命令です。
設定した演算子と値を適用して再代入します。

#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにreSet@VarArrayを使用します。

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
要素の変更
%index
vaSet
動的型配列の要素に値を代入

%prm
vArray, key, value
vArray  : 動的型配列のモジュール型変数
key   : 登録するキー(文字列)
value : 登録する値(任意の型)

%inst
動的型配列のインデックスに値を代入します。
指定するインデックスはvaAddで追加済みである必要があります。


#define VarArrayAliasOffを使用した場合は、
本命令は使用できなくなり、代わりにset@VarArrayを使用します。

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
要素の変更
%index
new@VarArray
動的型配列の初期化

%prm
vArray
vArray : 初期化する動的型配列(モジュール型変数で返る)

%inst
動的型配列モジュールを初期化し、動的型配列のモジュール型変数を生成します。
(VarArrayモジュールコンストラクタ)

動的型配列を配列変数に格納する場合は初期化時に配列変数が破棄されるため、news@VarArrayをご使用ください。

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
動的型配列の定義
%index
news@VarArray
動的型配列の初期化(配列用)

%prm
vArray
vArray : 初期化する動的型配列(モジュール型変数で返る)

%inst
動的型配列モジュールを初期化し、動的型配列のモジュール型変数を生成します。
(VarArrayモジュールコンストラクタ)

本命令はnew@VarArrayの配列向け命令であり、配列変数の破棄はされません。

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
動的型配列の定義

