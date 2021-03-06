?
=C:\TallerCsharp\validations\src\validationApp\Notification.cs
public 
class 
Notification 
{ 
private 
String 
errormsg 
=  !
$str" $
;$ %
private 
List 
< 
String 
> 
errors #
=$ %
new& )
List* .
<. /
string/ 5
>5 6
(6 7
)7 8
;8 9
public 
void 
addError 
( 
String #
message$ +
)+ ,
{- .
errors/ 5
.5 6
Add6 9
(9 :
message: A
)A B
;B C
}D E
public 
Boolean 
	hasErrors  
(  !
)! "
{# $
return		 
errors		 
.		 
Count		 
!=		  "
$num		# $
;		$ %
}

 	
public 
String 
printErrors !
(! "
)" #
{# $
foreach 
( 
var 
error 
in !
errors" (
)( )
{ 
errormsg 
+= 
error !
;! "
} 
return 
errormsg 
; 
} 	
} 
8C:\TallerCsharp\validations\src\validationApp\Program.cs
	namespace 	
validationApp
 
{ 
public		 

class		 
Program		 
{

 
static 
void 
Main 
( 
string 
[  
]  !
args" &
)& '
{ 	 
excecuteMillionTimes  
(  !
)! "
;" #
} 	
public 
static 
void  
excecuteMillionTimes /
(/ 0
)0 1
{1 2
var 
proc 
= 
Process 
. 
GetCurrentProcess 0
(0 1
)1 2
;2 3
var 
mem 
= 
proc 
. 
WorkingSet64 '
;' (
var 
cpu 
= 
proc 
. 
TotalProcessorTime -
;- .
var 
watch 
= 
System 
. 
Diagnostics *
.* +
	Stopwatch+ 4
.4 5
StartNew5 =
(= >
)> ?
;? @
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num  '
;' (
i) *
++* ,
), -
{  
excecuteCasesWithIfs $
($ %
)% &
;& '
} 
watch 
. 
Stop 
( 
) 
; 
Console 
. 
	WriteLine 
( 
$"  
$str  -
{- .
watch. 3
.3 4
ElapsedMilliseconds4 G
}G H
$strH K
"K L
)L M
;M N
Console 
. 
	WriteLine 
( 
$str f
,f g
memh k
/l m
$numn t
,t u
cpuv y
.y z
TotalMilliseconds	z ?
)
? ?
;
? ?
if 
( 
! 
watch 
. 
	IsRunning  
)  !
watch 
. 
Restart 
( 
) 
; 
for 
( 
int 
i 
= 
$num 
; 
i 
< 
$num  '
;' (
i) *
++* ,
), -
{ .
"excecuteCasesWithRegularExpression 2
(2 3
)3 4
;4 5
}   
watch!! 
.!! 
Stop!! 
(!! 
)!! 
;!! 
Console"" 
."" 
	WriteLine"" 
