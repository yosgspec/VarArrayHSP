#ifndef VarArray
#ifndef VarArrayAliasOff
	#define global vaCount count@VarArray
	#define global vaForeach foreach@VarArray
	#define global vaAdd add@VarArray
	#define global vaSet set@VarArray
	#define global vaReSet reSet@VarArray
	#define global vaItem item@VarArray
	#define global vaRefItem refItem@VarArray
	#define global vaRemove remove@VarArray	
#endif
#module @VarArrayItem thisItem
	#modinit var _item
		thisItem=_item: return
	#modfunc local set var _item
		thisItem=_item: return
	#modcfunc local item
		return thisItem
	#modfunc local refItem var _item
		_item=thisItem: return
#global
#module VarArray list,thisCount
	#modcfunc local count
		return thisCount
	#define global foreach@VarArray(%1) repeat count@VarArray(%1)
	#define new(%1) dimtype %1,5: newmod %1,VarArray
	#define news(%1) newmod %1,VarArray
	#modinit
		dimtype list,5
		thisCount=0
	return
	#define add(%1,%2)%tvaAdd %i=%2:__add@VarArray %1,%o
	#modfunc local __add var _item
		newmod list,@VarArrayItem,_item
		thisCount++
	return
	#define set(%1,%2,%3)%tvaSet %i=%3:__set@VarArray %1,%2,%o
	#modfunc local __set int index,var _item
		set@@VarArrayItem list(index),_item
	return 0
	#define reSet(%1,%2,%3,%4) set@VarArray %1,%2,item@VarArray(%1,%2)%3%4
	#modcfunc local item int index
		return item@@VarArrayItem(list(index))
	#modfunc local refItem int index,var _item
		refItem@@VarArrayItem list(index),_item: return
	#modfunc local remove int index
		thisCount--
		dim tmp
		repeat thisCount-index,index
			refItem@@VarArrayItem list(cnt+1),tmp
			set@@VarArrayItem list(cnt),tmp
		loop
		delmod list(thisCount)
	return
#global
#endif