("" 
$"""  
$str""  ?
{""? @
watch""@ E
.""E F
ElapsedMilliseconds""F Y
}""Y Z
$str""Z ]
"""] ^
)""^ _
;""_ `
Console## 
.## 
	WriteLine## 
(## 
$str## f
,##f g
mem##h k
/##l m
$num##n t
,##t u
cpu##v y
.##y z
TotalMilliseconds	##z ?
)
##? ?
;
##? ?
if$$ 
($$ 
!$$ 
watch$$ 
.$$ 
	IsRunning$$  
)$$  !
watch%% 
.%% 
Restart%% 
(%% 
)%% 
;%% 
for&& 
(&& 
int&& 
i&& 
=&& 
$num&& 
;&& 
i&& 
<&& 
$num&&  '
;&&' (
i&&) *
++&&* ,
)&&, -
{'' '
excecuteCasesWithExceptions(( +
(((+ ,
)((, -
;((- .
})) 
watch** 
.** 
Stop** 
(** 
)** 
;** 
Console++ 
.++ 
	WriteLine++ 
(++ 
$"++  
$str++  6
{++6 7
watch++7 <
.++< =
ElapsedMilliseconds++= P
}++P Q
$str++Q T
"++T U
)++U V
;++V W
Console,, 
.,, 
	WriteLine,, 
(,, 
$str,, f
,,,f g
mem,,h k
/,,l m
$num,,n t
,,,t u
cpu,,v y
.,,y z
TotalMilliseconds	,,z ?
)
,,? ?
;
,,? ?
}-- 	
public.. 
static.. 
void..  
excecuteCasesWithIfs.. /
(../ 0
)..0 1
{..1 2
Notification// 
notify1//  
=//! "!
validateStringWithIfs//# 8
(//8 9
$str//9 @
)//@ A
;//A B
Console00 
.00 
	WriteLine00 
(00 
notify100 %
.00% &
printErrors00& 1
(001 2
)002 3
)003 4
;004 5
Notification11 
notify211  
=11! "!
validateStringWithIfs11# 8
(118 9
$str119 >
)11> ?
;11? @
Console22 
.22 
	WriteLine22 
(22 
notify222 %
.22% &
printErrors22& 1
(221 2
)222 3
)223 4
;224 5
Notification33 
notify333  
=33! "!
validateStringWithIfs33# 8
(338 9
$str339 _
)33_ `
;33` a
Console44 
.44 
	WriteLine44 
(44 
notify344 %
.44% &
printErrors44& 1
(441 2
)442 3
)443 4
;444 5
Notification55 
notify455  
=55! "!
validateStringWithIfs55# 8
(558 9
$str559 @
)55@ A
;55A B
Console66 
.66 
	WriteLine66 
(66 
notify466 %
.66% &
printErrors66& 1
(661 2
)662 3
)663 4
;664 5
}88 	
public99 
static99 
void99 .
"excecuteCasesWithRegularExpression99 =
(99= >
)99> ?
{99? @
Notification:: 
notify1::  
=::! "/
#validateStringWithRegularExpression::# F
(::F G
$str::G N
)::N O
;::O P
Console;; 
.;; 
	WriteLine;; 
(;; 
notify1;; %
.;;% &
printErrors;;& 1
(;;1 2
);;2 3
);;3 4
;;;4 5
Notification<< 
notify2<<  
=<<! "/
#validateStringWithRegularExpression<<# F
(<<F G
$str<<G L
)<<L M
;<<M N
Console== 
.== 
	WriteLine== 
(== 
notify2== %
.==% &
printErrors==& 1
(==1 2
)==2 3
)==3 4
;==4 5
Notification>> 
notify3>>  
=>>! "/
#validateStringWithRegularExpression>># F
(>>F G
$str>>G m
)>>m n
;>>n o
Console?? 
.?? 
	WriteLine?? 
(?? 
notify3?? %
.??% &
printErrors??& 1
(??1 2
)??2 3
)??3 4
;??4 5
Notification@@ 
notify4@@  
=@@! "/
#validateStringWithRegularExpression@@# F
(@@F G
$str@@G N
)@@N O
;@@O P
ConsoleAA 
.AA 
	WriteLineAA 
(AA 
notify4AA %
.AA% &
printErrorsAA& 1
(AA1 2
)AA2 3
)AA3 4
;AA4 5
}BB 	
publicCC 
staticCC 
voidCC '
excecuteCasesWithExceptionsCC 6
(CC6 7
)CC7 8
{CC8 9
tryDD 
{DD (
validateStringWithExceptionsEE ,
(EE, -
$strEE- 4
)EE4 5
;EE5 6
}FF 
catchFF 
(FF 
	ExceptionFF 
eFF 
)FF 
{FF  
ConsoleGG 
.GG 
	WriteLineGG !
(GG! "
eGG" #
.GG# $
MessageGG$ +
)GG+ ,
;GG, -
}HH 
tryII 
{II (
validateStringWithExceptionsJJ ,
(JJ, -
$strJJ- 2
)JJ2 3
;JJ3 4
}KK 
catchKK 
(KK 
	ExceptionKK 
eKK 
)KK 
{KK  
ConsoleLL 
.LL 
	WriteLineLL !
(LL! "
eLL" #
.LL# $
MessageLL$ +
)LL+ ,
;LL, -
}MM 
tryNN 
{NN (
validateStringWithExceptionsOO ,
(OO, -
$strOO- S
)OOS T
;OOT U
}PP 
catchPP 
(PP 
	ExceptionPP 
ePP 
)PP 
{PP  
ConsoleQQ 
.QQ 
	WriteLineQQ !
(QQ! "
eQQ" #
.QQ# $
MessageQQ$ +
)QQ+ ,
;QQ, -
}RR 
trySS 
{SS (
validateStringWithExceptionsTT ,
(TT, -
$strTT- 4
)TT4 5
;TT5 6
}UU 
catchUU 
(UU 
	ExceptionUU 
eUU 
)UU 
{UU  
ConsoleVV 
.VV 
	WriteLineVV !
(VV! "
eVV" #
.VV# $
MessageVV$ +
)VV+ ,
;VV, -
}WW 
}XX 	
publicYY 
staticYY 
NotificationYY "!
validateStringWithIfsYY# 8
(YY8 9
stringYY9 ?
inputYY@ E
)YYE F
{YYF G
NotificationZZ 
notificationZZ %
=ZZ& '
newZZ( +
NotificationZZ, 8
(ZZ8 9
)ZZ9 :
;ZZ: ;
Boolean[[ 
isEmpty[[ 
=[[ 
validateNullOrEmpty[[ 1
([[1 2
input[[2 7
,[[7 8
notification[[9 E
)[[E F
;[[F G
if\\ 
(\\ 
!\\ 
isEmpty\\ 
)\\ 
{\\ 
if]] 
(]] 
input]] 
.]] 
Length]] 
<]]  !
$num]]" #
||]]$ &
input]]' ,
.]], -
Length]]- 3
>]]4 5
$num]]6 8
)]]: ;
{]]; <
notification^^  
.^^  !
addError^^! )
(^^) *
$str^^* Y
)^^Y Z
;^^Z [
}__ 
Boolean`` 
found`` 
=`` #
searchFirstMayAlphabeth``  7
(``7 8
input``8 =
)``= >
;``> ?
ifaa 
(aa 
!aa 
foundaa 
)aa 
{aa 
notificationbb  
.bb  !
addErrorbb! )
(bb) *
$strbb* n
)bbn o
;bbo p
}cc 
}dd 
returnee 
notificationee 
;ee  
}ff 	
publicgg 
staticgg 
Notificationgg "/
#validateStringWithRegularExpressiongg# F
(ggF G
stringggG M
inputggN S
)ggS T
{ggT U
Notificationhh 
notificationhh %
=hh& '
newhh( +
Notificationhh, 8
(hh8 9
)hh9 :
;hh: ;
Booleanii 
isEmptyii 
=ii 
validateNullOrEmptyii 1
(ii1 2
inputii2 7
,ii7 8
notificationii9 E
)iiE F
;iiF G
ifjj 
(jj 
!jj 
isEmptyjj 
)jj 
{jj 
varkk 
regexkk 
=kk 
$strkk -
;kk- .
varll 
matchll 
=ll 
Regexll !
.ll! "
Matchll" '
(ll' (
inputll( -
,ll- .
regexll/ 4
,ll4 5
RegexOptionsll6 B
.llB C
NonellC G
)llG H
;llH I
ifmm 
(mm 
!mm 
matchmm 
.mm 
Successmm "
)mm" #
{nn 
notificationoo  
.oo  !
addErroroo! )
(oo) *
$str	oo* ?
)
oo? ?
;
oo? ?
}pp 
}qq 
returnrr 
notificationrr 
;rr  
}ss 	
publictt 
statictt 
voidtt (
validateStringWithExceptionstt 7
(tt7 8
stringtt8 >
inputtt? D
)ttD E
{ttE F
Booleanuu 
isEmptyuu 
=uu 
Stringuu $
.uu$ %
IsNullOrEmptyuu% 2
(uu2 3
inputuu3 8
)uu8 9
;uu9 :
ifvv 
(vv 
!vv 
isEmptyvv 
)vv 
{vv 
ifww 
(ww 
inputww 
.ww 
Lengthww  
<ww! "
$numww# $
||ww% '
inputww( -
.ww- .
Lengthww. 4
>ww5 6
$numww7 9
)ww9 :
throwww; @
newwwA D
	ExceptionwwE N
(wwN O
$strwwO ~
)ww~ 
;	ww ?
ifxx 
(xx 
!xx #
searchFirstMayAlphabethxx ,
(xx, -
inputxx- 2
)xx2 3
)xx3 4
throwxx5 :
newxx; >
	Exceptionxx? H
(xxH I
$str	xxI ?
)
xx? ?
;
xx? ?
}yy 
}zz 	
private{{ 
static{{ 
Boolean{{ 
validateNullOrEmpty{{ 2
({{2 3
string{{3 9
input{{: ?
,{{? @
Notification{{A M
notification{{N Z
){{Z [
{{{[ \
if|| 
(|| 
String|| 
.|| 
IsNullOrEmpty|| #
(||# $
input||$ )
)||) *
)||* +
{||+ ,
notification}} 
.}} 
addError}} %
(}}% &
$str}}& ;
)}}; <
;}}< =
return~~ 
true~~ 
;~~ 
} 
else 
{ 
return
?? 
false
?? 
;
?? 
}
?? 
}
?? 	
private
?? 
static
?? 
Boolean
?? %
searchFirstMayAlphabeth
?? 6
(
??6 7
string
??7 =
input
??> C
)
??C D
{
??D E
Char
?? 
[
?? 
]
?? 
alphabet
?? 
=
?? 
{
?? 
$char
?? "
,
??" #
$char
??# &
,
??& '
$char
??' *
,
??* +
$char
??+ .
,
??. /
$char
??/ 2
,
??2 3
$char
??3 6
,
??6 7
$char
??7 :
,
??: ;
$char
??; >
,
??> ?
$char
??? B
,
??B C
$char
??C F
,
??F G
$char
??G J
,
??J K
$char
??K N
,
??N O
$char
??O R
,
??R S
$char
??S V
,
??V W
$char
??W Z
,
??Z [
$char
??[ ^
,
??^ _
$char
??_ b
,
??b c
$char
??c f
,
??f g
$char
??g j
,
??j k
$char
??k n
,
??n o
$char
??o r
,
??r s
$char
??s v
,
??v w
$char
??w z
,
??z {
$char
??{ ~
,
??~ 
$char?? ?
,??? ?
$char??? ?
}??? ?
;??? ?
Boolean
?? 
found
?? 
=
?? 
false
?? !
;
??! "
foreach
?? 
(
?? 
var
?? 
letter
?? 
in
??  "
alphabet
??# +
)
??+ ,
{
?? 
if
?? 
(
?? 
input
?? 
.
?? 

StartsWith
?? #
(
??# $
letter
??$ *
)
??* +
)
??+ ,
{
??, -
found
?? 
=
?? 
true
??  
;
??  !
break
?? 
;
?? 
}
?? 
}
?? 
return
?? 
found
?? 
;
?? 
}
?? 	
}
?? 
}?? 