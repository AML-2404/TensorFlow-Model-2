¼0
¯ÿ
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
Á
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ¨
@
StaticRegexFullMatch	
input

output
"
patternstring
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8ü²-

random_rotation/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*)
shared_namerandom_rotation/StateVar

,random_rotation/StateVar/Read/ReadVariableOpReadVariableOprandom_rotation/StateVar*
_output_shapes
:*
dtype0	

random_flip/StateVarVarHandleOp*
_output_shapes
: *
dtype0	*
shape:*%
shared_namerandom_flip/StateVar
y
(random_flip/StateVar/Read/ReadVariableOpReadVariableOprandom_flip/StateVar*
_output_shapes
:*
dtype0	
p
dense_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_3/bias
i
 dense_3/bias/Read/ReadVariableOpReadVariableOpdense_3/bias*
_output_shapes
:*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	*
dtype0
q
dense_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_2/bias
j
 dense_2/bias/Read/ReadVariableOpReadVariableOpdense_2/bias*
_output_shapes	
:*
dtype0
z
dense_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_2/kernel
s
"dense_2/kernel/Read/ReadVariableOpReadVariableOpdense_2/kernel* 
_output_shapes
:
*
dtype0
q
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
j
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes	
:*
dtype0
z
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_1/kernel
s
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel* 
_output_shapes
:
*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0
w
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:©*
shared_namedense/kernel
p
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel*!
_output_shapes
:©*
dtype0
r
conv2d_2/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_2/bias
k
!conv2d_2/bias/Read/ReadVariableOpReadVariableOpconv2d_2/bias*
_output_shapes
: *
dtype0

conv2d_2/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_2/kernel
{
#conv2d_2/kernel/Read/ReadVariableOpReadVariableOpconv2d_2/kernel*&
_output_shapes
:  *
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
: *
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:  * 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:  *
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
: *
dtype0

!serving_default_random_flip_inputPlaceholder*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
dtype0*&
shape:ÿÿÿÿÿÿÿÿÿàà
¦
StatefulPartitionedCallStatefulPartitionedCall!serving_default_random_flip_inputconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *+
f&R$
"__inference_signature_wrapper_2923

NoOpNoOp
·^
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ò]
valueè]Bå] BÞ]
É
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
§
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator*
§
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator*
È
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op*

0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses* 
È
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op*

?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses* 
È
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op*

N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses* 

T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses* 
¦
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias*
¥
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator* 
¦
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias*
¥
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator* 
¦
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias*
¬
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator* 
®
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias*
l
-0
.1
<2
=3
K4
L5
`6
a7
o8
p9
~10
11
12
13*
l
-0
.1
<2
=3
K4
L5
`6
a7
o8
p9
~10
11
12
13*
* 
µ
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 

serving_default* 
* 
* 
* 

non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

¢trace_0
£trace_1* 

¤trace_0
¥trace_1* 

¦
_generator*
* 
* 
* 

§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses* 

¬trace_0
­trace_1* 

®trace_0
¯trace_1* 

°
_generator*

-0
.1*

-0
.1*
* 

±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses*

¶trace_0* 

·trace_0* 
]W
VARIABLE_VALUEconv2d/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEconv2d/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses* 

½trace_0* 

¾trace_0* 

<0
=1*

<0
=1*
* 

¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses*

Ätrace_0* 

Åtrace_0* 
_Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses* 

Ëtrace_0* 

Ìtrace_0* 

K0
L1*

K0
L1*
* 

Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

Òtrace_0* 

Ótrace_0* 
_Y
VARIABLE_VALUEconv2d_2/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_2/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 

Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses* 

Ùtrace_0* 

Útrace_0* 
* 
* 
* 

Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses* 

àtrace_0* 

átrace_0* 

`0
a1*

`0
a1*
* 

ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

çtrace_0* 

ètrace_0* 
\V
VARIABLE_VALUEdense/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
XR
VARIABLE_VALUE
dense/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses* 

îtrace_0
ïtrace_1* 

ðtrace_0
ñtrace_1* 
* 

o0
p1*

o0
p1*
* 

ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses*

÷trace_0* 

øtrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses* 

þtrace_0
ÿtrace_1* 

trace_0
trace_1* 
* 

~0
1*

~0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_2/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_2/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses* 

trace_0
trace_1* 

trace_0
trace_1* 
* 

0
1*

0
1*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

trace_0* 

trace_0* 
^X
VARIABLE_VALUEdense_3/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_3/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
z
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 


_state_var*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
xr
VARIABLE_VALUErandom_flip/StateVarJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUErandom_rotation/StateVarJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
é
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp#conv2d_2/kernel/Read/ReadVariableOp!conv2d_2/bias/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOp"dense_2/kernel/Read/ReadVariableOp dense_2/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp(random_flip/StateVar/Read/ReadVariableOp,random_rotation/StateVar/Read/ReadVariableOpConst*
Tin
2		*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *&
f!R
__inference__traced_save_5441
¤
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasconv2d_2/kernelconv2d_2/biasdense/kernel
dense/biasdense_1/kerneldense_1/biasdense_2/kerneldense_2/biasdense_3/kerneldense_3/biasrandom_flip/StateVarrandom_rotation/StateVar*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__traced_restore_5499®¥,
Ú
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_5328

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
Í

Nrandom_rotation_loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_3260
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter¡
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsT
Prandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderV
Rrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_less_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice±
¬random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_3260___redundant_placeholder0±
¬random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_3260___redundant_placeholder1±
¬random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_3260___redundant_placeholder2Q
Mrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity
Ý
Irandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/LessLessPrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_less_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice*
T0*
_output_shapes
: É
Mrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentityMrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Less:z:0*
T0
*
_output_shapes
: "§
Mrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identityVrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : :::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
:

û
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5148

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs
D
Í
D__inference_sequential_layer_call_and_return_conditional_losses_2722

inputs"
random_rotation_2676:	%
conv2d_2679: 
conv2d_2681: '
conv2d_1_2685:  
conv2d_1_2687: '
conv2d_2_2691:  
conv2d_2_2693: 

dense_2698:©

dense_2700:	 
dense_1_2704:

dense_1_2706:	 
dense_2_2710:

dense_2_2712:	
dense_3_2716:	
dense_3_2718:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢'random_rotation/StatefulPartitionedCallÆ
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_2634
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall$random_flip/PartitionedCall:output:0random_rotation_2676*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_2562
conv2d/StatefulPartitionedCallStatefulPartitionedCall0random_rotation/StatefulPartitionedCall:output:0conv2d_2679conv2d_2681*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_1325é
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2685conv2d_1_2687*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2691conv2d_2_2693*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361ï
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_1374ù
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2698
dense_2700*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1387å
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1593
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_2704dense_1_2706*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1411
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1560
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_2710dense_2_2712*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1435
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1527
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_2716dense_3_2718*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1459w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
±¿

I__inference_random_rotation_layer_call_and_return_conditional_losses_2562

inputs@
2loop_body_stateful_uniform_rngreadandskip_resource:	
identity¢)loop_body/stateful_uniform/RngReadAndSkip¢4loop_body/stateful_uniform/RngReadAndSkip/pfor/while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Rank/packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:F
RankConst*
_output_shapes
: *
dtype0*
value	B :M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
:W
	Max/inputPackstrided_slice:output:0*
N*
T0*
_output_shapes
:O
MaxMaxMax/input:output:0range:output:0*
T0*
_output_shapes
: h
&loop_body/PlaceholderWithDefault/inputConst*
_output_shapes
: *
dtype0*
value	B : 
 loop_body/PlaceholderWithDefaultPlaceholderWithDefault/loop_body/PlaceholderWithDefault/input:output:0*
_output_shapes
: *
dtype0*
shape: E
loop_body/ShapeShapeinputs*
T0*
_output_shapes
:g
loop_body/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
loop_body/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
loop_body/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_sliceStridedSliceloop_body/Shape:output:0&loop_body/strided_slice/stack:output:0(loop_body/strided_slice/stack_1:output:0(loop_body/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
loop_body/Greater/yConst*
_output_shapes
: *
dtype0*
value	B :}
loop_body/GreaterGreater loop_body/strided_slice:output:0loop_body/Greater/y:output:0*
T0*
_output_shapes
: V
loop_body/SelectV2/eConst*
_output_shapes
: *
dtype0*
value	B :  
loop_body/SelectV2SelectV2loop_body/Greater:z:0)loop_body/PlaceholderWithDefault:output:0loop_body/SelectV2/e:output:0*
T0*
_output_shapes
: Y
loop_body/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
loop_body/GatherV2GatherV2inputsloop_body/SelectV2:output:0 loop_body/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*$
_output_shapes
:ààj
 loop_body/stateful_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB:c
loop_body/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿c
loop_body/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?j
 loop_body/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
loop_body/stateful_uniform/ProdProd)loop_body/stateful_uniform/shape:output:0)loop_body/stateful_uniform/Const:output:0*
T0*
_output_shapes
: c
!loop_body/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
!loop_body/stateful_uniform/Cast_1Cast(loop_body/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Þ
)loop_body/stateful_uniform/RngReadAndSkipRngReadAndSkip2loop_body_stateful_uniform_rngreadandskip_resource*loop_body/stateful_uniform/Cast/x:output:0%loop_body/stateful_uniform/Cast_1:y:0*
_output_shapes
:x
.loop_body/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0loop_body/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0loop_body/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
(loop_body/stateful_uniform/strided_sliceStridedSlice1loop_body/stateful_uniform/RngReadAndSkip:value:07loop_body/stateful_uniform/strided_slice/stack:output:09loop_body/stateful_uniform/strided_slice/stack_1:output:09loop_body/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
"loop_body/stateful_uniform/BitcastBitcast1loop_body/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0z
0loop_body/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2loop_body/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2loop_body/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ô
*loop_body/stateful_uniform/strided_slice_1StridedSlice1loop_body/stateful_uniform/RngReadAndSkip:value:09loop_body/stateful_uniform/strided_slice_1/stack:output:0;loop_body/stateful_uniform/strided_slice_1/stack_1:output:0;loop_body/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
$loop_body/stateful_uniform/Bitcast_1Bitcast3loop_body/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7loop_body/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :´
3loop_body/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2)loop_body/stateful_uniform/shape:output:0-loop_body/stateful_uniform/Bitcast_1:output:0+loop_body/stateful_uniform/Bitcast:output:0@loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
:
loop_body/stateful_uniform/subSub'loop_body/stateful_uniform/max:output:0'loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
: ¬
loop_body/stateful_uniform/mulMul<loop_body/stateful_uniform/StatelessRandomUniformV2:output:0"loop_body/stateful_uniform/sub:z:0*
T0*
_output_shapes
:
loop_body/stateful_uniformAddV2"loop_body/stateful_uniform/mul:z:0'loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
:Z
loop_body/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
loop_body/ExpandDims
ExpandDimsloop_body/GatherV2:output:0!loop_body/ExpandDims/dim:output:0*
T0*(
_output_shapes
:ààj
loop_body/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   à   à      r
loop_body/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿt
!loop_body/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿk
!loop_body/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_slice_1StridedSliceloop_body/Shape_1:output:0(loop_body/strided_slice_1/stack:output:0*loop_body/strided_slice_1/stack_1:output:0*loop_body/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
loop_body/CastCast"loop_body/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: r
loop_body/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿt
!loop_body/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿk
!loop_body/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_slice_2StridedSliceloop_body/Shape_1:output:0(loop_body/strided_slice_2/stack:output:0*loop_body/strided_slice_2/stack_1:output:0*loop_body/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
loop_body/Cast_1Cast"loop_body/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
loop_body/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/subSubloop_body/Cast_1:y:0(loop_body/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: i
loop_body/rotation_matrix/CosCosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_1Subloop_body/Cast_1:y:0*loop_body/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mulMul!loop_body/rotation_matrix/Cos:y:0#loop_body/rotation_matrix/sub_1:z:0*
T0*
_output_shapes
:i
loop_body/rotation_matrix/SinSinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_2Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_1Mul!loop_body/rotation_matrix/Sin:y:0#loop_body/rotation_matrix/sub_2:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_3Sub!loop_body/rotation_matrix/mul:z:0#loop_body/rotation_matrix/mul_1:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_4Sub!loop_body/rotation_matrix/sub:z:0#loop_body/rotation_matrix/sub_3:z:0*
T0*
_output_shapes
:h
#loop_body/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¤
!loop_body/rotation_matrix/truedivRealDiv#loop_body/rotation_matrix/sub_4:z:0,loop_body/rotation_matrix/truediv/y:output:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_5Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: k
loop_body/rotation_matrix/Sin_1Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_6Subloop_body/Cast_1:y:0*loop_body/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_2Mul#loop_body/rotation_matrix/Sin_1:y:0#loop_body/rotation_matrix/sub_6:z:0*
T0*
_output_shapes
:k
loop_body/rotation_matrix/Cos_1Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_7Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_3Mul#loop_body/rotation_matrix/Cos_1:y:0#loop_body/rotation_matrix/sub_7:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/addAddV2#loop_body/rotation_matrix/mul_2:z:0#loop_body/rotation_matrix/mul_3:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_8Sub#loop_body/rotation_matrix/sub_5:z:0!loop_body/rotation_matrix/add:z:0*
T0*
_output_shapes
:j
%loop_body/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¨
#loop_body/rotation_matrix/truediv_1RealDiv#loop_body/rotation_matrix/sub_8:z:0.loop_body/rotation_matrix/truediv_1/y:output:0*
T0*
_output_shapes
:i
loop_body/rotation_matrix/ShapeConst*
_output_shapes
:*
dtype0*
valueB:w
-loop_body/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/loop_body/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/loop_body/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'loop_body/rotation_matrix/strided_sliceStridedSlice(loop_body/rotation_matrix/Shape:output:06loop_body/rotation_matrix/strided_slice/stack:output:08loop_body/rotation_matrix/strided_slice/stack_1:output:08loop_body/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
loop_body/rotation_matrix/Cos_2Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_1StridedSlice#loop_body/rotation_matrix/Cos_2:y:08loop_body/rotation_matrix/strided_slice_1/stack:output:0:loop_body/rotation_matrix/strided_slice_1/stack_1:output:0:loop_body/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Sin_2Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_2StridedSlice#loop_body/rotation_matrix/Sin_2:y:08loop_body/rotation_matrix/strided_slice_2/stack:output:0:loop_body/rotation_matrix/strided_slice_2/stack_1:output:0:loop_body/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
loop_body/rotation_matrix/NegNeg2loop_body/rotation_matrix/strided_slice_2:output:0*
T0*
_output_shapes

:
/loop_body/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÿ
)loop_body/rotation_matrix/strided_slice_3StridedSlice%loop_body/rotation_matrix/truediv:z:08loop_body/rotation_matrix/strided_slice_3/stack:output:0:loop_body/rotation_matrix/strided_slice_3/stack_1:output:0:loop_body/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Sin_3Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_4StridedSlice#loop_body/rotation_matrix/Sin_3:y:08loop_body/rotation_matrix/strided_slice_4/stack:output:0:loop_body/rotation_matrix/strided_slice_4/stack_1:output:0:loop_body/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Cos_3Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_5StridedSlice#loop_body/rotation_matrix/Cos_3:y:08loop_body/rotation_matrix/strided_slice_5/stack:output:0:loop_body/rotation_matrix/strided_slice_5/stack_1:output:0:loop_body/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
/loop_body/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
)loop_body/rotation_matrix/strided_slice_6StridedSlice'loop_body/rotation_matrix/truediv_1:z:08loop_body/rotation_matrix/strided_slice_6/stack:output:0:loop_body/rotation_matrix/strided_slice_6/stack_1:output:0:loop_body/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskj
(loop_body/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Á
&loop_body/rotation_matrix/zeros/packedPack0loop_body/rotation_matrix/strided_slice:output:01loop_body/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%loop_body/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
loop_body/rotation_matrix/zerosFill/loop_body/rotation_matrix/zeros/packed:output:0.loop_body/rotation_matrix/zeros/Const:output:0*
T0*
_output_shapes

:g
%loop_body/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ß
 loop_body/rotation_matrix/concatConcatV22loop_body/rotation_matrix/strided_slice_1:output:0!loop_body/rotation_matrix/Neg:y:02loop_body/rotation_matrix/strided_slice_3:output:02loop_body/rotation_matrix/strided_slice_4:output:02loop_body/rotation_matrix/strided_slice_5:output:02loop_body/rotation_matrix/strided_slice_6:output:0(loop_body/rotation_matrix/zeros:output:0.loop_body/rotation_matrix/concat/axis:output:0*
N*
T0*
_output_shapes

:r
loop_body/transform/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   à   à      q
'loop_body/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)loop_body/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)loop_body/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
!loop_body/transform/strided_sliceStridedSlice"loop_body/transform/Shape:output:00loop_body/transform/strided_slice/stack:output:02loop_body/transform/strided_slice/stack_1:output:02loop_body/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:c
loop_body/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
.loop_body/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3loop_body/ExpandDims:output:0)loop_body/rotation_matrix/concat:output:0*loop_body/transform/strided_slice:output:0'loop_body/transform/fill_value:output:0*(
_output_shapes
:àà*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR§
loop_body/SqueezeSqueezeCloop_body/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*$
_output_shapes
:àà*
squeeze_dims
 \
pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:g
pfor/ReshapeReshapeMax:output:0pfor/Reshape/shape:output:0*
T0*
_output_shapes
:R
pfor/range/startConst*
_output_shapes
: *
dtype0*
value	B : R
pfor/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :|

pfor/rangeRangepfor/range/start:output:0Max:output:0pfor/range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Kloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack:output:0Mloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1:output:0Mloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Jloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¿
<loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2TensorListReserveSloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shape:output:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0	*

shape_type0:éèÐv
4loop_body/stateful_uniform/RngReadAndSkip/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Gloop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Aloop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Î
4loop_body/stateful_uniform/RngReadAndSkip/pfor/whileWhileJloop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counter:output:0Ploop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterations:output:0=loop_body/stateful_uniform/RngReadAndSkip/pfor/Const:output:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2:handle:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:02loop_body_stateful_uniform_rngreadandskip_resource*loop_body/stateful_uniform/Cast/x:output:0%loop_body/stateful_uniform/Cast_1:y:0*^loop_body/stateful_uniform/RngReadAndSkip*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*$
_output_shapes
: : : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *J
bodyBR@
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_1804*J
condBR@
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_1803*#
output_shapes
: : : : : : : : y
6loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	  
Oloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Aloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2TensorListConcatV2=loop_body/stateful_uniform/RngReadAndSkip/pfor/while:output:3Xloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shape:output:0?loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0	*

shape_type0
=loop_body/stateful_uniform/strided_slice/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: {
9loop_body/stateful_uniform/strided_slice/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ³
4loop_body/stateful_uniform/strided_slice/pfor/concatConcatV2Floop_body/stateful_uniform/strided_slice/pfor/concat/values_0:output:07loop_body/stateful_uniform/strided_slice/stack:output:0Bloop_body/stateful_uniform/strided_slice/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
?loop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: }
;loop_body/stateful_uniform/strided_slice/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice/pfor/concat_1ConcatV2Hloop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0:output:09loop_body/stateful_uniform/strided_slice/stack_1:output:0Dloop_body/stateful_uniform/strided_slice/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
?loop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:}
;loop_body/stateful_uniform/strided_slice/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice/pfor/concat_2ConcatV2Hloop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0:output:09loop_body/stateful_uniform/strided_slice/stack_2:output:0Dloop_body/stateful_uniform/strided_slice/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:¸
:loop_body/stateful_uniform/strided_slice/pfor/StridedSliceStridedSliceJloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0=loop_body/stateful_uniform/strided_slice/pfor/concat:output:0?loop_body/stateful_uniform/strided_slice/pfor/concat_1:output:0?loop_body/stateful_uniform/strided_slice/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
;loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ø
5loop_body/stateful_uniform/Bitcast/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Dloop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack:output:0Floop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1:output:0Floop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Cloop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
5loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2TensorListReserveLloop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shape:output:0>loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌo
-loop_body/stateful_uniform/Bitcast/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
@loop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ|
:loop_body/stateful_uniform/Bitcast/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : É
-loop_body/stateful_uniform/Bitcast/pfor/whileStatelessWhileCloop_body/stateful_uniform/Bitcast/pfor/while/loop_counter:output:0Iloop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterations:output:06loop_body/stateful_uniform/Bitcast/pfor/Const:output:0>loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2:handle:0>loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0Cloop_body/stateful_uniform/strided_slice/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *C
body;R9
7loop_body_stateful_uniform_Bitcast_pfor_while_body_1869*C
cond;R9
7loop_body_stateful_uniform_Bitcast_pfor_while_cond_1868*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿr
/loop_body/stateful_uniform/Bitcast/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 
Hloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ô
:loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2TensorListConcatV26loop_body/stateful_uniform/Bitcast/pfor/while:output:3Qloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shape:output:08loop_body/stateful_uniform/Bitcast/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0
?loop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: }
;loop_body/stateful_uniform/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice_1/pfor/concatConcatV2Hloop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0:output:09loop_body/stateful_uniform/strided_slice_1/stack:output:0Dloop_body/stateful_uniform/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
=loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
8loop_body/stateful_uniform/strided_slice_1/pfor/concat_1ConcatV2Jloop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0:output:0;loop_body/stateful_uniform/strided_slice_1/stack_1:output:0Floop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
=loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
8loop_body/stateful_uniform/strided_slice_1/pfor/concat_2ConcatV2Jloop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0:output:0;loop_body/stateful_uniform/strided_slice_1/stack_2:output:0Floop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:À
<loop_body/stateful_uniform/strided_slice_1/pfor/StridedSliceStridedSliceJloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0?loop_body/stateful_uniform/strided_slice_1/pfor/concat:output:0Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_1:output:0Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
=loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7loop_body/stateful_uniform/Bitcast_1/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Floop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack:output:0Hloop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1:output:0Hloop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Eloop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
7loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2TensorListReserveNloop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shape:output:0@loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌq
/loop_body/stateful_uniform/Bitcast_1/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Bloop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ~
<loop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Û
/loop_body/stateful_uniform/Bitcast_1/pfor/whileStatelessWhileEloop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counter:output:0Kloop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterations:output:08loop_body/stateful_uniform/Bitcast_1/pfor/Const:output:0@loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2:handle:0@loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0Eloop_body/stateful_uniform/strided_slice_1/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *E
body=R;
9loop_body_stateful_uniform_Bitcast_1_pfor_while_body_1936*E
cond=R;
9loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_1935*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿt
1loop_body/stateful_uniform/Bitcast_1/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 
Jloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ü
<loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2TensorListConcatV28loop_body/stateful_uniform/Bitcast_1/pfor/while:output:3Sloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shape:output:0:loop_body/stateful_uniform/Bitcast_1/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0
Lloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Uloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÝ
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2TensorListReserve]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shape:output:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Qloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Kloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¾	
>loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/whileStatelessWhileTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counter:output:0Zloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterations:output:0Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const:output:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2:handle:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0Eloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2:tensor:0Cloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2:tensor:0)loop_body/stateful_uniform/shape:output:0@loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*L
_output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *T
bodyLRJ
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_1993*T
condLRJ
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_1992*K
output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: 
@loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 ª
Yloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¸
Kloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2TensorListConcatV2Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while:output:3bloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shape:output:0Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0j
(loop_body/stateful_uniform/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :l
*loop_body/stateful_uniform/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : k
)loop_body/stateful_uniform/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :º
'loop_body/stateful_uniform/mul/pfor/addAddV23loop_body/stateful_uniform/mul/pfor/Rank_1:output:02loop_body/stateful_uniform/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ·
+loop_body/stateful_uniform/mul/pfor/MaximumMaximum+loop_body/stateful_uniform/mul/pfor/add:z:01loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: ­
)loop_body/stateful_uniform/mul/pfor/ShapeShapeTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:0*
T0*
_output_shapes
:³
'loop_body/stateful_uniform/mul/pfor/subSub/loop_body/stateful_uniform/mul/pfor/Maximum:z:01loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: {
1loop_body/stateful_uniform/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ä
+loop_body/stateful_uniform/mul/pfor/ReshapeReshape+loop_body/stateful_uniform/mul/pfor/sub:z:0:loop_body/stateful_uniform/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:x
.loop_body/stateful_uniform/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Â
(loop_body/stateful_uniform/mul/pfor/TileTile7loop_body/stateful_uniform/mul/pfor/Tile/input:output:04loop_body/stateful_uniform/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
7loop_body/stateful_uniform/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9loop_body/stateful_uniform/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9loop_body/stateful_uniform/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1loop_body/stateful_uniform/mul/pfor/strided_sliceStridedSlice2loop_body/stateful_uniform/mul/pfor/Shape:output:0@loop_body/stateful_uniform/mul/pfor/strided_slice/stack:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice/stack_1:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
9loop_body/stateful_uniform/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
;loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3loop_body/stateful_uniform/mul/pfor/strided_slice_1StridedSlice2loop_body/stateful_uniform/mul/pfor/Shape:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack:output:0Dloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1:output:0Dloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskq
/loop_body/stateful_uniform/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
*loop_body/stateful_uniform/mul/pfor/concatConcatV2:loop_body/stateful_uniform/mul/pfor/strided_slice:output:01loop_body/stateful_uniform/mul/pfor/Tile:output:0<loop_body/stateful_uniform/mul/pfor/strided_slice_1:output:08loop_body/stateful_uniform/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:õ
-loop_body/stateful_uniform/mul/pfor/Reshape_1ReshapeTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:03loop_body/stateful_uniform/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
'loop_body/stateful_uniform/mul/pfor/MulMul6loop_body/stateful_uniform/mul/pfor/Reshape_1:output:0"loop_body/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$loop_body/stateful_uniform/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :h
&loop_body/stateful_uniform/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : g
%loop_body/stateful_uniform/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
#loop_body/stateful_uniform/pfor/addAddV2/loop_body/stateful_uniform/pfor/Rank_1:output:0.loop_body/stateful_uniform/pfor/add/y:output:0*
T0*
_output_shapes
: «
'loop_body/stateful_uniform/pfor/MaximumMaximum'loop_body/stateful_uniform/pfor/add:z:0-loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
: 
%loop_body/stateful_uniform/pfor/ShapeShape+loop_body/stateful_uniform/mul/pfor/Mul:z:0*
T0*
_output_shapes
:§
#loop_body/stateful_uniform/pfor/subSub+loop_body/stateful_uniform/pfor/Maximum:z:0-loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
: w
-loop_body/stateful_uniform/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¸
'loop_body/stateful_uniform/pfor/ReshapeReshape'loop_body/stateful_uniform/pfor/sub:z:06loop_body/stateful_uniform/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:t
*loop_body/stateful_uniform/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¶
$loop_body/stateful_uniform/pfor/TileTile3loop_body/stateful_uniform/pfor/Tile/input:output:00loop_body/stateful_uniform/pfor/Reshape:output:0*
T0*
_output_shapes
: }
3loop_body/stateful_uniform/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5loop_body/stateful_uniform/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5loop_body/stateful_uniform/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
-loop_body/stateful_uniform/pfor/strided_sliceStridedSlice.loop_body/stateful_uniform/pfor/Shape:output:0<loop_body/stateful_uniform/pfor/strided_slice/stack:output:0>loop_body/stateful_uniform/pfor/strided_slice/stack_1:output:0>loop_body/stateful_uniform/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
5loop_body/stateful_uniform/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
7loop_body/stateful_uniform/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
7loop_body/stateful_uniform/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
/loop_body/stateful_uniform/pfor/strided_slice_1StridedSlice.loop_body/stateful_uniform/pfor/Shape:output:0>loop_body/stateful_uniform/pfor/strided_slice_1/stack:output:0@loop_body/stateful_uniform/pfor/strided_slice_1/stack_1:output:0@loop_body/stateful_uniform/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskm
+loop_body/stateful_uniform/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
&loop_body/stateful_uniform/pfor/concatConcatV26loop_body/stateful_uniform/pfor/strided_slice:output:0-loop_body/stateful_uniform/pfor/Tile:output:08loop_body/stateful_uniform/pfor/strided_slice_1:output:04loop_body/stateful_uniform/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ä
)loop_body/stateful_uniform/pfor/Reshape_1Reshape+loop_body/stateful_uniform/mul/pfor/Mul:z:0/loop_body/stateful_uniform/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
%loop_body/stateful_uniform/pfor/AddV2AddV22loop_body/stateful_uniform/pfor/Reshape_1:output:0'loop_body/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Cos_1/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_3/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_3/pfor/addAddV24loop_body/rotation_matrix/mul_3/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_3/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_3/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_3/pfor/add:z:02loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_3/pfor/ShapeShape,loop_body/rotation_matrix/Cos_1/pfor/Cos:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_3/pfor/subSub0loop_body/rotation_matrix/mul_3/pfor/Maximum:z:02loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_3/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_3/pfor/sub:z:0;loop_body/rotation_matrix/mul_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_3/pfor/TileTile8loop_body/rotation_matrix/mul_3/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_3/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_3/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_3/pfor/concatConcatV2;loop_body/rotation_matrix/mul_3/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_3/pfor/Tile:output:0=loop_body/rotation_matrix/mul_3/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/mul_3/pfor/Reshape_1Reshape,loop_body/rotation_matrix/Cos_1/pfor/Cos:y:04loop_body/rotation_matrix/mul_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_3/pfor/MulMul7loop_body/rotation_matrix/mul_3/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_7:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Sin_1/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_2/pfor/addAddV24loop_body/rotation_matrix/mul_2/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_2/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_2/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_2/pfor/add:z:02loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_2/pfor/ShapeShape,loop_body/rotation_matrix/Sin_1/pfor/Sin:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_2/pfor/subSub0loop_body/rotation_matrix/mul_2/pfor/Maximum:z:02loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_2/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_2/pfor/sub:z:0;loop_body/rotation_matrix/mul_2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_2/pfor/TileTile8loop_body/rotation_matrix/mul_2/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_2/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_2/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_2/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_2/pfor/concatConcatV2;loop_body/rotation_matrix/mul_2/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_2/pfor/Tile:output:0=loop_body/rotation_matrix/mul_2/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/mul_2/pfor/Reshape_1Reshape,loop_body/rotation_matrix/Sin_1/pfor/Sin:y:04loop_body/rotation_matrix/mul_2/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_2/pfor/MulMul7loop_body/rotation_matrix/mul_2/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_6:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
'loop_body/rotation_matrix/add/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :k
)loop_body/rotation_matrix/add/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
*loop_body/rotation_matrix/add/pfor/MaximumMaximum2loop_body/rotation_matrix/add/pfor/Rank_1:output:00loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: 
(loop_body/rotation_matrix/add/pfor/ShapeShape,loop_body/rotation_matrix/mul_2/pfor/Mul:z:0*
T0*
_output_shapes
:°
&loop_body/rotation_matrix/add/pfor/subSub.loop_body/rotation_matrix/add/pfor/Maximum:z:00loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: z
0loop_body/rotation_matrix/add/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Á
*loop_body/rotation_matrix/add/pfor/ReshapeReshape*loop_body/rotation_matrix/add/pfor/sub:z:09loop_body/rotation_matrix/add/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:w
-loop_body/rotation_matrix/add/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¿
'loop_body/rotation_matrix/add/pfor/TileTile6loop_body/rotation_matrix/add/pfor/Tile/input:output:03loop_body/rotation_matrix/add/pfor/Reshape:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/add/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8loop_body/rotation_matrix/add/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8loop_body/rotation_matrix/add/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
0loop_body/rotation_matrix/add/pfor/strided_sliceStridedSlice1loop_body/rotation_matrix/add/pfor/Shape:output:0?loop_body/rotation_matrix/add/pfor/strided_slice/stack:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice/stack_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/add/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_1StridedSlice1loop_body/rotation_matrix/add/pfor/Shape:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskp
.loop_body/rotation_matrix/add/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
)loop_body/rotation_matrix/add/pfor/concatConcatV29loop_body/rotation_matrix/add/pfor/strided_slice:output:00loop_body/rotation_matrix/add/pfor/Tile:output:0;loop_body/rotation_matrix/add/pfor/strided_slice_1:output:07loop_body/rotation_matrix/add/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ë
,loop_body/rotation_matrix/add/pfor/Reshape_1Reshape,loop_body/rotation_matrix/mul_2/pfor/Mul:z:02loop_body/rotation_matrix/add/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*loop_body/rotation_matrix/add/pfor/Shape_1Shape,loop_body/rotation_matrix/mul_3/pfor/Mul:z:0*
T0*
_output_shapes
:´
(loop_body/rotation_matrix/add/pfor/sub_1Sub.loop_body/rotation_matrix/add/pfor/Maximum:z:02loop_body/rotation_matrix/add/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/add/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/add/pfor/Reshape_2Reshape,loop_body/rotation_matrix/add/pfor/sub_1:z:0;loop_body/rotation_matrix/add/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/add/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/add/pfor/Tile_1Tile8loop_body/rotation_matrix/add/pfor/Tile_1/input:output:05loop_body/rotation_matrix/add/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/add/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_2StridedSlice3loop_body/rotation_matrix/add/pfor/Shape_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_2/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/add/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_3StridedSlice3loop_body/rotation_matrix/add/pfor/Shape_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_3/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/add/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Î
+loop_body/rotation_matrix/add/pfor/concat_1ConcatV2;loop_body/rotation_matrix/add/pfor/strided_slice_2:output:02loop_body/rotation_matrix/add/pfor/Tile_1:output:0;loop_body/rotation_matrix/add/pfor/strided_slice_3:output:09loop_body/rotation_matrix/add/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Í
,loop_body/rotation_matrix/add/pfor/Reshape_3Reshape,loop_body/rotation_matrix/mul_3/pfor/Mul:z:04loop_body/rotation_matrix/add/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
(loop_body/rotation_matrix/add/pfor/AddV2AddV25loop_body/rotation_matrix/add/pfor/Reshape_1:output:05loop_body/rotation_matrix/add/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_8/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/sub_8/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :»
(loop_body/rotation_matrix/sub_8/pfor/addAddV22loop_body/rotation_matrix/sub_8/pfor/Rank:output:03loop_body/rotation_matrix/sub_8/pfor/add/y:output:0*
T0*
_output_shapes
: m
+loop_body/rotation_matrix/sub_8/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
,loop_body/rotation_matrix/sub_8/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0,loop_body/rotation_matrix/sub_8/pfor/add:z:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_8/pfor/ShapeShape,loop_body/rotation_matrix/add/pfor/AddV2:z:0*
T0*
_output_shapes
:¸
(loop_body/rotation_matrix/sub_8/pfor/subSub0loop_body/rotation_matrix/sub_8/pfor/Maximum:z:04loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_8/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_8/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_8/pfor/sub:z:0;loop_body/rotation_matrix/sub_8/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_8/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_8/pfor/TileTile8loop_body/rotation_matrix/sub_8/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_8/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_8/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_8/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_8/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_8/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_8/pfor/concatConcatV2;loop_body/rotation_matrix/sub_8/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_8/pfor/Tile:output:0=loop_body/rotation_matrix/sub_8/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_8/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/sub_8/pfor/Reshape_1Reshape,loop_body/rotation_matrix/add/pfor/AddV2:z:04loop_body/rotation_matrix/sub_8/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
*loop_body/rotation_matrix/sub_8/pfor/Sub_1Sub#loop_body/rotation_matrix/sub_5:z:07loop_body/rotation_matrix/sub_8/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-loop_body/rotation_matrix/truediv_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :q
/loop_body/rotation_matrix/truediv_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : p
.loop_body/rotation_matrix/truediv_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :É
,loop_body/rotation_matrix/truediv_1/pfor/addAddV28loop_body/rotation_matrix/truediv_1/pfor/Rank_1:output:07loop_body/rotation_matrix/truediv_1/pfor/add/y:output:0*
T0*
_output_shapes
: Æ
0loop_body/rotation_matrix/truediv_1/pfor/MaximumMaximum0loop_body/rotation_matrix/truediv_1/pfor/add:z:06loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
.loop_body/rotation_matrix/truediv_1/pfor/ShapeShape.loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:0*
T0*
_output_shapes
:Â
,loop_body/rotation_matrix/truediv_1/pfor/subSub4loop_body/rotation_matrix/truediv_1/pfor/Maximum:z:06loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/truediv_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ó
0loop_body/rotation_matrix/truediv_1/pfor/ReshapeReshape0loop_body/rotation_matrix/truediv_1/pfor/sub:z:0?loop_body/rotation_matrix/truediv_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:}
3loop_body/rotation_matrix/truediv_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Ñ
-loop_body/rotation_matrix/truediv_1/pfor/TileTile<loop_body/rotation_matrix/truediv_1/pfor/Tile/input:output:09loop_body/rotation_matrix/truediv_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
<loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6loop_body/rotation_matrix/truediv_1/pfor/strided_sliceStridedSlice7loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Eloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
@loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
@loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
8loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1StridedSlice7loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack:output:0Iloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1:output:0Iloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskv
4loop_body/rotation_matrix/truediv_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
/loop_body/rotation_matrix/truediv_1/pfor/concatConcatV2?loop_body/rotation_matrix/truediv_1/pfor/strided_slice:output:06loop_body/rotation_matrix/truediv_1/pfor/Tile:output:0Aloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1:output:0=loop_body/rotation_matrix/truediv_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ù
2loop_body/rotation_matrix/truediv_1/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:08loop_body/rotation_matrix/truediv_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
0loop_body/rotation_matrix/truediv_1/pfor/RealDivRealDiv;loop_body/rotation_matrix/truediv_1/pfor/Reshape_1:output:0.loop_body/rotation_matrix/truediv_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_6/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_6/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_6/stack:output:0Cloop_body/rotation_matrix/strided_slice_6/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_6/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_6/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_6/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_6/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:¿
;loop_body/rotation_matrix/strided_slice_6/pfor/StridedSliceStridedSlice4loop_body/rotation_matrix/truediv_1/pfor/RealDiv:z:0>loop_body/rotation_matrix/strided_slice_6/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_6/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_6/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Cos_3/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_5/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_5/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_5/stack:output:0Cloop_body/rotation_matrix/strided_slice_5/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_5/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_5/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_5/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_5/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_5/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Cos_3/pfor/Cos:y:0>loop_body/rotation_matrix/strided_slice_5/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_5/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_5/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Sin_3/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_4/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_4/stack:output:0Cloop_body/rotation_matrix/strided_slice_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_4/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_4/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_4/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_4/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_4/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Sin_3/pfor/Sin:y:0>loop_body/rotation_matrix/strided_slice_4/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_4/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_4/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
&loop_body/rotation_matrix/Sin/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_1/pfor/addAddV24loop_body/rotation_matrix/mul_1/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_1/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_1/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_1/pfor/add:z:02loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_1/pfor/ShapeShape*loop_body/rotation_matrix/Sin/pfor/Sin:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_1/pfor/subSub0loop_body/rotation_matrix/mul_1/pfor/Maximum:z:02loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_1/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_1/pfor/sub:z:0;loop_body/rotation_matrix/mul_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_1/pfor/TileTile8loop_body/rotation_matrix/mul_1/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_1/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_1/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_1/pfor/concatConcatV2;loop_body/rotation_matrix/mul_1/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_1/pfor/Tile:output:0=loop_body/rotation_matrix/mul_1/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Í
.loop_body/rotation_matrix/mul_1/pfor/Reshape_1Reshape*loop_body/rotation_matrix/Sin/pfor/Sin:y:04loop_body/rotation_matrix/mul_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_1/pfor/MulMul7loop_body/rotation_matrix/mul_1/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&loop_body/rotation_matrix/Cos/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
'loop_body/rotation_matrix/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :k
)loop_body/rotation_matrix/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : j
(loop_body/rotation_matrix/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :·
&loop_body/rotation_matrix/mul/pfor/addAddV22loop_body/rotation_matrix/mul/pfor/Rank_1:output:01loop_body/rotation_matrix/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ´
*loop_body/rotation_matrix/mul/pfor/MaximumMaximum*loop_body/rotation_matrix/mul/pfor/add:z:00loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: 
(loop_body/rotation_matrix/mul/pfor/ShapeShape*loop_body/rotation_matrix/Cos/pfor/Cos:y:0*
T0*
_output_shapes
:°
&loop_body/rotation_matrix/mul/pfor/subSub.loop_body/rotation_matrix/mul/pfor/Maximum:z:00loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: z
0loop_body/rotation_matrix/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Á
*loop_body/rotation_matrix/mul/pfor/ReshapeReshape*loop_body/rotation_matrix/mul/pfor/sub:z:09loop_body/rotation_matrix/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:w
-loop_body/rotation_matrix/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¿
'loop_body/rotation_matrix/mul/pfor/TileTile6loop_body/rotation_matrix/mul/pfor/Tile/input:output:03loop_body/rotation_matrix/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8loop_body/rotation_matrix/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8loop_body/rotation_matrix/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
0loop_body/rotation_matrix/mul/pfor/strided_sliceStridedSlice1loop_body/rotation_matrix/mul/pfor/Shape:output:0?loop_body/rotation_matrix/mul/pfor/strided_slice/stack:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice/stack_1:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul/pfor/strided_slice_1StridedSlice1loop_body/rotation_matrix/mul/pfor/Shape:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1:output:0Cloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskp
.loop_body/rotation_matrix/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
)loop_body/rotation_matrix/mul/pfor/concatConcatV29loop_body/rotation_matrix/mul/pfor/strided_slice:output:00loop_body/rotation_matrix/mul/pfor/Tile:output:0;loop_body/rotation_matrix/mul/pfor/strided_slice_1:output:07loop_body/rotation_matrix/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:É
,loop_body/rotation_matrix/mul/pfor/Reshape_1Reshape*loop_body/rotation_matrix/Cos/pfor/Cos:y:02loop_body/rotation_matrix/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
&loop_body/rotation_matrix/mul/pfor/MulMul5loop_body/rotation_matrix/mul/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/sub_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :Â
,loop_body/rotation_matrix/sub_3/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:02loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_3/pfor/ShapeShape*loop_body/rotation_matrix/mul/pfor/Mul:z:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/sub_3/pfor/subSub0loop_body/rotation_matrix/sub_3/pfor/Maximum:z:02loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_3/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_3/pfor/sub:z:0;loop_body/rotation_matrix/sub_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_3/pfor/TileTile8loop_body/rotation_matrix/sub_3/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_3/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_3/pfor/concatConcatV2;loop_body/rotation_matrix/sub_3/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_3/pfor/Tile:output:0=loop_body/rotation_matrix/sub_3/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Í
.loop_body/rotation_matrix/sub_3/pfor/Reshape_1Reshape*loop_body/rotation_matrix/mul/pfor/Mul:z:04loop_body/rotation_matrix/sub_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,loop_body/rotation_matrix/sub_3/pfor/Shape_1Shape,loop_body/rotation_matrix/mul_1/pfor/Mul:z:0*
T0*
_output_shapes
:º
*loop_body/rotation_matrix/sub_3/pfor/sub_1Sub0loop_body/rotation_matrix/sub_3/pfor/Maximum:z:04loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:0*
T0*
_output_shapes
: ~
4loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:Í
.loop_body/rotation_matrix/sub_3/pfor/Reshape_2Reshape.loop_body/rotation_matrix/sub_3/pfor/sub_1:z:0=loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:{
1loop_body/rotation_matrix/sub_3/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:Ë
+loop_body/rotation_matrix/sub_3/pfor/Tile_1Tile:loop_body/rotation_matrix/sub_3/pfor/Tile_1/input:output:07loop_body/rotation_matrix/sub_3/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_2StridedSlice5loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_3StridedSlice5loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskt
2loop_body/rotation_matrix/sub_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
-loop_body/rotation_matrix/sub_3/pfor/concat_1ConcatV2=loop_body/rotation_matrix/sub_3/pfor/strided_slice_2:output:04loop_body/rotation_matrix/sub_3/pfor/Tile_1:output:0=loop_body/rotation_matrix/sub_3/pfor/strided_slice_3:output:0;loop_body/rotation_matrix/sub_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ñ
.loop_body/rotation_matrix/sub_3/pfor/Reshape_3Reshape,loop_body/rotation_matrix/mul_1/pfor/Mul:z:06loop_body/rotation_matrix/sub_3/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
*loop_body/rotation_matrix/sub_3/pfor/Sub_2Sub7loop_body/rotation_matrix/sub_3/pfor/Reshape_1:output:07loop_body/rotation_matrix/sub_3/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_4/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/sub_4/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :»
(loop_body/rotation_matrix/sub_4/pfor/addAddV22loop_body/rotation_matrix/sub_4/pfor/Rank:output:03loop_body/rotation_matrix/sub_4/pfor/add/y:output:0*
T0*
_output_shapes
: m
+loop_body/rotation_matrix/sub_4/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
,loop_body/rotation_matrix/sub_4/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0,loop_body/rotation_matrix/sub_4/pfor/add:z:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_4/pfor/ShapeShape.loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:0*
T0*
_output_shapes
:¸
(loop_body/rotation_matrix/sub_4/pfor/subSub0loop_body/rotation_matrix/sub_4/pfor/Maximum:z:04loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_4/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_4/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_4/pfor/sub:z:0;loop_body/rotation_matrix/sub_4/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_4/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_4/pfor/TileTile8loop_body/rotation_matrix/sub_4/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_4/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_4/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_4/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_4/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_4/pfor/concatConcatV2;loop_body/rotation_matrix/sub_4/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_4/pfor/Tile:output:0=loop_body/rotation_matrix/sub_4/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ñ
.loop_body/rotation_matrix/sub_4/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:04loop_body/rotation_matrix/sub_4/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
*loop_body/rotation_matrix/sub_4/pfor/Sub_1Sub!loop_body/rotation_matrix/sub:z:07loop_body/rotation_matrix/sub_4/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+loop_body/rotation_matrix/truediv/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :o
-loop_body/rotation_matrix/truediv/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : n
,loop_body/rotation_matrix/truediv/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ã
*loop_body/rotation_matrix/truediv/pfor/addAddV26loop_body/rotation_matrix/truediv/pfor/Rank_1:output:05loop_body/rotation_matrix/truediv/pfor/add/y:output:0*
T0*
_output_shapes
: À
.loop_body/rotation_matrix/truediv/pfor/MaximumMaximum.loop_body/rotation_matrix/truediv/pfor/add:z:04loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: 
,loop_body/rotation_matrix/truediv/pfor/ShapeShape.loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:0*
T0*
_output_shapes
:¼
*loop_body/rotation_matrix/truediv/pfor/subSub2loop_body/rotation_matrix/truediv/pfor/Maximum:z:04loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: ~
4loop_body/rotation_matrix/truediv/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Í
.loop_body/rotation_matrix/truediv/pfor/ReshapeReshape.loop_body/rotation_matrix/truediv/pfor/sub:z:0=loop_body/rotation_matrix/truediv/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:{
1loop_body/rotation_matrix/truediv/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Ë
+loop_body/rotation_matrix/truediv/pfor/TileTile:loop_body/rotation_matrix/truediv/pfor/Tile/input:output:07loop_body/rotation_matrix/truediv/pfor/Reshape:output:0*
T0*
_output_shapes
: 
:loop_body/rotation_matrix/truediv/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/truediv/pfor/strided_sliceStridedSlice5loop_body/rotation_matrix/truediv/pfor/Shape:output:0Cloop_body/rotation_matrix/truediv/pfor/strided_slice/stack:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
>loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6loop_body/rotation_matrix/truediv/pfor/strided_slice_1StridedSlice5loop_body/rotation_matrix/truediv/pfor/Shape:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack:output:0Gloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1:output:0Gloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskt
2loop_body/rotation_matrix/truediv/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ú
-loop_body/rotation_matrix/truediv/pfor/concatConcatV2=loop_body/rotation_matrix/truediv/pfor/strided_slice:output:04loop_body/rotation_matrix/truediv/pfor/Tile:output:0?loop_body/rotation_matrix/truediv/pfor/strided_slice_1:output:0;loop_body/rotation_matrix/truediv/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Õ
0loop_body/rotation_matrix/truediv/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:06loop_body/rotation_matrix/truediv/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
.loop_body/rotation_matrix/truediv/pfor/RealDivRealDiv9loop_body/rotation_matrix/truediv/pfor/Reshape_1:output:0,loop_body/rotation_matrix/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_3/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_3/stack:output:0Cloop_body/rotation_matrix/strided_slice_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_3/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_3/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_3/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_3/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:½
;loop_body/rotation_matrix/strided_slice_3/pfor/StridedSliceStridedSlice2loop_body/rotation_matrix/truediv/pfor/RealDiv:z:0>loop_body/rotation_matrix/strided_slice_3/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_3/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_3/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Sin_2/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_2/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_2/stack:output:0Cloop_body/rotation_matrix/strided_slice_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_2/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_2/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_2/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_2/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_2/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Sin_2/pfor/Sin:y:0>loop_body/rotation_matrix/strided_slice_2/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_2/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_2/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask©
&loop_body/rotation_matrix/Neg/pfor/NegNegDloop_body/rotation_matrix/strided_slice_2/pfor/StridedSlice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Cos_2/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_1/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_1/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_1/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_1/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_1/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Cos_2/pfor/Cos:y:0>loop_body/rotation_matrix/strided_slice_1/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_1/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask|
+loop_body/rotation_matrix/concat/pfor/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
Eloop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:w
5loop_body/rotation_matrix/concat/pfor/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :ì
/loop_body/rotation_matrix/concat/pfor/ones_likeFillNloop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensor:output:0>loop_body/rotation_matrix/concat/pfor/ones_like/Const:output:0*
T0*
_output_shapes
:
3loop_body/rotation_matrix/concat/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿÕ
-loop_body/rotation_matrix/concat/pfor/ReshapeReshape8loop_body/rotation_matrix/concat/pfor/ones_like:output:0<loop_body/rotation_matrix/concat/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
5loop_body/rotation_matrix/concat/pfor/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ¶
/loop_body/rotation_matrix/concat/pfor/Reshape_1Reshapepfor/Reshape:output:0>loop_body/rotation_matrix/concat/pfor/Reshape_1/shape:output:0*
T0*
_output_shapes
:s
1loop_body/rotation_matrix/concat/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,loop_body/rotation_matrix/concat/pfor/concatConcatV28loop_body/rotation_matrix/concat/pfor/Reshape_1:output:06loop_body/rotation_matrix/concat/pfor/Reshape:output:0:loop_body/rotation_matrix/concat/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:v
4loop_body/rotation_matrix/concat/pfor/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ô
0loop_body/rotation_matrix/concat/pfor/ExpandDims
ExpandDims(loop_body/rotation_matrix/zeros:output:0=loop_body/rotation_matrix/concat/pfor/ExpandDims/dim:output:0*
T0*"
_output_shapes
:Ú
*loop_body/rotation_matrix/concat/pfor/TileTile9loop_body/rotation_matrix/concat/pfor/ExpandDims:output:05loop_body/rotation_matrix/concat/pfor/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
4loop_body/rotation_matrix/concat/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Ò
2loop_body/rotation_matrix/concat/pfor/GreaterEqualGreaterEqual.loop_body/rotation_matrix/concat/axis:output:0=loop_body/rotation_matrix/concat/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/concat/pfor/CastCast6loop_body/rotation_matrix/concat/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: ³
)loop_body/rotation_matrix/concat/pfor/addAddV2.loop_body/rotation_matrix/concat/axis:output:0.loop_body/rotation_matrix/concat/pfor/Cast:y:0*
T0*
_output_shapes
: ç
.loop_body/rotation_matrix/concat/pfor/concat_1ConcatV2Dloop_body/rotation_matrix/strided_slice_1/pfor/StridedSlice:output:0*loop_body/rotation_matrix/Neg/pfor/Neg:y:0Dloop_body/rotation_matrix/strided_slice_3/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_4/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_5/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_6/pfor/StridedSlice:output:03loop_body/rotation_matrix/concat/pfor/Tile:output:0-loop_body/rotation_matrix/concat/pfor/add:z:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
loop_body/SelectV2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : _
loop_body/SelectV2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :
loop_body/SelectV2/pfor/addAddV2%loop_body/SelectV2/pfor/Rank:output:0&loop_body/SelectV2/pfor/add/y:output:0*
T0*
_output_shapes
: `
loop_body/SelectV2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :`
loop_body/SelectV2/pfor/Rank_2Const*
_output_shapes
: *
dtype0*
value	B : a
loop_body/SelectV2/pfor/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
loop_body/SelectV2/pfor/add_1AddV2'loop_body/SelectV2/pfor/Rank_2:output:0(loop_body/SelectV2/pfor/add_1/y:output:0*
T0*
_output_shapes
: 
loop_body/SelectV2/pfor/MaximumMaximum'loop_body/SelectV2/pfor/Rank_1:output:0loop_body/SelectV2/pfor/add:z:0*
T0*
_output_shapes
: 
!loop_body/SelectV2/pfor/Maximum_1Maximum!loop_body/SelectV2/pfor/add_1:z:0#loop_body/SelectV2/pfor/Maximum:z:0*
T0*
_output_shapes
: `
loop_body/SelectV2/pfor/ShapeShapepfor/range:output:0*
T0*
_output_shapes
:
loop_body/SelectV2/pfor/subSub%loop_body/SelectV2/pfor/Maximum_1:z:0'loop_body/SelectV2/pfor/Rank_1:output:0*
T0*
_output_shapes
: o
%loop_body/SelectV2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: 
loop_body/SelectV2/pfor/ReshapeReshapeloop_body/SelectV2/pfor/sub:z:0.loop_body/SelectV2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:l
"loop_body/SelectV2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:
loop_body/SelectV2/pfor/TileTile+loop_body/SelectV2/pfor/Tile/input:output:0(loop_body/SelectV2/pfor/Reshape:output:0*
T0*
_output_shapes
: u
+loop_body/SelectV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-loop_body/SelectV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-loop_body/SelectV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%loop_body/SelectV2/pfor/strided_sliceStridedSlice&loop_body/SelectV2/pfor/Shape:output:04loop_body/SelectV2/pfor/strided_slice/stack:output:06loop_body/SelectV2/pfor/strided_slice/stack_1:output:06loop_body/SelectV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
-loop_body/SelectV2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/loop_body/SelectV2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/loop_body/SelectV2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ë
'loop_body/SelectV2/pfor/strided_slice_1StridedSlice&loop_body/SelectV2/pfor/Shape:output:06loop_body/SelectV2/pfor/strided_slice_1/stack:output:08loop_body/SelectV2/pfor/strided_slice_1/stack_1:output:08loop_body/SelectV2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maske
#loop_body/SelectV2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
loop_body/SelectV2/pfor/concatConcatV2.loop_body/SelectV2/pfor/strided_slice:output:0%loop_body/SelectV2/pfor/Tile:output:00loop_body/SelectV2/pfor/strided_slice_1:output:0,loop_body/SelectV2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
!loop_body/SelectV2/pfor/Reshape_1Reshapepfor/range:output:0'loop_body/SelectV2/pfor/concat:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 loop_body/SelectV2/pfor/SelectV2SelectV2loop_body/Greater:z:0*loop_body/SelectV2/pfor/Reshape_1:output:0loop_body/SelectV2/e:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%loop_body/GatherV2/pfor/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : î
 loop_body/GatherV2/pfor/GatherV2GatherV2inputs)loop_body/SelectV2/pfor/SelectV2:output:0.loop_body/GatherV2/pfor/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿààj
(loop_body/ExpandDims/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : ­
&loop_body/ExpandDims/pfor/GreaterEqualGreaterEqual!loop_body/ExpandDims/dim:output:01loop_body/ExpandDims/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: 
loop_body/ExpandDims/pfor/CastCast*loop_body/ExpandDims/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
loop_body/ExpandDims/pfor/addAddV2!loop_body/ExpandDims/dim:output:0"loop_body/ExpandDims/pfor/Cast:y:0*
T0*
_output_shapes
: À
$loop_body/ExpandDims/pfor/ExpandDims
ExpandDims)loop_body/GatherV2/pfor/GatherV2:output:0!loop_body/ExpandDims/pfor/add:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà
Gloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Iloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Iloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
Aloop_body/transform/ImageProjectiveTransformV3/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Ploop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Oloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÎ
Aloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2TensorListReserveXloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shape:output:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
9loop_body/transform/ImageProjectiveTransformV3/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Lloop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Floop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : þ
9loop_body/transform/ImageProjectiveTransformV3/pfor/whileStatelessWhileOloop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counter:output:0Uloop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterations:output:0Bloop_body/transform/ImageProjectiveTransformV3/pfor/Const:output:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2:handle:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0-loop_body/ExpandDims/pfor/ExpandDims:output:07loop_body/rotation_matrix/concat/pfor/concat_1:output:0*loop_body/transform/strided_slice:output:0'loop_body/transform/fill_value:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*^
_output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *O
bodyGRE
Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_body_2494*O
condGRE
Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_2493*]
output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: ~
;loop_body/transform/ImageProjectiveTransformV3/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 ±
Tloop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*)
value B"ÿÿÿÿ   ÿÿÿÿÿÿÿÿ   ²
Floop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2TensorListConcatV2Bloop_body/transform/ImageProjectiveTransformV3/pfor/while:output:3]loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shape:output:0Dloop_body/transform/ImageProjectiveTransformV3/pfor/Const_1:output:0*D
_output_shapes2
0:ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0Í
loop_body/Squeeze/pfor/SqueezeSqueezeOloop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2:tensor:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
squeeze_dims

IdentityIdentity'loop_body/Squeeze/pfor/Squeeze:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà©
NoOpNoOp*^loop_body/stateful_uniform/RngReadAndSkip5^loop_body/stateful_uniform/RngReadAndSkip/pfor/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿàà: 2V
)loop_body/stateful_uniform/RngReadAndSkip)loop_body/stateful_uniform/RngReadAndSkip2l
4loop_body/stateful_uniform/RngReadAndSkip/pfor/while4loop_body/stateful_uniform/RngReadAndSkip/pfor/while:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
é	
µ
D__inference_sequential_layer_call_and_return_conditional_losses_4097

inputsP
Brandom_rotation_loop_body_stateful_uniform_rngreadandskip_resource:	?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:©4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp¢9random_rotation/loop_body/stateful_uniform/RngReadAndSkip¢Drandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/whileK
random_flip/map/ShapeShapeinputs*
T0*
_output_shapes
:m
#random_flip/map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_flip/map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_flip/map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
random_flip/map/strided_sliceStridedSlicerandom_flip/map/Shape:output:0,random_flip/map/strided_slice/stack:output:0.random_flip/map/strided_slice/stack_1:output:0.random_flip/map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+random_flip/map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿâ
random_flip/map/TensorArrayV2TensorListReserve4random_flip/map/TensorArrayV2/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Erandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      ù
7random_flip/map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsNrandom_flip/map/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒW
random_flip/map/ConstConst*
_output_shapes
: *
dtype0*
value	B : x
-random_flip/map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿæ
random_flip/map/TensorArrayV2_1TensorListReserve6random_flip/map/TensorArrayV2_1/element_shape:output:0&random_flip/map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒd
"random_flip/map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : â
random_flip/map/whileStatelessWhile+random_flip/map/while/loop_counter:output:0&random_flip/map/strided_slice:output:0random_flip/map/Const:output:0(random_flip/map/TensorArrayV2_1:handle:0&random_flip/map/strided_slice:output:0Grandom_flip/map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *+
body#R!
random_flip_map_while_body_3068*+
cond#R!
random_flip_map_while_cond_3067*
output_shapes
: : : : : : 
@random_flip/map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      ø
2random_flip/map/TensorArrayV2Stack/TensorListStackTensorListStackrandom_flip/map/while:output:3Irandom_flip/map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
element_dtype0
random_rotation/ShapeShape;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:m
#random_rotation/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%random_rotation/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%random_rotation/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
random_rotation/strided_sliceStridedSlicerandom_rotation/Shape:output:0,random_rotation/strided_slice/stack:output:0.random_rotation/strided_slice/stack_1:output:0.random_rotation/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masky
random_rotation/Rank/packedPack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:V
random_rotation/RankConst*
_output_shapes
: *
dtype0*
value	B :]
random_rotation/range/startConst*
_output_shapes
: *
dtype0*
value	B : ]
random_rotation/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¥
random_rotation/rangeRange$random_rotation/range/start:output:0random_rotation/Rank:output:0$random_rotation/range/delta:output:0*
_output_shapes
:w
random_rotation/Max/inputPack&random_rotation/strided_slice:output:0*
N*
T0*
_output_shapes
:
random_rotation/MaxMax"random_rotation/Max/input:output:0random_rotation/range:output:0*
T0*
_output_shapes
: x
6random_rotation/loop_body/PlaceholderWithDefault/inputConst*
_output_shapes
: *
dtype0*
value	B : ½
0random_rotation/loop_body/PlaceholderWithDefaultPlaceholderWithDefault?random_rotation/loop_body/PlaceholderWithDefault/input:output:0*
_output_shapes
: *
dtype0*
shape: 
random_rotation/loop_body/ShapeShape;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*
_output_shapes
:w
-random_rotation/loop_body/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/random_rotation/loop_body/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/random_rotation/loop_body/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'random_rotation/loop_body/strided_sliceStridedSlice(random_rotation/loop_body/Shape:output:06random_rotation/loop_body/strided_slice/stack:output:08random_rotation/loop_body/strided_slice/stack_1:output:08random_rotation/loop_body/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#random_rotation/loop_body/Greater/yConst*
_output_shapes
: *
dtype0*
value	B :­
!random_rotation/loop_body/GreaterGreater0random_rotation/loop_body/strided_slice:output:0,random_rotation/loop_body/Greater/y:output:0*
T0*
_output_shapes
: f
$random_rotation/loop_body/SelectV2/eConst*
_output_shapes
: *
dtype0*
value	B : à
"random_rotation/loop_body/SelectV2SelectV2%random_rotation/loop_body/Greater:z:09random_rotation/loop_body/PlaceholderWithDefault:output:0-random_rotation/loop_body/SelectV2/e:output:0*
T0*
_output_shapes
: i
'random_rotation/loop_body/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
"random_rotation/loop_body/GatherV2GatherV2;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:0+random_rotation/loop_body/SelectV2:output:00random_rotation/loop_body/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*$
_output_shapes
:ààz
0random_rotation/loop_body/stateful_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB:s
.random_rotation/loop_body/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿s
.random_rotation/loop_body/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?z
0random_rotation/loop_body/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: Î
/random_rotation/loop_body/stateful_uniform/ProdProd9random_rotation/loop_body/stateful_uniform/shape:output:09random_rotation/loop_body/stateful_uniform/Const:output:0*
T0*
_output_shapes
: s
1random_rotation/loop_body/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :£
1random_rotation/loop_body/stateful_uniform/Cast_1Cast8random_rotation/loop_body/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: 
9random_rotation/loop_body/stateful_uniform/RngReadAndSkipRngReadAndSkipBrandom_rotation_loop_body_stateful_uniform_rngreadandskip_resource:random_rotation/loop_body/stateful_uniform/Cast/x:output:05random_rotation/loop_body/stateful_uniform/Cast_1:y:0*
_output_shapes
:
>random_rotation/loop_body/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
@random_rotation/loop_body/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
@random_rotation/loop_body/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:®
8random_rotation/loop_body/stateful_uniform/strided_sliceStridedSliceArandom_rotation/loop_body/stateful_uniform/RngReadAndSkip:value:0Grandom_rotation/loop_body/stateful_uniform/strided_slice/stack:output:0Irandom_rotation/loop_body/stateful_uniform/strided_slice/stack_1:output:0Irandom_rotation/loop_body/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask±
2random_rotation/loop_body/stateful_uniform/BitcastBitcastArandom_rotation/loop_body/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
@random_rotation/loop_body/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Brandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Brandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¤
:random_rotation/loop_body/stateful_uniform/strided_slice_1StridedSliceArandom_rotation/loop_body/stateful_uniform/RngReadAndSkip:value:0Irandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack:output:0Krandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_1:output:0Krandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:µ
4random_rotation/loop_body/stateful_uniform/Bitcast_1BitcastCrandom_rotation/loop_body/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0
Grandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :
Crandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV29random_rotation/loop_body/stateful_uniform/shape:output:0=random_rotation/loop_body/stateful_uniform/Bitcast_1:output:0;random_rotation/loop_body/stateful_uniform/Bitcast:output:0Prandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
:È
.random_rotation/loop_body/stateful_uniform/subSub7random_rotation/loop_body/stateful_uniform/max:output:07random_rotation/loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
: Ü
.random_rotation/loop_body/stateful_uniform/mulMulLrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2:output:02random_rotation/loop_body/stateful_uniform/sub:z:0*
T0*
_output_shapes
:Å
*random_rotation/loop_body/stateful_uniformAddV22random_rotation/loop_body/stateful_uniform/mul:z:07random_rotation/loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
:j
(random_rotation/loop_body/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Å
$random_rotation/loop_body/ExpandDims
ExpandDims+random_rotation/loop_body/GatherV2:output:01random_rotation/loop_body/ExpandDims/dim:output:0*
T0*(
_output_shapes
:ààz
!random_rotation/loop_body/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   à   à      
/random_rotation/loop_body/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿ
1random_rotation/loop_body/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ{
1random_rotation/loop_body/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)random_rotation/loop_body/strided_slice_1StridedSlice*random_rotation/loop_body/Shape_1:output:08random_rotation/loop_body/strided_slice_1/stack:output:0:random_rotation/loop_body/strided_slice_1/stack_1:output:0:random_rotation/loop_body/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
random_rotation/loop_body/CastCast2random_rotation/loop_body/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: 
/random_rotation/loop_body/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿ
1random_rotation/loop_body/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ{
1random_rotation/loop_body/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ý
)random_rotation/loop_body/strided_slice_2StridedSlice*random_rotation/loop_body/Shape_1:output:08random_rotation/loop_body/strided_slice_2/stack:output:0:random_rotation/loop_body/strided_slice_2/stack_1:output:0:random_rotation/loop_body/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
 random_rotation/loop_body/Cast_1Cast2random_rotation/loop_body/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: t
/random_rotation/loop_body/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?µ
-random_rotation/loop_body/rotation_matrix/subSub$random_rotation/loop_body/Cast_1:y:08random_rotation/loop_body/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: 
-random_rotation/loop_body/rotation_matrix/CosCos.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:v
1random_rotation/loop_body/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¹
/random_rotation/loop_body/rotation_matrix/sub_1Sub$random_rotation/loop_body/Cast_1:y:0:random_rotation/loop_body/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: Á
-random_rotation/loop_body/rotation_matrix/mulMul1random_rotation/loop_body/rotation_matrix/Cos:y:03random_rotation/loop_body/rotation_matrix/sub_1:z:0*
T0*
_output_shapes
:
-random_rotation/loop_body/rotation_matrix/SinSin.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:v
1random_rotation/loop_body/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?·
/random_rotation/loop_body/rotation_matrix/sub_2Sub"random_rotation/loop_body/Cast:y:0:random_rotation/loop_body/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: Ã
/random_rotation/loop_body/rotation_matrix/mul_1Mul1random_rotation/loop_body/rotation_matrix/Sin:y:03random_rotation/loop_body/rotation_matrix/sub_2:z:0*
T0*
_output_shapes
:Ã
/random_rotation/loop_body/rotation_matrix/sub_3Sub1random_rotation/loop_body/rotation_matrix/mul:z:03random_rotation/loop_body/rotation_matrix/mul_1:z:0*
T0*
_output_shapes
:Ã
/random_rotation/loop_body/rotation_matrix/sub_4Sub1random_rotation/loop_body/rotation_matrix/sub:z:03random_rotation/loop_body/rotation_matrix/sub_3:z:0*
T0*
_output_shapes
:x
3random_rotation/loop_body/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ô
1random_rotation/loop_body/rotation_matrix/truedivRealDiv3random_rotation/loop_body/rotation_matrix/sub_4:z:0<random_rotation/loop_body/rotation_matrix/truediv/y:output:0*
T0*
_output_shapes
:v
1random_rotation/loop_body/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?·
/random_rotation/loop_body/rotation_matrix/sub_5Sub"random_rotation/loop_body/Cast:y:0:random_rotation/loop_body/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: 
/random_rotation/loop_body/rotation_matrix/Sin_1Sin.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:v
1random_rotation/loop_body/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?¹
/random_rotation/loop_body/rotation_matrix/sub_6Sub$random_rotation/loop_body/Cast_1:y:0:random_rotation/loop_body/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: Å
/random_rotation/loop_body/rotation_matrix/mul_2Mul3random_rotation/loop_body/rotation_matrix/Sin_1:y:03random_rotation/loop_body/rotation_matrix/sub_6:z:0*
T0*
_output_shapes
:
/random_rotation/loop_body/rotation_matrix/Cos_1Cos.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:v
1random_rotation/loop_body/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?·
/random_rotation/loop_body/rotation_matrix/sub_7Sub"random_rotation/loop_body/Cast:y:0:random_rotation/loop_body/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: Å
/random_rotation/loop_body/rotation_matrix/mul_3Mul3random_rotation/loop_body/rotation_matrix/Cos_1:y:03random_rotation/loop_body/rotation_matrix/sub_7:z:0*
T0*
_output_shapes
:Å
-random_rotation/loop_body/rotation_matrix/addAddV23random_rotation/loop_body/rotation_matrix/mul_2:z:03random_rotation/loop_body/rotation_matrix/mul_3:z:0*
T0*
_output_shapes
:Ã
/random_rotation/loop_body/rotation_matrix/sub_8Sub3random_rotation/loop_body/rotation_matrix/sub_5:z:01random_rotation/loop_body/rotation_matrix/add:z:0*
T0*
_output_shapes
:z
5random_rotation/loop_body/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @Ø
3random_rotation/loop_body/rotation_matrix/truediv_1RealDiv3random_rotation/loop_body/rotation_matrix/sub_8:z:0>random_rotation/loop_body/rotation_matrix/truediv_1/y:output:0*
T0*
_output_shapes
:y
/random_rotation/loop_body/rotation_matrix/ShapeConst*
_output_shapes
:*
dtype0*
valueB:
=random_rotation/loop_body/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?random_rotation/loop_body/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?random_rotation/loop_body/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
7random_rotation/loop_body/rotation_matrix/strided_sliceStridedSlice8random_rotation/loop_body/rotation_matrix/Shape:output:0Frandom_rotation/loop_body/rotation_matrix/strided_slice/stack:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice/stack_1:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
/random_rotation/loop_body/rotation_matrix/Cos_2Cos.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
9random_rotation/loop_body/rotation_matrix/strided_slice_1StridedSlice3random_rotation/loop_body/rotation_matrix/Cos_2:y:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
/random_rotation/loop_body/rotation_matrix/Sin_2Sin.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
9random_rotation/loop_body/rotation_matrix/strided_slice_2StridedSlice3random_rotation/loop_body/rotation_matrix/Sin_2:y:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask¡
-random_rotation/loop_body/rotation_matrix/NegNegBrandom_rotation/loop_body/rotation_matrix/strided_slice_2:output:0*
T0*
_output_shapes

:
?random_rotation/loop_body/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ï
9random_rotation/loop_body/rotation_matrix/strided_slice_3StridedSlice5random_rotation/loop_body/rotation_matrix/truediv:z:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
/random_rotation/loop_body/rotation_matrix/Sin_3Sin.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
9random_rotation/loop_body/rotation_matrix/strided_slice_4StridedSlice3random_rotation/loop_body/rotation_matrix/Sin_3:y:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
/random_rotation/loop_body/rotation_matrix/Cos_3Cos.random_rotation/loop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Í
9random_rotation/loop_body/rotation_matrix/strided_slice_5StridedSlice3random_rotation/loop_body/rotation_matrix/Cos_3:y:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
?random_rotation/loop_body/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
Arandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ñ
9random_rotation/loop_body/rotation_matrix/strided_slice_6StridedSlice7random_rotation/loop_body/rotation_matrix/truediv_1:z:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_1:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskz
8random_rotation/loop_body/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :ñ
6random_rotation/loop_body/rotation_matrix/zeros/packedPack@random_rotation/loop_body/rotation_matrix/strided_slice:output:0Arandom_rotation/loop_body/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:z
5random_rotation/loop_body/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    á
/random_rotation/loop_body/rotation_matrix/zerosFill?random_rotation/loop_body/rotation_matrix/zeros/packed:output:0>random_rotation/loop_body/rotation_matrix/zeros/Const:output:0*
T0*
_output_shapes

:w
5random_rotation/loop_body/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ï
0random_rotation/loop_body/rotation_matrix/concatConcatV2Brandom_rotation/loop_body/rotation_matrix/strided_slice_1:output:01random_rotation/loop_body/rotation_matrix/Neg:y:0Brandom_rotation/loop_body/rotation_matrix/strided_slice_3:output:0Brandom_rotation/loop_body/rotation_matrix/strided_slice_4:output:0Brandom_rotation/loop_body/rotation_matrix/strided_slice_5:output:0Brandom_rotation/loop_body/rotation_matrix/strided_slice_6:output:08random_rotation/loop_body/rotation_matrix/zeros:output:0>random_rotation/loop_body/rotation_matrix/concat/axis:output:0*
N*
T0*
_output_shapes

:
)random_rotation/loop_body/transform/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   à   à      
7random_rotation/loop_body/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
9random_rotation/loop_body/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9random_rotation/loop_body/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ñ
1random_rotation/loop_body/transform/strided_sliceStridedSlice2random_rotation/loop_body/transform/Shape:output:0@random_rotation/loop_body/transform/strided_slice/stack:output:0Brandom_rotation/loop_body/transform/strided_slice/stack_1:output:0Brandom_rotation/loop_body/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:s
.random_rotation/loop_body/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    §
>random_rotation/loop_body/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3-random_rotation/loop_body/ExpandDims:output:09random_rotation/loop_body/rotation_matrix/concat:output:0:random_rotation/loop_body/transform/strided_slice:output:07random_rotation/loop_body/transform/fill_value:output:0*(
_output_shapes
:àà*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEARÇ
!random_rotation/loop_body/SqueezeSqueezeSrandom_rotation/loop_body/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*$
_output_shapes
:àà*
squeeze_dims
 l
"random_rotation/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
random_rotation/pfor/ReshapeReshaperandom_rotation/Max:output:0+random_rotation/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:b
 random_rotation/pfor/range/startConst*
_output_shapes
: *
dtype0*
value	B : b
 random_rotation/pfor/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :¼
random_rotation/pfor/rangeRange)random_rotation/pfor/range/start:output:0random_rotation/Max:output:0)random_rotation/pfor/range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Rrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Trandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Trandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ä
Lrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_sliceStridedSlice%random_rotation/pfor/Reshape:output:0[random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack:output:0]random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1:output:0]random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¥
Zrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿï
Lrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2TensorListReservecrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shape:output:0Urandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0	*

shape_type0:éèÐ
Drandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¢
Wrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Qrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 	
Drandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/whileWhileZrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counter:output:0`random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterations:output:0Mrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/Const:output:0Urandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2:handle:0Urandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:0Brandom_rotation_loop_body_stateful_uniform_rngreadandskip_resource:random_rotation/loop_body/stateful_uniform/Cast/x:output:05random_rotation/loop_body/stateful_uniform/Cast_1:y:0:^random_rotation/loop_body/stateful_uniform/RngReadAndSkip*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*$
_output_shapes
: : : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *Z
bodyRRP
Nrandom_rotation_loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_3261*Z
condRRP
Nrandom_rotation_loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_3260*#
output_shapes
: : : : : : : : 
Frandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 °
_random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   Ð
Qrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2TensorListConcatV2Mrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while:output:3hrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shape:output:0Orandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0	*

shape_type0
Mrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Irandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ó
Drandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concatConcatV2Vrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat/values_0:output:0Grandom_rotation/loop_body/stateful_uniform/strided_slice/stack:output:0Rrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Orandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Krandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Frandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1ConcatV2Xrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0:output:0Irandom_rotation/loop_body/stateful_uniform/strided_slice/stack_1:output:0Trandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Orandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Krandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Frandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2ConcatV2Xrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0:output:0Irandom_rotation/loop_body/stateful_uniform/strided_slice/stack_2:output:0Trandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Jrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/StridedSliceStridedSliceZrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0Mrandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat:output:0Orandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_1:output:0Orandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
Krandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Mrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Mrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:È
Erandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_sliceStridedSlice%random_rotation/pfor/Reshape:output:0Trandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack:output:0Vrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1:output:0Vrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Srandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÚ
Erandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2TensorListReserve\random_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shape:output:0Nrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌ
=random_rotation/loop_body/stateful_uniform/Bitcast/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Prandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Jrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ù
=random_rotation/loop_body/stateful_uniform/Bitcast/pfor/whileStatelessWhileSrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/loop_counter:output:0Yrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterations:output:0Frandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/Const:output:0Nrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2:handle:0Nrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0Srandom_rotation/loop_body/stateful_uniform/strided_slice/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *S
bodyKRI
Grandom_rotation_loop_body_stateful_uniform_Bitcast_pfor_while_body_3326*S
condKRI
Grandom_rotation_loop_body_stateful_uniform_Bitcast_pfor_while_cond_3325*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ
?random_rotation/loop_body/stateful_uniform/Bitcast/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 ©
Xrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ´
Jrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2TensorListConcatV2Frandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while:output:3arandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shape:output:0Hrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0
Orandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Krandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : û
Frandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concatConcatV2Xrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0:output:0Irandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack:output:0Trandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Qrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Mrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1ConcatV2Zrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0:output:0Krandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_1:output:0Vrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Qrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Mrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : 
Hrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2ConcatV2Zrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0:output:0Krandom_rotation/loop_body/stateful_uniform/strided_slice_1/stack_2:output:0Vrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Lrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/StridedSliceStridedSliceZrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0Orandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat:output:0Qrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_1:output:0Qrandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
Mrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Orandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Orandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ð
Grandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_sliceStridedSlice%random_rotation/pfor/Reshape:output:0Vrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack:output:0Xrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1:output:0Xrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask 
Urandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿà
Grandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2TensorListReserve^random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shape:output:0Prandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌ
?random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Rrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Lrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ë
?random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/whileStatelessWhileUrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counter:output:0[random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterations:output:0Hrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/Const:output:0Prandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2:handle:0Prandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0Urandom_rotation/loop_body/stateful_uniform/strided_slice_1/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *U
bodyMRK
Irandom_rotation_loop_body_stateful_uniform_Bitcast_1_pfor_while_body_3393*U
condMRK
Irandom_rotation_loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_3392*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ
Arandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 «
Zrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ¼
Lrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2TensorListConcatV2Hrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while:output:3crandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shape:output:0Jrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0¦
\random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¨
^random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¨
^random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
Vrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_sliceStridedSlice%random_rotation/pfor/Reshape:output:0erandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack:output:0grandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1:output:0grandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¯
drandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Vrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2TensorListReservemrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shape:output:0_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Nrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : ¬
arandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
[random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : þ

Nrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/whileStatelessWhiledrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counter:output:0jrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterations:output:0Wrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const:output:0_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2:handle:0_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0Urandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2:tensor:0Srandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2:tensor:09random_rotation/loop_body/stateful_uniform/shape:output:0Prandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*L
_output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *d
body\RZ
Xrandom_rotation_loop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_3450*d
cond\RZ
Xrandom_rotation_loop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_3449*K
output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: 
Prandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 º
irandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿø
[random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2TensorListConcatV2Wrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while:output:3rrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shape:output:0Yrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0z
8random_rotation/loop_body/stateful_uniform/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :|
:random_rotation/loop_body/stateful_uniform/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : {
9random_rotation/loop_body/stateful_uniform/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ê
7random_rotation/loop_body/stateful_uniform/mul/pfor/addAddV2Crandom_rotation/loop_body/stateful_uniform/mul/pfor/Rank_1:output:0Brandom_rotation/loop_body/stateful_uniform/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ç
;random_rotation/loop_body/stateful_uniform/mul/pfor/MaximumMaximum;random_rotation/loop_body/stateful_uniform/mul/pfor/add:z:0Arandom_rotation/loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: Í
9random_rotation/loop_body/stateful_uniform/mul/pfor/ShapeShapedrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:0*
T0*
_output_shapes
:ã
7random_rotation/loop_body/stateful_uniform/mul/pfor/subSub?random_rotation/loop_body/stateful_uniform/mul/pfor/Maximum:z:0Arandom_rotation/loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: 
Arandom_rotation/loop_body/stateful_uniform/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:ô
;random_rotation/loop_body/stateful_uniform/mul/pfor/ReshapeReshape;random_rotation/loop_body/stateful_uniform/mul/pfor/sub:z:0Jrandom_rotation/loop_body/stateful_uniform/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
>random_rotation/loop_body/stateful_uniform/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:ò
8random_rotation/loop_body/stateful_uniform/mul/pfor/TileTileGrandom_rotation/loop_body/stateful_uniform/mul/pfor/Tile/input:output:0Drandom_rotation/loop_body/stateful_uniform/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Grandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Irandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Irandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
Arandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_sliceStridedSliceBrandom_rotation/loop_body/stateful_uniform/mul/pfor/Shape:output:0Prandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stack:output:0Rrandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stack_1:output:0Rrandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Irandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Krandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Krandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ù
Crandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1StridedSliceBrandom_rotation/loop_body/stateful_uniform/mul/pfor/Shape:output:0Rrandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack:output:0Trandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1:output:0Trandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
?random_rotation/loop_body/stateful_uniform/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
:random_rotation/loop_body/stateful_uniform/mul/pfor/concatConcatV2Jrandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice:output:0Arandom_rotation/loop_body/stateful_uniform/mul/pfor/Tile:output:0Lrandom_rotation/loop_body/stateful_uniform/mul/pfor/strided_slice_1:output:0Hrandom_rotation/loop_body/stateful_uniform/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:¥
=random_rotation/loop_body/stateful_uniform/mul/pfor/Reshape_1Reshapedrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:0Crandom_rotation/loop_body/stateful_uniform/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿì
7random_rotation/loop_body/stateful_uniform/mul/pfor/MulMulFrandom_rotation/loop_body/stateful_uniform/mul/pfor/Reshape_1:output:02random_rotation/loop_body/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
4random_rotation/loop_body/stateful_uniform/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :x
6random_rotation/loop_body/stateful_uniform/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : w
5random_rotation/loop_body/stateful_uniform/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :Þ
3random_rotation/loop_body/stateful_uniform/pfor/addAddV2?random_rotation/loop_body/stateful_uniform/pfor/Rank_1:output:0>random_rotation/loop_body/stateful_uniform/pfor/add/y:output:0*
T0*
_output_shapes
: Û
7random_rotation/loop_body/stateful_uniform/pfor/MaximumMaximum7random_rotation/loop_body/stateful_uniform/pfor/add:z:0=random_rotation/loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
:  
5random_rotation/loop_body/stateful_uniform/pfor/ShapeShape;random_rotation/loop_body/stateful_uniform/mul/pfor/Mul:z:0*
T0*
_output_shapes
:×
3random_rotation/loop_body/stateful_uniform/pfor/subSub;random_rotation/loop_body/stateful_uniform/pfor/Maximum:z:0=random_rotation/loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
: 
=random_rotation/loop_body/stateful_uniform/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:è
7random_rotation/loop_body/stateful_uniform/pfor/ReshapeReshape7random_rotation/loop_body/stateful_uniform/pfor/sub:z:0Frandom_rotation/loop_body/stateful_uniform/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
:random_rotation/loop_body/stateful_uniform/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:æ
4random_rotation/loop_body/stateful_uniform/pfor/TileTileCrandom_rotation/loop_body/stateful_uniform/pfor/Tile/input:output:0@random_rotation/loop_body/stateful_uniform/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Crandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Erandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Erandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¿
=random_rotation/loop_body/stateful_uniform/pfor/strided_sliceStridedSlice>random_rotation/loop_body/stateful_uniform/pfor/Shape:output:0Lrandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stack:output:0Nrandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stack_1:output:0Nrandom_rotation/loop_body/stateful_uniform/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Erandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Grandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Grandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Å
?random_rotation/loop_body/stateful_uniform/pfor/strided_slice_1StridedSlice>random_rotation/loop_body/stateful_uniform/pfor/Shape:output:0Nrandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stack:output:0Prandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stack_1:output:0Prandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask}
;random_rotation/loop_body/stateful_uniform/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
6random_rotation/loop_body/stateful_uniform/pfor/concatConcatV2Frandom_rotation/loop_body/stateful_uniform/pfor/strided_slice:output:0=random_rotation/loop_body/stateful_uniform/pfor/Tile:output:0Hrandom_rotation/loop_body/stateful_uniform/pfor/strided_slice_1:output:0Drandom_rotation/loop_body/stateful_uniform/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ô
9random_rotation/loop_body/stateful_uniform/pfor/Reshape_1Reshape;random_rotation/loop_body/stateful_uniform/mul/pfor/Mul:z:0?random_rotation/loop_body/stateful_uniform/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿí
5random_rotation/loop_body/stateful_uniform/pfor/AddV2AddV2Brandom_rotation/loop_body/stateful_uniform/pfor/Reshape_1:output:07random_rotation/loop_body/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
8random_rotation/loop_body/rotation_matrix/Cos_1/pfor/CosCos9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/mul_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :}
;random_rotation/loop_body/rotation_matrix/mul_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : |
:random_rotation/loop_body/rotation_matrix/mul_3/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :í
8random_rotation/loop_body/rotation_matrix/mul_3/pfor/addAddV2Drandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Rank_1:output:0Crandom_rotation/loop_body/rotation_matrix/mul_3/pfor/add/y:output:0*
T0*
_output_shapes
: ê
<random_rotation/loop_body/rotation_matrix/mul_3/pfor/MaximumMaximum<random_rotation/loop_body/rotation_matrix/mul_3/pfor/add:z:0Brandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: ¦
:random_rotation/loop_body/rotation_matrix/mul_3/pfor/ShapeShape<random_rotation/loop_body/rotation_matrix/Cos_1/pfor/Cos:y:0*
T0*
_output_shapes
:æ
8random_rotation/loop_body/rotation_matrix/mul_3/pfor/subSub@random_rotation/loop_body/rotation_matrix/mul_3/pfor/Maximum:z:0Brandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/mul_3/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/mul_3/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/mul_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/mul_3/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/mul_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/mul_3/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/mul_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ÿ
>random_rotation/loop_body/rotation_matrix/mul_3/pfor/Reshape_1Reshape<random_rotation/loop_body/rotation_matrix/Cos_1/pfor/Cos:y:0Drandom_rotation/loop_body/rotation_matrix/mul_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
8random_rotation/loop_body/rotation_matrix/mul_3/pfor/MulMulGrandom_rotation/loop_body/rotation_matrix/mul_3/pfor/Reshape_1:output:03random_rotation/loop_body/rotation_matrix/sub_7:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
8random_rotation/loop_body/rotation_matrix/Sin_1/pfor/SinSin9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/mul_2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :}
;random_rotation/loop_body/rotation_matrix/mul_2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : |
:random_rotation/loop_body/rotation_matrix/mul_2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :í
8random_rotation/loop_body/rotation_matrix/mul_2/pfor/addAddV2Drandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Rank_1:output:0Crandom_rotation/loop_body/rotation_matrix/mul_2/pfor/add/y:output:0*
T0*
_output_shapes
: ê
<random_rotation/loop_body/rotation_matrix/mul_2/pfor/MaximumMaximum<random_rotation/loop_body/rotation_matrix/mul_2/pfor/add:z:0Brandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: ¦
:random_rotation/loop_body/rotation_matrix/mul_2/pfor/ShapeShape<random_rotation/loop_body/rotation_matrix/Sin_1/pfor/Sin:y:0*
T0*
_output_shapes
:æ
8random_rotation/loop_body/rotation_matrix/mul_2/pfor/subSub@random_rotation/loop_body/rotation_matrix/mul_2/pfor/Maximum:z:0Brandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/mul_2/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/mul_2/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/mul_2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/mul_2/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/mul_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/mul_2/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/mul_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ÿ
>random_rotation/loop_body/rotation_matrix/mul_2/pfor/Reshape_1Reshape<random_rotation/loop_body/rotation_matrix/Sin_1/pfor/Sin:y:0Drandom_rotation/loop_body/rotation_matrix/mul_2/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
8random_rotation/loop_body/rotation_matrix/mul_2/pfor/MulMulGrandom_rotation/loop_body/rotation_matrix/mul_2/pfor/Reshape_1:output:03random_rotation/loop_body/rotation_matrix/sub_6:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7random_rotation/loop_body/rotation_matrix/add/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :{
9random_rotation/loop_body/rotation_matrix/add/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :ì
:random_rotation/loop_body/rotation_matrix/add/pfor/MaximumMaximumBrandom_rotation/loop_body/rotation_matrix/add/pfor/Rank_1:output:0@random_rotation/loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: ¤
8random_rotation/loop_body/rotation_matrix/add/pfor/ShapeShape<random_rotation/loop_body/rotation_matrix/mul_2/pfor/Mul:z:0*
T0*
_output_shapes
:à
6random_rotation/loop_body/rotation_matrix/add/pfor/subSub>random_rotation/loop_body/rotation_matrix/add/pfor/Maximum:z:0@random_rotation/loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: 
@random_rotation/loop_body/rotation_matrix/add/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:ñ
:random_rotation/loop_body/rotation_matrix/add/pfor/ReshapeReshape:random_rotation/loop_body/rotation_matrix/add/pfor/sub:z:0Irandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
=random_rotation/loop_body/rotation_matrix/add/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:ï
7random_rotation/loop_body/rotation_matrix/add/pfor/TileTileFrandom_rotation/loop_body/rotation_matrix/add/pfor/Tile/input:output:0Crandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Frandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
@random_rotation/loop_body/rotation_matrix/add/pfor/strided_sliceStridedSliceArandom_rotation/loop_body/rotation_matrix/add/pfor/Shape:output:0Orandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stack:output:0Qrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stack_1:output:0Qrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ô
Brandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1StridedSliceArandom_rotation/loop_body/rotation_matrix/add/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stack:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
>random_rotation/loop_body/rotation_matrix/add/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
9random_rotation/loop_body/rotation_matrix/add/pfor/concatConcatV2Irandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice:output:0@random_rotation/loop_body/rotation_matrix/add/pfor/Tile:output:0Krandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_1:output:0Grandom_rotation/loop_body/rotation_matrix/add/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:û
<random_rotation/loop_body/rotation_matrix/add/pfor/Reshape_1Reshape<random_rotation/loop_body/rotation_matrix/mul_2/pfor/Mul:z:0Brandom_rotation/loop_body/rotation_matrix/add/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
:random_rotation/loop_body/rotation_matrix/add/pfor/Shape_1Shape<random_rotation/loop_body/rotation_matrix/mul_3/pfor/Mul:z:0*
T0*
_output_shapes
:ä
8random_rotation/loop_body/rotation_matrix/add/pfor/sub_1Sub>random_rotation/loop_body/rotation_matrix/add/pfor/Maximum:z:0Brandom_rotation/loop_body/rotation_matrix/add/pfor/Rank_1:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/add/pfor/Reshape_2Reshape<random_rotation/loop_body/rotation_matrix/add/pfor/sub_1:z:0Krandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/add/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/add/pfor/Tile_1TileHrandom_rotation/loop_body/rotation_matrix/add/pfor/Tile_1/input:output:0Erandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2StridedSliceCrandom_rotation/loop_body/rotation_matrix/add/pfor/Shape_1:output:0Qrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stack:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ö
Brandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3StridedSliceCrandom_rotation/loop_body/rotation_matrix/add/pfor/Shape_1:output:0Qrandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stack:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/add/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : 
;random_rotation/loop_body/rotation_matrix/add/pfor/concat_1ConcatV2Krandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_2:output:0Brandom_rotation/loop_body/rotation_matrix/add/pfor/Tile_1:output:0Krandom_rotation/loop_body/rotation_matrix/add/pfor/strided_slice_3:output:0Irandom_rotation/loop_body/rotation_matrix/add/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:ý
<random_rotation/loop_body/rotation_matrix/add/pfor/Reshape_3Reshape<random_rotation/loop_body/rotation_matrix/mul_3/pfor/Mul:z:0Drandom_rotation/loop_body/rotation_matrix/add/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
8random_rotation/loop_body/rotation_matrix/add/pfor/AddV2AddV2Erandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape_1:output:0Erandom_rotation/loop_body/rotation_matrix/add/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/sub_8/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:random_rotation/loop_body/rotation_matrix/sub_8/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ë
8random_rotation/loop_body/rotation_matrix/sub_8/pfor/addAddV2Brandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Rank:output:0Crandom_rotation/loop_body/rotation_matrix/sub_8/pfor/add/y:output:0*
T0*
_output_shapes
: }
;random_rotation/loop_body/rotation_matrix/sub_8/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :ì
<random_rotation/loop_body/rotation_matrix/sub_8/pfor/MaximumMaximumDrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0<random_rotation/loop_body/rotation_matrix/sub_8/pfor/add:z:0*
T0*
_output_shapes
: ¦
:random_rotation/loop_body/rotation_matrix/sub_8/pfor/ShapeShape<random_rotation/loop_body/rotation_matrix/add/pfor/AddV2:z:0*
T0*
_output_shapes
:è
8random_rotation/loop_body/rotation_matrix/sub_8/pfor/subSub@random_rotation/loop_body/rotation_matrix/sub_8/pfor/Maximum:z:0Drandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/sub_8/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/sub_8/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/sub_8/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/sub_8/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/sub_8/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/sub_8/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/sub_8/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/sub_8/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ÿ
>random_rotation/loop_body/rotation_matrix/sub_8/pfor/Reshape_1Reshape<random_rotation/loop_body/rotation_matrix/add/pfor/AddV2:z:0Drandom_rotation/loop_body/rotation_matrix/sub_8/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿñ
:random_rotation/loop_body/rotation_matrix/sub_8/pfor/Sub_1Sub3random_rotation/loop_body/rotation_matrix/sub_5:z:0Grandom_rotation/loop_body/rotation_matrix/sub_8/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
=random_rotation/loop_body/rotation_matrix/truediv_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :
?random_rotation/loop_body/rotation_matrix/truediv_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : 
>random_rotation/loop_body/rotation_matrix/truediv_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ù
<random_rotation/loop_body/rotation_matrix/truediv_1/pfor/addAddV2Hrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Rank_1:output:0Grandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/add/y:output:0*
T0*
_output_shapes
: ö
@random_rotation/loop_body/rotation_matrix/truediv_1/pfor/MaximumMaximum@random_rotation/loop_body/rotation_matrix/truediv_1/pfor/add:z:0Frandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: ¬
>random_rotation/loop_body/rotation_matrix/truediv_1/pfor/ShapeShape>random_rotation/loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:0*
T0*
_output_shapes
:ò
<random_rotation/loop_body/rotation_matrix/truediv_1/pfor/subSubDrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Maximum:z:0Frandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
Frandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
@random_rotation/loop_body/rotation_matrix/truediv_1/pfor/ReshapeReshape@random_rotation/loop_body/rotation_matrix/truediv_1/pfor/sub:z:0Orandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
Crandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:
=random_rotation/loop_body/rotation_matrix/truediv_1/pfor/TileTileLrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Tile/input:output:0Irandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Lrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Nrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Nrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ì
Frandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_sliceStridedSliceGrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Urandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack:output:0Wrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1:output:0Wrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Nrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Prandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Prandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ò
Hrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1StridedSliceGrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Wrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack:output:0Yrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1:output:0Yrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
Drandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ´
?random_rotation/loop_body/rotation_matrix/truediv_1/pfor/concatConcatV2Orandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice:output:0Frandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Tile:output:0Qrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1:output:0Mrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Brandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Reshape_1Reshape>random_rotation/loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:0Hrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
@random_rotation/loop_body/rotation_matrix/truediv_1/pfor/RealDivRealDivKrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/Reshape_1:output:0>random_rotation/loop_body/rotation_matrix/truediv_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_6/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/StridedSliceStridedSliceDrandom_rotation/loop_body/rotation_matrix/truediv_1/pfor/RealDiv:z:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¬
8random_rotation/loop_body/rotation_matrix/Cos_3/pfor/CosCos9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_5/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/StridedSliceStridedSlice<random_rotation/loop_body/rotation_matrix/Cos_3/pfor/Cos:y:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¬
8random_rotation/loop_body/rotation_matrix/Sin_3/pfor/SinSin9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_4/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/StridedSliceStridedSlice<random_rotation/loop_body/rotation_matrix/Sin_3/pfor/Sin:y:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskª
6random_rotation/loop_body/rotation_matrix/Sin/pfor/SinSin9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/mul_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :}
;random_rotation/loop_body/rotation_matrix/mul_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : |
:random_rotation/loop_body/rotation_matrix/mul_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :í
8random_rotation/loop_body/rotation_matrix/mul_1/pfor/addAddV2Drandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Rank_1:output:0Crandom_rotation/loop_body/rotation_matrix/mul_1/pfor/add/y:output:0*
T0*
_output_shapes
: ê
<random_rotation/loop_body/rotation_matrix/mul_1/pfor/MaximumMaximum<random_rotation/loop_body/rotation_matrix/mul_1/pfor/add:z:0Brandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: ¤
:random_rotation/loop_body/rotation_matrix/mul_1/pfor/ShapeShape:random_rotation/loop_body/rotation_matrix/Sin/pfor/Sin:y:0*
T0*
_output_shapes
:æ
8random_rotation/loop_body/rotation_matrix/mul_1/pfor/subSub@random_rotation/loop_body/rotation_matrix/mul_1/pfor/Maximum:z:0Brandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/mul_1/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/mul_1/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/mul_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/mul_1/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/mul_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/mul_1/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/mul_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
>random_rotation/loop_body/rotation_matrix/mul_1/pfor/Reshape_1Reshape:random_rotation/loop_body/rotation_matrix/Sin/pfor/Sin:y:0Drandom_rotation/loop_body/rotation_matrix/mul_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
8random_rotation/loop_body/rotation_matrix/mul_1/pfor/MulMulGrandom_rotation/loop_body/rotation_matrix/mul_1/pfor/Reshape_1:output:03random_rotation/loop_body/rotation_matrix/sub_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿª
6random_rotation/loop_body/rotation_matrix/Cos/pfor/CosCos9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿy
7random_rotation/loop_body/rotation_matrix/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :{
9random_rotation/loop_body/rotation_matrix/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : z
8random_rotation/loop_body/rotation_matrix/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ç
6random_rotation/loop_body/rotation_matrix/mul/pfor/addAddV2Brandom_rotation/loop_body/rotation_matrix/mul/pfor/Rank_1:output:0Arandom_rotation/loop_body/rotation_matrix/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ä
:random_rotation/loop_body/rotation_matrix/mul/pfor/MaximumMaximum:random_rotation/loop_body/rotation_matrix/mul/pfor/add:z:0@random_rotation/loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: ¢
8random_rotation/loop_body/rotation_matrix/mul/pfor/ShapeShape:random_rotation/loop_body/rotation_matrix/Cos/pfor/Cos:y:0*
T0*
_output_shapes
:à
6random_rotation/loop_body/rotation_matrix/mul/pfor/subSub>random_rotation/loop_body/rotation_matrix/mul/pfor/Maximum:z:0@random_rotation/loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: 
@random_rotation/loop_body/rotation_matrix/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:ñ
:random_rotation/loop_body/rotation_matrix/mul/pfor/ReshapeReshape:random_rotation/loop_body/rotation_matrix/mul/pfor/sub:z:0Irandom_rotation/loop_body/rotation_matrix/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
=random_rotation/loop_body/rotation_matrix/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:ï
7random_rotation/loop_body/rotation_matrix/mul/pfor/TileTileFrandom_rotation/loop_body/rotation_matrix/mul/pfor/Tile/input:output:0Crandom_rotation/loop_body/rotation_matrix/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Frandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Hrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Hrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Î
@random_rotation/loop_body/rotation_matrix/mul/pfor/strided_sliceStridedSliceArandom_rotation/loop_body/rotation_matrix/mul/pfor/Shape:output:0Orandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stack:output:0Qrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stack_1:output:0Qrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Hrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ô
Brandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1StridedSliceArandom_rotation/loop_body/rotation_matrix/mul/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack:output:0Srandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
>random_rotation/loop_body/rotation_matrix/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
9random_rotation/loop_body/rotation_matrix/mul/pfor/concatConcatV2Irandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice:output:0@random_rotation/loop_body/rotation_matrix/mul/pfor/Tile:output:0Krandom_rotation/loop_body/rotation_matrix/mul/pfor/strided_slice_1:output:0Grandom_rotation/loop_body/rotation_matrix/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ù
<random_rotation/loop_body/rotation_matrix/mul/pfor/Reshape_1Reshape:random_rotation/loop_body/rotation_matrix/Cos/pfor/Cos:y:0Brandom_rotation/loop_body/rotation_matrix/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿë
6random_rotation/loop_body/rotation_matrix/mul/pfor/MulMulErandom_rotation/loop_body/rotation_matrix/mul/pfor/Reshape_1:output:03random_rotation/loop_body/rotation_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/sub_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :}
;random_rotation/loop_body/rotation_matrix/sub_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :ò
<random_rotation/loop_body/rotation_matrix/sub_3/pfor/MaximumMaximumDrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:0Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: ¤
:random_rotation/loop_body/rotation_matrix/sub_3/pfor/ShapeShape:random_rotation/loop_body/rotation_matrix/mul/pfor/Mul:z:0*
T0*
_output_shapes
:æ
8random_rotation/loop_body/rotation_matrix/sub_3/pfor/subSub@random_rotation/loop_body/rotation_matrix/sub_3/pfor/Maximum:z:0Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/sub_3/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/sub_3/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/sub_3/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/sub_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/sub_3/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/sub_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:ý
>random_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_1Reshape:random_rotation/loop_body/rotation_matrix/mul/pfor/Mul:z:0Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¨
<random_rotation/loop_body/rotation_matrix/sub_3/pfor/Shape_1Shape<random_rotation/loop_body/rotation_matrix/mul_1/pfor/Mul:z:0*
T0*
_output_shapes
:ê
:random_rotation/loop_body/rotation_matrix/sub_3/pfor/sub_1Sub@random_rotation/loop_body/rotation_matrix/sub_3/pfor/Maximum:z:0Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:0*
T0*
_output_shapes
: 
Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:ý
>random_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_2Reshape>random_rotation/loop_body/rotation_matrix/sub_3/pfor/sub_1:z:0Mrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:
Arandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:û
;random_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile_1TileJrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile_1/input:output:0Grandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
Jrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2StridedSliceErandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Srandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:à
Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3StridedSliceErandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Srandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
Brandom_rotation/loop_body/rotation_matrix/sub_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¨
=random_rotation/loop_body/rotation_matrix/sub_3/pfor/concat_1ConcatV2Mrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_2:output:0Drandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Tile_1:output:0Mrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/strided_slice_3:output:0Krandom_rotation/loop_body/rotation_matrix/sub_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
>random_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_3Reshape<random_rotation/loop_body/rotation_matrix/mul_1/pfor/Mul:z:0Frandom_rotation/loop_body/rotation_matrix/sub_3/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
:random_rotation/loop_body/rotation_matrix/sub_3/pfor/Sub_2SubGrandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_1:output:0Grandom_rotation/loop_body/rotation_matrix/sub_3/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ{
9random_rotation/loop_body/rotation_matrix/sub_4/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : |
:random_rotation/loop_body/rotation_matrix/sub_4/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ë
8random_rotation/loop_body/rotation_matrix/sub_4/pfor/addAddV2Brandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Rank:output:0Crandom_rotation/loop_body/rotation_matrix/sub_4/pfor/add/y:output:0*
T0*
_output_shapes
: }
;random_rotation/loop_body/rotation_matrix/sub_4/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :ì
<random_rotation/loop_body/rotation_matrix/sub_4/pfor/MaximumMaximumDrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0<random_rotation/loop_body/rotation_matrix/sub_4/pfor/add:z:0*
T0*
_output_shapes
: ¨
:random_rotation/loop_body/rotation_matrix/sub_4/pfor/ShapeShape>random_rotation/loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:0*
T0*
_output_shapes
:è
8random_rotation/loop_body/rotation_matrix/sub_4/pfor/subSub@random_rotation/loop_body/rotation_matrix/sub_4/pfor/Maximum:z:0Drandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0*
T0*
_output_shapes
: 
Brandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:÷
<random_rotation/loop_body/rotation_matrix/sub_4/pfor/ReshapeReshape<random_rotation/loop_body/rotation_matrix/sub_4/pfor/sub:z:0Krandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
?random_rotation/loop_body/rotation_matrix/sub_4/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:õ
9random_rotation/loop_body/rotation_matrix/sub_4/pfor/TileTileHrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Tile/input:output:0Erandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Jrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
Brandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_sliceStridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Qrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack:output:0Srandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1:output:0Srandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Jrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
Drandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1StridedSliceCrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack:output:0Urandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
@random_rotation/loop_body/rotation_matrix/sub_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :  
;random_rotation/loop_body/rotation_matrix/sub_4/pfor/concatConcatV2Krandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice:output:0Brandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Tile:output:0Mrandom_rotation/loop_body/rotation_matrix/sub_4/pfor/strided_slice_1:output:0Irandom_rotation/loop_body/rotation_matrix/sub_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
>random_rotation/loop_body/rotation_matrix/sub_4/pfor/Reshape_1Reshape>random_rotation/loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:0Drandom_rotation/loop_body/rotation_matrix/sub_4/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿï
:random_rotation/loop_body/rotation_matrix/sub_4/pfor/Sub_1Sub1random_rotation/loop_body/rotation_matrix/sub:z:0Grandom_rotation/loop_body/rotation_matrix/sub_4/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ}
;random_rotation/loop_body/rotation_matrix/truediv/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :
=random_rotation/loop_body/rotation_matrix/truediv/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : ~
<random_rotation/loop_body/rotation_matrix/truediv/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :ó
:random_rotation/loop_body/rotation_matrix/truediv/pfor/addAddV2Frandom_rotation/loop_body/rotation_matrix/truediv/pfor/Rank_1:output:0Erandom_rotation/loop_body/rotation_matrix/truediv/pfor/add/y:output:0*
T0*
_output_shapes
: ð
>random_rotation/loop_body/rotation_matrix/truediv/pfor/MaximumMaximum>random_rotation/loop_body/rotation_matrix/truediv/pfor/add:z:0Drandom_rotation/loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: ª
<random_rotation/loop_body/rotation_matrix/truediv/pfor/ShapeShape>random_rotation/loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:0*
T0*
_output_shapes
:ì
:random_rotation/loop_body/rotation_matrix/truediv/pfor/subSubBrandom_rotation/loop_body/rotation_matrix/truediv/pfor/Maximum:z:0Drandom_rotation/loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: 
Drandom_rotation/loop_body/rotation_matrix/truediv/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:ý
>random_rotation/loop_body/rotation_matrix/truediv/pfor/ReshapeReshape>random_rotation/loop_body/rotation_matrix/truediv/pfor/sub:z:0Mrandom_rotation/loop_body/rotation_matrix/truediv/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
Arandom_rotation/loop_body/rotation_matrix/truediv/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:û
;random_rotation/loop_body/rotation_matrix/truediv/pfor/TileTileJrandom_rotation/loop_body/rotation_matrix/truediv/pfor/Tile/input:output:0Grandom_rotation/loop_body/rotation_matrix/truediv/pfor/Reshape:output:0*
T0*
_output_shapes
: 
Jrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:â
Drandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_sliceStridedSliceErandom_rotation/loop_body/rotation_matrix/truediv/pfor/Shape:output:0Srandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stack:output:0Urandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
Lrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
Nrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
Nrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:è
Frandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1StridedSliceErandom_rotation/loop_body/rotation_matrix/truediv/pfor/Shape:output:0Urandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack:output:0Wrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1:output:0Wrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_mask
Brandom_rotation/loop_body/rotation_matrix/truediv/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ª
=random_rotation/loop_body/rotation_matrix/truediv/pfor/concatConcatV2Mrandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice:output:0Drandom_rotation/loop_body/rotation_matrix/truediv/pfor/Tile:output:0Orandom_rotation/loop_body/rotation_matrix/truediv/pfor/strided_slice_1:output:0Krandom_rotation/loop_body/rotation_matrix/truediv/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@random_rotation/loop_body/rotation_matrix/truediv/pfor/Reshape_1Reshape>random_rotation/loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:0Frandom_rotation/loop_body/rotation_matrix/truediv/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>random_rotation/loop_body/rotation_matrix/truediv/pfor/RealDivRealDivIrandom_rotation/loop_body/rotation_matrix/truediv/pfor/Reshape_1:output:0<random_rotation/loop_body/rotation_matrix/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_3/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/StridedSliceStridedSliceBrandom_rotation/loop_body/rotation_matrix/truediv/pfor/RealDiv:z:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask¬
8random_rotation/loop_body/rotation_matrix/Sin_2/pfor/SinSin9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_2/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/StridedSliceStridedSlice<random_rotation/loop_body/rotation_matrix/Sin_2/pfor/Sin:y:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_maskÉ
6random_rotation/loop_body/rotation_matrix/Neg/pfor/NegNegTrandom_rotation/loop_body/rotation_matrix/strided_slice_2/pfor/StridedSlice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¬
8random_rotation/loop_body/rotation_matrix/Cos_2/pfor/CosCos9random_rotation/loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Nrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Jrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ÷
Erandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concatConcatV2Wrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0:output:0Hrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack:output:0Srandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_1:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Prandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
Lrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ÿ
Grandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2ConcatV2Yrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0:output:0Jrandom_rotation/loop_body/rotation_matrix/strided_slice_1/stack_2:output:0Urandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:
Krandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/StridedSliceStridedSlice<random_rotation/loop_body/rotation_matrix/Cos_2/pfor/Cos:y:0Nrandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_1:output:0Prandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
;random_rotation/loop_body/rotation_matrix/concat/pfor/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
Urandom_rotation/loop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:
Erandom_rotation/loop_body/rotation_matrix/concat/pfor/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :
?random_rotation/loop_body/rotation_matrix/concat/pfor/ones_likeFill^random_rotation/loop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensor:output:0Nrandom_rotation/loop_body/rotation_matrix/concat/pfor/ones_like/Const:output:0*
T0*
_output_shapes
:
Crandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ
=random_rotation/loop_body/rotation_matrix/concat/pfor/ReshapeReshapeHrandom_rotation/loop_body/rotation_matrix/concat/pfor/ones_like:output:0Lrandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
Erandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿæ
?random_rotation/loop_body/rotation_matrix/concat/pfor/Reshape_1Reshape%random_rotation/pfor/Reshape:output:0Nrandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape_1/shape:output:0*
T0*
_output_shapes
:
Arandom_rotation/loop_body/rotation_matrix/concat/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ô
<random_rotation/loop_body/rotation_matrix/concat/pfor/concatConcatV2Hrandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape_1:output:0Frandom_rotation/loop_body/rotation_matrix/concat/pfor/Reshape:output:0Jrandom_rotation/loop_body/rotation_matrix/concat/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Drandom_rotation/loop_body/rotation_matrix/concat/pfor/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
@random_rotation/loop_body/rotation_matrix/concat/pfor/ExpandDims
ExpandDims8random_rotation/loop_body/rotation_matrix/zeros:output:0Mrandom_rotation/loop_body/rotation_matrix/concat/pfor/ExpandDims/dim:output:0*
T0*"
_output_shapes
:
:random_rotation/loop_body/rotation_matrix/concat/pfor/TileTileIrandom_rotation/loop_body/rotation_matrix/concat/pfor/ExpandDims:output:0Erandom_rotation/loop_body/rotation_matrix/concat/pfor/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Drandom_rotation/loop_body/rotation_matrix/concat/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : 
Brandom_rotation/loop_body/rotation_matrix/concat/pfor/GreaterEqualGreaterEqual>random_rotation/loop_body/rotation_matrix/concat/axis:output:0Mrandom_rotation/loop_body/rotation_matrix/concat/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: º
:random_rotation/loop_body/rotation_matrix/concat/pfor/CastCastFrandom_rotation/loop_body/rotation_matrix/concat/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: ã
9random_rotation/loop_body/rotation_matrix/concat/pfor/addAddV2>random_rotation/loop_body/rotation_matrix/concat/axis:output:0>random_rotation/loop_body/rotation_matrix/concat/pfor/Cast:y:0*
T0*
_output_shapes
: ÷
>random_rotation/loop_body/rotation_matrix/concat/pfor/concat_1ConcatV2Trandom_rotation/loop_body/rotation_matrix/strided_slice_1/pfor/StridedSlice:output:0:random_rotation/loop_body/rotation_matrix/Neg/pfor/Neg:y:0Trandom_rotation/loop_body/rotation_matrix/strided_slice_3/pfor/StridedSlice:output:0Trandom_rotation/loop_body/rotation_matrix/strided_slice_4/pfor/StridedSlice:output:0Trandom_rotation/loop_body/rotation_matrix/strided_slice_5/pfor/StridedSlice:output:0Trandom_rotation/loop_body/rotation_matrix/strided_slice_6/pfor/StridedSlice:output:0Crandom_rotation/loop_body/rotation_matrix/concat/pfor/Tile:output:0=random_rotation/loop_body/rotation_matrix/concat/pfor/add:z:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿn
,random_rotation/loop_body/SelectV2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : o
-random_rotation/loop_body/SelectV2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ä
+random_rotation/loop_body/SelectV2/pfor/addAddV25random_rotation/loop_body/SelectV2/pfor/Rank:output:06random_rotation/loop_body/SelectV2/pfor/add/y:output:0*
T0*
_output_shapes
: p
.random_rotation/loop_body/SelectV2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :p
.random_rotation/loop_body/SelectV2/pfor/Rank_2Const*
_output_shapes
: *
dtype0*
value	B : q
/random_rotation/loop_body/SelectV2/pfor/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ê
-random_rotation/loop_body/SelectV2/pfor/add_1AddV27random_rotation/loop_body/SelectV2/pfor/Rank_2:output:08random_rotation/loop_body/SelectV2/pfor/add_1/y:output:0*
T0*
_output_shapes
: Å
/random_rotation/loop_body/SelectV2/pfor/MaximumMaximum7random_rotation/loop_body/SelectV2/pfor/Rank_1:output:0/random_rotation/loop_body/SelectV2/pfor/add:z:0*
T0*
_output_shapes
: Å
1random_rotation/loop_body/SelectV2/pfor/Maximum_1Maximum1random_rotation/loop_body/SelectV2/pfor/add_1:z:03random_rotation/loop_body/SelectV2/pfor/Maximum:z:0*
T0*
_output_shapes
: 
-random_rotation/loop_body/SelectV2/pfor/ShapeShape#random_rotation/pfor/range:output:0*
T0*
_output_shapes
:Ã
+random_rotation/loop_body/SelectV2/pfor/subSub5random_rotation/loop_body/SelectV2/pfor/Maximum_1:z:07random_rotation/loop_body/SelectV2/pfor/Rank_1:output:0*
T0*
_output_shapes
: 
5random_rotation/loop_body/SelectV2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ð
/random_rotation/loop_body/SelectV2/pfor/ReshapeReshape/random_rotation/loop_body/SelectV2/pfor/sub:z:0>random_rotation/loop_body/SelectV2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:|
2random_rotation/loop_body/SelectV2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Î
,random_rotation/loop_body/SelectV2/pfor/TileTile;random_rotation/loop_body/SelectV2/pfor/Tile/input:output:08random_rotation/loop_body/SelectV2/pfor/Reshape:output:0*
T0*
_output_shapes
: 
;random_rotation/loop_body/SelectV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=random_rotation/loop_body/SelectV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=random_rotation/loop_body/SelectV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5random_rotation/loop_body/SelectV2/pfor/strided_sliceStridedSlice6random_rotation/loop_body/SelectV2/pfor/Shape:output:0Drandom_rotation/loop_body/SelectV2/pfor/strided_slice/stack:output:0Frandom_rotation/loop_body/SelectV2/pfor/strided_slice/stack_1:output:0Frandom_rotation/loop_body/SelectV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
=random_rotation/loop_body/SelectV2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
?random_rotation/loop_body/SelectV2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
?random_rotation/loop_body/SelectV2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7random_rotation/loop_body/SelectV2/pfor/strided_slice_1StridedSlice6random_rotation/loop_body/SelectV2/pfor/Shape:output:0Frandom_rotation/loop_body/SelectV2/pfor/strided_slice_1/stack:output:0Hrandom_rotation/loop_body/SelectV2/pfor/strided_slice_1/stack_1:output:0Hrandom_rotation/loop_body/SelectV2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_masku
3random_rotation/loop_body/SelectV2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ß
.random_rotation/loop_body/SelectV2/pfor/concatConcatV2>random_rotation/loop_body/SelectV2/pfor/strided_slice:output:05random_rotation/loop_body/SelectV2/pfor/Tile:output:0@random_rotation/loop_body/SelectV2/pfor/strided_slice_1:output:0<random_rotation/loop_body/SelectV2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:È
1random_rotation/loop_body/SelectV2/pfor/Reshape_1Reshape#random_rotation/pfor/range:output:07random_rotation/loop_body/SelectV2/pfor/concat:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿü
0random_rotation/loop_body/SelectV2/pfor/SelectV2SelectV2%random_rotation/loop_body/Greater:z:0:random_rotation/loop_body/SelectV2/pfor/Reshape_1:output:0-random_rotation/loop_body/SelectV2/e:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
5random_rotation/loop_body/GatherV2/pfor/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ó
0random_rotation/loop_body/GatherV2/pfor/GatherV2GatherV2;random_flip/map/TensorArrayV2Stack/TensorListStack:tensor:09random_rotation/loop_body/SelectV2/pfor/SelectV2:output:0>random_rotation/loop_body/GatherV2/pfor/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿààz
8random_rotation/loop_body/ExpandDims/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Ý
6random_rotation/loop_body/ExpandDims/pfor/GreaterEqualGreaterEqual1random_rotation/loop_body/ExpandDims/dim:output:0Arandom_rotation/loop_body/ExpandDims/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: ¢
.random_rotation/loop_body/ExpandDims/pfor/CastCast:random_rotation/loop_body/ExpandDims/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: ¾
-random_rotation/loop_body/ExpandDims/pfor/addAddV21random_rotation/loop_body/ExpandDims/dim:output:02random_rotation/loop_body/ExpandDims/pfor/Cast:y:0*
T0*
_output_shapes
: ð
4random_rotation/loop_body/ExpandDims/pfor/ExpandDims
ExpandDims9random_rotation/loop_body/GatherV2/pfor/GatherV2:output:01random_rotation/loop_body/ExpandDims/pfor/add:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà¡
Wrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: £
Yrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:£
Yrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ø
Qrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_sliceStridedSlice%random_rotation/pfor/Reshape:output:0`random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack:output:0brandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1:output:0brandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskª
_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿþ
Qrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2TensorListReservehrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shape:output:0Zrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
Irandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : §
\random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Vrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¾

Irandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/whileStatelessWhile_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counter:output:0erandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterations:output:0Rrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/Const:output:0Zrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2:handle:0Zrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0=random_rotation/loop_body/ExpandDims/pfor/ExpandDims:output:0Grandom_rotation/loop_body/rotation_matrix/concat/pfor/concat_1:output:0:random_rotation/loop_body/transform/strided_slice:output:07random_rotation/loop_body/transform/fill_value:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*^
_output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *_
bodyWRU
Srandom_rotation_loop_body_transform_ImageProjectiveTransformV3_pfor_while_body_3951*_
condWRU
Srandom_rotation_loop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_3950*]
output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: 
Krandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 Á
drandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*)
value B"ÿÿÿÿ   ÿÿÿÿÿÿÿÿ   ò
Vrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2TensorListConcatV2Rrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while:output:3mrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shape:output:0Trandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/Const_1:output:0*D
_output_shapes2
0:ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0í
.random_rotation/loop_body/Squeeze/pfor/SqueezeSqueeze_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2:tensor:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
squeeze_dims

conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Û
conv2d/Conv2DConv2D7random_rotation/loop_body/Squeeze/pfor/Squeeze:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ ¨
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ä
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm ¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Æ
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 ¬
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿT  
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:©*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout/dropout/MulMuldense/Relu:activations:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]
dropout/dropout/ShapeShapedense/Relu:activations:0*
T0*
_output_shapes
:
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0c
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?¿
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_1/dropout/MulMuldense_1/Relu:activations:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dropout_1/dropout/ShapeShapedense_1/Relu:activations:0*
T0*
_output_shapes
:¡
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\
dropout_2/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @
dropout_2/dropout/MulMuldense_2/Relu:activations:0 dropout_2/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dropout_2/dropout/ShapeShapedense_2/Relu:activations:0*
T0*
_output_shapes
:¡
.dropout_2/dropout/random_uniform/RandomUniformRandomUniform dropout_2/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0e
 dropout_2/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?Å
dropout_2/dropout/GreaterEqualGreaterEqual7dropout_2/dropout/random_uniform/RandomUniform:output:0)dropout_2/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/CastCast"dropout_2/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dropout_2/dropout/Mul_1Muldropout_2/dropout/Mul:z:0dropout_2/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldropout_2/dropout/Mul_1:z:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp:^random_rotation/loop_body/stateful_uniform/RngReadAndSkipE^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp2v
9random_rotation/loop_body/stateful_uniform/RngReadAndSkip9random_rotation/loop_body/stateful_uniform/RngReadAndSkip2
Drandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/whileDrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
±¿

I__inference_random_rotation_layer_call_and_return_conditional_losses_5098

inputs@
2loop_body_stateful_uniform_rngreadandskip_resource:	
identity¢)loop_body/stateful_uniform/RngReadAndSkip¢4loop_body/stateful_uniform/RngReadAndSkip/pfor/while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ñ
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskY
Rank/packedPackstrided_slice:output:0*
N*
T0*
_output_shapes
:F
RankConst*
_output_shapes
: *
dtype0*
value	B :M
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :e
rangeRangerange/start:output:0Rank:output:0range/delta:output:0*
_output_shapes
:W
	Max/inputPackstrided_slice:output:0*
N*
T0*
_output_shapes
:O
MaxMaxMax/input:output:0range:output:0*
T0*
_output_shapes
: h
&loop_body/PlaceholderWithDefault/inputConst*
_output_shapes
: *
dtype0*
value	B : 
 loop_body/PlaceholderWithDefaultPlaceholderWithDefault/loop_body/PlaceholderWithDefault/input:output:0*
_output_shapes
: *
dtype0*
shape: E
loop_body/ShapeShapeinputs*
T0*
_output_shapes
:g
loop_body/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
loop_body/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
loop_body/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_sliceStridedSliceloop_body/Shape:output:0&loop_body/strided_slice/stack:output:0(loop_body/strided_slice/stack_1:output:0(loop_body/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskU
loop_body/Greater/yConst*
_output_shapes
: *
dtype0*
value	B :}
loop_body/GreaterGreater loop_body/strided_slice:output:0loop_body/Greater/y:output:0*
T0*
_output_shapes
: V
loop_body/SelectV2/eConst*
_output_shapes
: *
dtype0*
value	B :  
loop_body/SelectV2SelectV2loop_body/Greater:z:0)loop_body/PlaceholderWithDefault:output:0loop_body/SelectV2/e:output:0*
T0*
_output_shapes
: Y
loop_body/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
loop_body/GatherV2GatherV2inputsloop_body/SelectV2:output:0 loop_body/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*$
_output_shapes
:ààj
 loop_body/stateful_uniform/shapeConst*
_output_shapes
:*
dtype0*
valueB:c
loop_body/stateful_uniform/minConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ¿c
loop_body/stateful_uniform/maxConst*
_output_shapes
: *
dtype0*
valueB
 *|Ù ?j
 loop_body/stateful_uniform/ConstConst*
_output_shapes
:*
dtype0*
valueB: 
loop_body/stateful_uniform/ProdProd)loop_body/stateful_uniform/shape:output:0)loop_body/stateful_uniform/Const:output:0*
T0*
_output_shapes
: c
!loop_body/stateful_uniform/Cast/xConst*
_output_shapes
: *
dtype0*
value	B :
!loop_body/stateful_uniform/Cast_1Cast(loop_body/stateful_uniform/Prod:output:0*

DstT0*

SrcT0*
_output_shapes
: Þ
)loop_body/stateful_uniform/RngReadAndSkipRngReadAndSkip2loop_body_stateful_uniform_rngreadandskip_resource*loop_body/stateful_uniform/Cast/x:output:0%loop_body/stateful_uniform/Cast_1:y:0*
_output_shapes
:x
.loop_body/stateful_uniform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: z
0loop_body/stateful_uniform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0loop_body/stateful_uniform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Þ
(loop_body/stateful_uniform/strided_sliceStridedSlice1loop_body/stateful_uniform/RngReadAndSkip:value:07loop_body/stateful_uniform/strided_slice/stack:output:09loop_body/stateful_uniform/strided_slice/stack_1:output:09loop_body/stateful_uniform/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*

begin_mask
"loop_body/stateful_uniform/BitcastBitcast1loop_body/stateful_uniform/strided_slice:output:0*
T0	*
_output_shapes
:*

type0z
0loop_body/stateful_uniform/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:|
2loop_body/stateful_uniform/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:|
2loop_body/stateful_uniform/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ô
*loop_body/stateful_uniform/strided_slice_1StridedSlice1loop_body/stateful_uniform/RngReadAndSkip:value:09loop_body/stateful_uniform/strided_slice_1/stack:output:0;loop_body/stateful_uniform/strided_slice_1/stack_1:output:0;loop_body/stateful_uniform/strided_slice_1/stack_2:output:0*
Index0*
T0	*
_output_shapes
:
$loop_body/stateful_uniform/Bitcast_1Bitcast3loop_body/stateful_uniform/strided_slice_1:output:0*
T0	*
_output_shapes
:*

type0y
7loop_body/stateful_uniform/StatelessRandomUniformV2/algConst*
_output_shapes
: *
dtype0*
value	B :´
3loop_body/stateful_uniform/StatelessRandomUniformV2StatelessRandomUniformV2)loop_body/stateful_uniform/shape:output:0-loop_body/stateful_uniform/Bitcast_1:output:0+loop_body/stateful_uniform/Bitcast:output:0@loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
_output_shapes
:
loop_body/stateful_uniform/subSub'loop_body/stateful_uniform/max:output:0'loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
: ¬
loop_body/stateful_uniform/mulMul<loop_body/stateful_uniform/StatelessRandomUniformV2:output:0"loop_body/stateful_uniform/sub:z:0*
T0*
_output_shapes
:
loop_body/stateful_uniformAddV2"loop_body/stateful_uniform/mul:z:0'loop_body/stateful_uniform/min:output:0*
T0*
_output_shapes
:Z
loop_body/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
loop_body/ExpandDims
ExpandDimsloop_body/GatherV2:output:0!loop_body/ExpandDims/dim:output:0*
T0*(
_output_shapes
:ààj
loop_body/Shape_1Const*
_output_shapes
:*
dtype0*%
valueB"   à   à      r
loop_body/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
ýÿÿÿÿÿÿÿÿt
!loop_body/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿk
!loop_body/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_slice_1StridedSliceloop_body/Shape_1:output:0(loop_body/strided_slice_1/stack:output:0*loop_body/strided_slice_1/stack_1:output:0*loop_body/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
loop_body/CastCast"loop_body/strided_slice_1:output:0*

DstT0*

SrcT0*
_output_shapes
: r
loop_body/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
þÿÿÿÿÿÿÿÿt
!loop_body/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿk
!loop_body/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
loop_body/strided_slice_2StridedSliceloop_body/Shape_1:output:0(loop_body/strided_slice_2/stack:output:0*loop_body/strided_slice_2/stack_1:output:0*loop_body/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
loop_body/Cast_1Cast"loop_body/strided_slice_2:output:0*

DstT0*

SrcT0*
_output_shapes
: d
loop_body/rotation_matrix/sub/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/subSubloop_body/Cast_1:y:0(loop_body/rotation_matrix/sub/y:output:0*
T0*
_output_shapes
: i
loop_body/rotation_matrix/CosCosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_1Subloop_body/Cast_1:y:0*loop_body/rotation_matrix/sub_1/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mulMul!loop_body/rotation_matrix/Cos:y:0#loop_body/rotation_matrix/sub_1:z:0*
T0*
_output_shapes
:i
loop_body/rotation_matrix/SinSinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_2/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_2Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_2/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_1Mul!loop_body/rotation_matrix/Sin:y:0#loop_body/rotation_matrix/sub_2:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_3Sub!loop_body/rotation_matrix/mul:z:0#loop_body/rotation_matrix/mul_1:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_4Sub!loop_body/rotation_matrix/sub:z:0#loop_body/rotation_matrix/sub_3:z:0*
T0*
_output_shapes
:h
#loop_body/rotation_matrix/truediv/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¤
!loop_body/rotation_matrix/truedivRealDiv#loop_body/rotation_matrix/sub_4:z:0,loop_body/rotation_matrix/truediv/y:output:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_5/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_5Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_5/y:output:0*
T0*
_output_shapes
: k
loop_body/rotation_matrix/Sin_1Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_6/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_6Subloop_body/Cast_1:y:0*loop_body/rotation_matrix/sub_6/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_2Mul#loop_body/rotation_matrix/Sin_1:y:0#loop_body/rotation_matrix/sub_6:z:0*
T0*
_output_shapes
:k
loop_body/rotation_matrix/Cos_1Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:f
!loop_body/rotation_matrix/sub_7/yConst*
_output_shapes
: *
dtype0*
valueB
 *  ?
loop_body/rotation_matrix/sub_7Subloop_body/Cast:y:0*loop_body/rotation_matrix/sub_7/y:output:0*
T0*
_output_shapes
: 
loop_body/rotation_matrix/mul_3Mul#loop_body/rotation_matrix/Cos_1:y:0#loop_body/rotation_matrix/sub_7:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/addAddV2#loop_body/rotation_matrix/mul_2:z:0#loop_body/rotation_matrix/mul_3:z:0*
T0*
_output_shapes
:
loop_body/rotation_matrix/sub_8Sub#loop_body/rotation_matrix/sub_5:z:0!loop_body/rotation_matrix/add:z:0*
T0*
_output_shapes
:j
%loop_body/rotation_matrix/truediv_1/yConst*
_output_shapes
: *
dtype0*
valueB
 *   @¨
#loop_body/rotation_matrix/truediv_1RealDiv#loop_body/rotation_matrix/sub_8:z:0.loop_body/rotation_matrix/truediv_1/y:output:0*
T0*
_output_shapes
:i
loop_body/rotation_matrix/ShapeConst*
_output_shapes
:*
dtype0*
valueB:w
-loop_body/rotation_matrix/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: y
/loop_body/rotation_matrix/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:y
/loop_body/rotation_matrix/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
'loop_body/rotation_matrix/strided_sliceStridedSlice(loop_body/rotation_matrix/Shape:output:06loop_body/rotation_matrix/strided_slice/stack:output:08loop_body/rotation_matrix/strided_slice/stack_1:output:08loop_body/rotation_matrix/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskk
loop_body/rotation_matrix/Cos_2Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_1StridedSlice#loop_body/rotation_matrix/Cos_2:y:08loop_body/rotation_matrix/strided_slice_1/stack:output:0:loop_body/rotation_matrix/strided_slice_1/stack_1:output:0:loop_body/rotation_matrix/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Sin_2Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_2StridedSlice#loop_body/rotation_matrix/Sin_2:y:08loop_body/rotation_matrix/strided_slice_2/stack:output:0:loop_body/rotation_matrix/strided_slice_2/stack_1:output:0:loop_body/rotation_matrix/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
loop_body/rotation_matrix/NegNeg2loop_body/rotation_matrix/strided_slice_2:output:0*
T0*
_output_shapes

:
/loop_body/rotation_matrix/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ÿ
)loop_body/rotation_matrix/strided_slice_3StridedSlice%loop_body/rotation_matrix/truediv:z:08loop_body/rotation_matrix/strided_slice_3/stack:output:0:loop_body/rotation_matrix/strided_slice_3/stack_1:output:0:loop_body/rotation_matrix/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Sin_3Sinloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_4/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_4StridedSlice#loop_body/rotation_matrix/Sin_3:y:08loop_body/rotation_matrix/strided_slice_4/stack:output:0:loop_body/rotation_matrix/strided_slice_4/stack_1:output:0:loop_body/rotation_matrix/strided_slice_4/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskk
loop_body/rotation_matrix/Cos_3Cosloop_body/stateful_uniform:z:0*
T0*
_output_shapes
:
/loop_body/rotation_matrix/strided_slice_5/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ý
)loop_body/rotation_matrix/strided_slice_5StridedSlice#loop_body/rotation_matrix/Cos_3:y:08loop_body/rotation_matrix/strided_slice_5/stack:output:0:loop_body/rotation_matrix/strided_slice_5/stack_1:output:0:loop_body/rotation_matrix/strided_slice_5/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_mask
/loop_body/rotation_matrix/strided_slice_6/stackConst*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*
valueB"        
1loop_body/rotation_matrix/strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
)loop_body/rotation_matrix/strided_slice_6StridedSlice'loop_body/rotation_matrix/truediv_1:z:08loop_body/rotation_matrix/strided_slice_6/stack:output:0:loop_body/rotation_matrix/strided_slice_6/stack_1:output:0:loop_body/rotation_matrix/strided_slice_6/stack_2:output:0*
Index0*
T0*
_output_shapes

:*

begin_mask*
end_mask*
new_axis_maskj
(loop_body/rotation_matrix/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Á
&loop_body/rotation_matrix/zeros/packedPack0loop_body/rotation_matrix/strided_slice:output:01loop_body/rotation_matrix/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:j
%loop_body/rotation_matrix/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ±
loop_body/rotation_matrix/zerosFill/loop_body/rotation_matrix/zeros/packed:output:0.loop_body/rotation_matrix/zeros/Const:output:0*
T0*
_output_shapes

:g
%loop_body/rotation_matrix/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ß
 loop_body/rotation_matrix/concatConcatV22loop_body/rotation_matrix/strided_slice_1:output:0!loop_body/rotation_matrix/Neg:y:02loop_body/rotation_matrix/strided_slice_3:output:02loop_body/rotation_matrix/strided_slice_4:output:02loop_body/rotation_matrix/strided_slice_5:output:02loop_body/rotation_matrix/strided_slice_6:output:0(loop_body/rotation_matrix/zeros:output:0.loop_body/rotation_matrix/concat/axis:output:0*
N*
T0*
_output_shapes

:r
loop_body/transform/ShapeConst*
_output_shapes
:*
dtype0*%
valueB"   à   à      q
'loop_body/transform/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:s
)loop_body/transform/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)loop_body/transform/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¡
!loop_body/transform/strided_sliceStridedSlice"loop_body/transform/Shape:output:00loop_body/transform/strided_slice/stack:output:02loop_body/transform/strided_slice/stack_1:output:02loop_body/transform/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:c
loop_body/transform/fill_valueConst*
_output_shapes
: *
dtype0*
valueB
 *    ×
.loop_body/transform/ImageProjectiveTransformV3ImageProjectiveTransformV3loop_body/ExpandDims:output:0)loop_body/rotation_matrix/concat:output:0*loop_body/transform/strided_slice:output:0'loop_body/transform/fill_value:output:0*(
_output_shapes
:àà*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR§
loop_body/SqueezeSqueezeCloop_body/transform/ImageProjectiveTransformV3:transformed_images:0*
T0*$
_output_shapes
:àà*
squeeze_dims
 \
pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:g
pfor/ReshapeReshapeMax:output:0pfor/Reshape/shape:output:0*
T0*
_output_shapes
:R
pfor/range/startConst*
_output_shapes
: *
dtype0*
value	B : R
pfor/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :|

pfor/rangeRangepfor/range/start:output:0Max:output:0pfor/range/delta:output:0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Bloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Dloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Dloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/stateful_uniform/RngReadAndSkip/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Kloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack:output:0Mloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_1:output:0Mloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Jloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¿
<loop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2TensorListReserveSloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2/element_shape:output:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0	*

shape_type0:éèÐv
4loop_body/stateful_uniform/RngReadAndSkip/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Gloop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Aloop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Î
4loop_body/stateful_uniform/RngReadAndSkip/pfor/whileWhileJloop_body/stateful_uniform/RngReadAndSkip/pfor/while/loop_counter:output:0Ploop_body/stateful_uniform/RngReadAndSkip/pfor/while/maximum_iterations:output:0=loop_body/stateful_uniform/RngReadAndSkip/pfor/Const:output:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorArrayV2:handle:0Eloop_body/stateful_uniform/RngReadAndSkip/pfor/strided_slice:output:02loop_body_stateful_uniform_rngreadandskip_resource*loop_body/stateful_uniform/Cast/x:output:0%loop_body/stateful_uniform/Cast_1:y:0*^loop_body/stateful_uniform/RngReadAndSkip*
T

2*
_lower_using_switch_merge(*
_num_original_outputs*$
_output_shapes
: : : : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *J
bodyBR@
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_4340*J
condBR@
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_4339*#
output_shapes
: : : : : : : : y
6loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	  
Oloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   
Aloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2TensorListConcatV2=loop_body/stateful_uniform/RngReadAndSkip/pfor/while:output:3Xloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2/element_shape:output:0?loop_body/stateful_uniform/RngReadAndSkip/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0	*

shape_type0
=loop_body/stateful_uniform/strided_slice/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: {
9loop_body/stateful_uniform/strided_slice/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ³
4loop_body/stateful_uniform/strided_slice/pfor/concatConcatV2Floop_body/stateful_uniform/strided_slice/pfor/concat/values_0:output:07loop_body/stateful_uniform/strided_slice/stack:output:0Bloop_body/stateful_uniform/strided_slice/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
?loop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: }
;loop_body/stateful_uniform/strided_slice/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice/pfor/concat_1ConcatV2Hloop_body/stateful_uniform/strided_slice/pfor/concat_1/values_0:output:09loop_body/stateful_uniform/strided_slice/stack_1:output:0Dloop_body/stateful_uniform/strided_slice/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
?loop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:}
;loop_body/stateful_uniform/strided_slice/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice/pfor/concat_2ConcatV2Hloop_body/stateful_uniform/strided_slice/pfor/concat_2/values_0:output:09loop_body/stateful_uniform/strided_slice/stack_2:output:0Dloop_body/stateful_uniform/strided_slice/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:¸
:loop_body/stateful_uniform/strided_slice/pfor/StridedSliceStridedSliceJloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0=loop_body/stateful_uniform/strided_slice/pfor/concat:output:0?loop_body/stateful_uniform/strided_slice/pfor/concat_1:output:0?loop_body/stateful_uniform/strided_slice/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
;loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=loop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ø
5loop_body/stateful_uniform/Bitcast/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Dloop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack:output:0Floop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_1:output:0Floop_body/stateful_uniform/Bitcast/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Cloop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿª
5loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2TensorListReserveLloop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2/element_shape:output:0>loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌo
-loop_body/stateful_uniform/Bitcast/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
@loop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ|
:loop_body/stateful_uniform/Bitcast/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : É
-loop_body/stateful_uniform/Bitcast/pfor/whileStatelessWhileCloop_body/stateful_uniform/Bitcast/pfor/while/loop_counter:output:0Iloop_body/stateful_uniform/Bitcast/pfor/while/maximum_iterations:output:06loop_body/stateful_uniform/Bitcast/pfor/Const:output:0>loop_body/stateful_uniform/Bitcast/pfor/TensorArrayV2:handle:0>loop_body/stateful_uniform/Bitcast/pfor/strided_slice:output:0Cloop_body/stateful_uniform/strided_slice/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *C
body;R9
7loop_body_stateful_uniform_Bitcast_pfor_while_body_4405*C
cond;R9
7loop_body_stateful_uniform_Bitcast_pfor_while_cond_4404*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿr
/loop_body/stateful_uniform/Bitcast/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 
Hloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ô
:loop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2TensorListConcatV26loop_body/stateful_uniform/Bitcast/pfor/while:output:3Qloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2/element_shape:output:08loop_body/stateful_uniform/Bitcast/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0
?loop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: }
;loop_body/stateful_uniform/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : »
6loop_body/stateful_uniform/strided_slice_1/pfor/concatConcatV2Hloop_body/stateful_uniform/strided_slice_1/pfor/concat/values_0:output:09loop_body/stateful_uniform/strided_slice_1/stack:output:0Dloop_body/stateful_uniform/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: 
=loop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
8loop_body/stateful_uniform/strided_slice_1/pfor/concat_1ConcatV2Jloop_body/stateful_uniform/strided_slice_1/pfor/concat_1/values_0:output:0;loop_body/stateful_uniform/strided_slice_1/stack_1:output:0Floop_body/stateful_uniform/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:
=loop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : Ã
8loop_body/stateful_uniform/strided_slice_1/pfor/concat_2ConcatV2Jloop_body/stateful_uniform/strided_slice_1/pfor/concat_2/values_0:output:0;loop_body/stateful_uniform/strided_slice_1/stack_2:output:0Floop_body/stateful_uniform/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:À
<loop_body/stateful_uniform/strided_slice_1/pfor/StridedSliceStridedSliceJloop_body/stateful_uniform/RngReadAndSkip/pfor/TensorListConcatV2:tensor:0?loop_body/stateful_uniform/strided_slice_1/pfor/concat:output:0Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_1:output:0Aloop_body/stateful_uniform/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0	*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask
=loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
?loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
?loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
7loop_body/stateful_uniform/Bitcast_1/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Floop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack:output:0Hloop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_1:output:0Hloop_body/stateful_uniform/Bitcast_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Eloop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ°
7loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2TensorListReserveNloop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2/element_shape:output:0@loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÌq
/loop_body/stateful_uniform/Bitcast_1/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Bloop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ~
<loop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Û
/loop_body/stateful_uniform/Bitcast_1/pfor/whileStatelessWhileEloop_body/stateful_uniform/Bitcast_1/pfor/while/loop_counter:output:0Kloop_body/stateful_uniform/Bitcast_1/pfor/while/maximum_iterations:output:08loop_body/stateful_uniform/Bitcast_1/pfor/Const:output:0@loop_body/stateful_uniform/Bitcast_1/pfor/TensorArrayV2:handle:0@loop_body/stateful_uniform/Bitcast_1/pfor/strided_slice:output:0Eloop_body/stateful_uniform/strided_slice_1/pfor/StridedSlice:output:0*
T

2	*
_lower_using_switch_merge(*
_num_original_outputs*1
_output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *
_stateful_parallelism( *E
body=R;
9loop_body_stateful_uniform_Bitcast_1_pfor_while_body_4472*E
cond=R;
9loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_4471*0
output_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿt
1loop_body/stateful_uniform/Bitcast_1/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 
Jloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿ   ü
<loop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2TensorListConcatV28loop_body/stateful_uniform/Bitcast_1/pfor/while:output:3Sloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2/element_shape:output:0:loop_body/stateful_uniform/Bitcast_1/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0
Lloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¼
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Uloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_1:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÝ
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2TensorListReserve]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2/element_shape:output:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
>loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Qloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Kloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¾	
>loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/whileStatelessWhileTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/loop_counter:output:0Zloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/maximum_iterations:output:0Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const:output:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorArrayV2:handle:0Oloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/strided_slice:output:0Eloop_body/stateful_uniform/Bitcast_1/pfor/TensorListConcatV2:tensor:0Cloop_body/stateful_uniform/Bitcast/pfor/TensorListConcatV2:tensor:0)loop_body/stateful_uniform/shape:output:0@loop_body/stateful_uniform/StatelessRandomUniformV2/alg:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*L
_output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *T
bodyLRJ
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_4529*T
condLRJ
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_4528*K
output_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: 
@loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 ª
Yloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÿÿÿÿ¸
Kloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2TensorListConcatV2Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while:output:3bloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2/element_shape:output:0Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/Const_1:output:0*6
_output_shapes$
":ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0j
(loop_body/stateful_uniform/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :l
*loop_body/stateful_uniform/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : k
)loop_body/stateful_uniform/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :º
'loop_body/stateful_uniform/mul/pfor/addAddV23loop_body/stateful_uniform/mul/pfor/Rank_1:output:02loop_body/stateful_uniform/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ·
+loop_body/stateful_uniform/mul/pfor/MaximumMaximum+loop_body/stateful_uniform/mul/pfor/add:z:01loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: ­
)loop_body/stateful_uniform/mul/pfor/ShapeShapeTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:0*
T0*
_output_shapes
:³
'loop_body/stateful_uniform/mul/pfor/subSub/loop_body/stateful_uniform/mul/pfor/Maximum:z:01loop_body/stateful_uniform/mul/pfor/Rank:output:0*
T0*
_output_shapes
: {
1loop_body/stateful_uniform/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ä
+loop_body/stateful_uniform/mul/pfor/ReshapeReshape+loop_body/stateful_uniform/mul/pfor/sub:z:0:loop_body/stateful_uniform/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:x
.loop_body/stateful_uniform/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Â
(loop_body/stateful_uniform/mul/pfor/TileTile7loop_body/stateful_uniform/mul/pfor/Tile/input:output:04loop_body/stateful_uniform/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
7loop_body/stateful_uniform/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9loop_body/stateful_uniform/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9loop_body/stateful_uniform/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1loop_body/stateful_uniform/mul/pfor/strided_sliceStridedSlice2loop_body/stateful_uniform/mul/pfor/Shape:output:0@loop_body/stateful_uniform/mul/pfor/strided_slice/stack:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice/stack_1:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
9loop_body/stateful_uniform/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
;loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
;loop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3loop_body/stateful_uniform/mul/pfor/strided_slice_1StridedSlice2loop_body/stateful_uniform/mul/pfor/Shape:output:0Bloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack:output:0Dloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_1:output:0Dloop_body/stateful_uniform/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskq
/loop_body/stateful_uniform/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ë
*loop_body/stateful_uniform/mul/pfor/concatConcatV2:loop_body/stateful_uniform/mul/pfor/strided_slice:output:01loop_body/stateful_uniform/mul/pfor/Tile:output:0<loop_body/stateful_uniform/mul/pfor/strided_slice_1:output:08loop_body/stateful_uniform/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:õ
-loop_body/stateful_uniform/mul/pfor/Reshape_1ReshapeTloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/TensorListConcatV2:tensor:03loop_body/stateful_uniform/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
'loop_body/stateful_uniform/mul/pfor/MulMul6loop_body/stateful_uniform/mul/pfor/Reshape_1:output:0"loop_body/stateful_uniform/sub:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
$loop_body/stateful_uniform/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :h
&loop_body/stateful_uniform/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : g
%loop_body/stateful_uniform/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
#loop_body/stateful_uniform/pfor/addAddV2/loop_body/stateful_uniform/pfor/Rank_1:output:0.loop_body/stateful_uniform/pfor/add/y:output:0*
T0*
_output_shapes
: «
'loop_body/stateful_uniform/pfor/MaximumMaximum'loop_body/stateful_uniform/pfor/add:z:0-loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
: 
%loop_body/stateful_uniform/pfor/ShapeShape+loop_body/stateful_uniform/mul/pfor/Mul:z:0*
T0*
_output_shapes
:§
#loop_body/stateful_uniform/pfor/subSub+loop_body/stateful_uniform/pfor/Maximum:z:0-loop_body/stateful_uniform/pfor/Rank:output:0*
T0*
_output_shapes
: w
-loop_body/stateful_uniform/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:¸
'loop_body/stateful_uniform/pfor/ReshapeReshape'loop_body/stateful_uniform/pfor/sub:z:06loop_body/stateful_uniform/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:t
*loop_body/stateful_uniform/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¶
$loop_body/stateful_uniform/pfor/TileTile3loop_body/stateful_uniform/pfor/Tile/input:output:00loop_body/stateful_uniform/pfor/Reshape:output:0*
T0*
_output_shapes
: }
3loop_body/stateful_uniform/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5loop_body/stateful_uniform/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5loop_body/stateful_uniform/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ï
-loop_body/stateful_uniform/pfor/strided_sliceStridedSlice.loop_body/stateful_uniform/pfor/Shape:output:0<loop_body/stateful_uniform/pfor/strided_slice/stack:output:0>loop_body/stateful_uniform/pfor/strided_slice/stack_1:output:0>loop_body/stateful_uniform/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
5loop_body/stateful_uniform/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
7loop_body/stateful_uniform/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
7loop_body/stateful_uniform/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:õ
/loop_body/stateful_uniform/pfor/strided_slice_1StridedSlice.loop_body/stateful_uniform/pfor/Shape:output:0>loop_body/stateful_uniform/pfor/strided_slice_1/stack:output:0@loop_body/stateful_uniform/pfor/strided_slice_1/stack_1:output:0@loop_body/stateful_uniform/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskm
+loop_body/stateful_uniform/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
&loop_body/stateful_uniform/pfor/concatConcatV26loop_body/stateful_uniform/pfor/strided_slice:output:0-loop_body/stateful_uniform/pfor/Tile:output:08loop_body/stateful_uniform/pfor/strided_slice_1:output:04loop_body/stateful_uniform/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ä
)loop_body/stateful_uniform/pfor/Reshape_1Reshape+loop_body/stateful_uniform/mul/pfor/Mul:z:0/loop_body/stateful_uniform/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ½
%loop_body/stateful_uniform/pfor/AddV2AddV22loop_body/stateful_uniform/pfor/Reshape_1:output:0'loop_body/stateful_uniform/min:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Cos_1/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_3/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_3/pfor/addAddV24loop_body/rotation_matrix/mul_3/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_3/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_3/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_3/pfor/add:z:02loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_3/pfor/ShapeShape,loop_body/rotation_matrix/Cos_1/pfor/Cos:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_3/pfor/subSub0loop_body/rotation_matrix/mul_3/pfor/Maximum:z:02loop_body/rotation_matrix/mul_3/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_3/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_3/pfor/sub:z:0;loop_body/rotation_matrix/mul_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_3/pfor/TileTile8loop_body/rotation_matrix/mul_3/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_3/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_3/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_3/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_3/pfor/concatConcatV2;loop_body/rotation_matrix/mul_3/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_3/pfor/Tile:output:0=loop_body/rotation_matrix/mul_3/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/mul_3/pfor/Reshape_1Reshape,loop_body/rotation_matrix/Cos_1/pfor/Cos:y:04loop_body/rotation_matrix/mul_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_3/pfor/MulMul7loop_body/rotation_matrix/mul_3/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_7:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Sin_1/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_2/pfor/addAddV24loop_body/rotation_matrix/mul_2/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_2/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_2/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_2/pfor/add:z:02loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_2/pfor/ShapeShape,loop_body/rotation_matrix/Sin_1/pfor/Sin:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_2/pfor/subSub0loop_body/rotation_matrix/mul_2/pfor/Maximum:z:02loop_body/rotation_matrix/mul_2/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_2/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_2/pfor/sub:z:0;loop_body/rotation_matrix/mul_2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_2/pfor/TileTile8loop_body/rotation_matrix/mul_2/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_2/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_2/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_2/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_2/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_2/pfor/concatConcatV2;loop_body/rotation_matrix/mul_2/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_2/pfor/Tile:output:0=loop_body/rotation_matrix/mul_2/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/mul_2/pfor/Reshape_1Reshape,loop_body/rotation_matrix/Sin_1/pfor/Sin:y:04loop_body/rotation_matrix/mul_2/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_2/pfor/MulMul7loop_body/rotation_matrix/mul_2/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_6:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
'loop_body/rotation_matrix/add/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :k
)loop_body/rotation_matrix/add/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
*loop_body/rotation_matrix/add/pfor/MaximumMaximum2loop_body/rotation_matrix/add/pfor/Rank_1:output:00loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: 
(loop_body/rotation_matrix/add/pfor/ShapeShape,loop_body/rotation_matrix/mul_2/pfor/Mul:z:0*
T0*
_output_shapes
:°
&loop_body/rotation_matrix/add/pfor/subSub.loop_body/rotation_matrix/add/pfor/Maximum:z:00loop_body/rotation_matrix/add/pfor/Rank:output:0*
T0*
_output_shapes
: z
0loop_body/rotation_matrix/add/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Á
*loop_body/rotation_matrix/add/pfor/ReshapeReshape*loop_body/rotation_matrix/add/pfor/sub:z:09loop_body/rotation_matrix/add/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:w
-loop_body/rotation_matrix/add/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¿
'loop_body/rotation_matrix/add/pfor/TileTile6loop_body/rotation_matrix/add/pfor/Tile/input:output:03loop_body/rotation_matrix/add/pfor/Reshape:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/add/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8loop_body/rotation_matrix/add/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8loop_body/rotation_matrix/add/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
0loop_body/rotation_matrix/add/pfor/strided_sliceStridedSlice1loop_body/rotation_matrix/add/pfor/Shape:output:0?loop_body/rotation_matrix/add/pfor/strided_slice/stack:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice/stack_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/add/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_1StridedSlice1loop_body/rotation_matrix/add/pfor/Shape:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_1/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskp
.loop_body/rotation_matrix/add/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
)loop_body/rotation_matrix/add/pfor/concatConcatV29loop_body/rotation_matrix/add/pfor/strided_slice:output:00loop_body/rotation_matrix/add/pfor/Tile:output:0;loop_body/rotation_matrix/add/pfor/strided_slice_1:output:07loop_body/rotation_matrix/add/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ë
,loop_body/rotation_matrix/add/pfor/Reshape_1Reshape,loop_body/rotation_matrix/mul_2/pfor/Mul:z:02loop_body/rotation_matrix/add/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*loop_body/rotation_matrix/add/pfor/Shape_1Shape,loop_body/rotation_matrix/mul_3/pfor/Mul:z:0*
T0*
_output_shapes
:´
(loop_body/rotation_matrix/add/pfor/sub_1Sub.loop_body/rotation_matrix/add/pfor/Maximum:z:02loop_body/rotation_matrix/add/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/add/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/add/pfor/Reshape_2Reshape,loop_body/rotation_matrix/add/pfor/sub_1:z:0;loop_body/rotation_matrix/add/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/add/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/add/pfor/Tile_1Tile8loop_body/rotation_matrix/add/pfor/Tile_1/input:output:05loop_body/rotation_matrix/add/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/add/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_2StridedSlice3loop_body/rotation_matrix/add/pfor/Shape_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_2/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_2/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/add/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/add/pfor/strided_slice_3StridedSlice3loop_body/rotation_matrix/add/pfor/Shape_1:output:0Aloop_body/rotation_matrix/add/pfor/strided_slice_3/stack:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_3/stack_1:output:0Cloop_body/rotation_matrix/add/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/add/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Î
+loop_body/rotation_matrix/add/pfor/concat_1ConcatV2;loop_body/rotation_matrix/add/pfor/strided_slice_2:output:02loop_body/rotation_matrix/add/pfor/Tile_1:output:0;loop_body/rotation_matrix/add/pfor/strided_slice_3:output:09loop_body/rotation_matrix/add/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Í
,loop_body/rotation_matrix/add/pfor/Reshape_3Reshape,loop_body/rotation_matrix/mul_3/pfor/Mul:z:04loop_body/rotation_matrix/add/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÑ
(loop_body/rotation_matrix/add/pfor/AddV2AddV25loop_body/rotation_matrix/add/pfor/Reshape_1:output:05loop_body/rotation_matrix/add/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_8/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/sub_8/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :»
(loop_body/rotation_matrix/sub_8/pfor/addAddV22loop_body/rotation_matrix/sub_8/pfor/Rank:output:03loop_body/rotation_matrix/sub_8/pfor/add/y:output:0*
T0*
_output_shapes
: m
+loop_body/rotation_matrix/sub_8/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
,loop_body/rotation_matrix/sub_8/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0,loop_body/rotation_matrix/sub_8/pfor/add:z:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_8/pfor/ShapeShape,loop_body/rotation_matrix/add/pfor/AddV2:z:0*
T0*
_output_shapes
:¸
(loop_body/rotation_matrix/sub_8/pfor/subSub0loop_body/rotation_matrix/sub_8/pfor/Maximum:z:04loop_body/rotation_matrix/sub_8/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_8/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_8/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_8/pfor/sub:z:0;loop_body/rotation_matrix/sub_8/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_8/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_8/pfor/TileTile8loop_body/rotation_matrix/sub_8/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_8/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_8/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_8/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_8/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_8/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_8/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_8/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_8/pfor/concatConcatV2;loop_body/rotation_matrix/sub_8/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_8/pfor/Tile:output:0=loop_body/rotation_matrix/sub_8/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_8/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ï
.loop_body/rotation_matrix/sub_8/pfor/Reshape_1Reshape,loop_body/rotation_matrix/add/pfor/AddV2:z:04loop_body/rotation_matrix/sub_8/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÁ
*loop_body/rotation_matrix/sub_8/pfor/Sub_1Sub#loop_body/rotation_matrix/sub_5:z:07loop_body/rotation_matrix/sub_8/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿo
-loop_body/rotation_matrix/truediv_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :q
/loop_body/rotation_matrix/truediv_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : p
.loop_body/rotation_matrix/truediv_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :É
,loop_body/rotation_matrix/truediv_1/pfor/addAddV28loop_body/rotation_matrix/truediv_1/pfor/Rank_1:output:07loop_body/rotation_matrix/truediv_1/pfor/add/y:output:0*
T0*
_output_shapes
: Æ
0loop_body/rotation_matrix/truediv_1/pfor/MaximumMaximum0loop_body/rotation_matrix/truediv_1/pfor/add:z:06loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
.loop_body/rotation_matrix/truediv_1/pfor/ShapeShape.loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:0*
T0*
_output_shapes
:Â
,loop_body/rotation_matrix/truediv_1/pfor/subSub4loop_body/rotation_matrix/truediv_1/pfor/Maximum:z:06loop_body/rotation_matrix/truediv_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/truediv_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ó
0loop_body/rotation_matrix/truediv_1/pfor/ReshapeReshape0loop_body/rotation_matrix/truediv_1/pfor/sub:z:0?loop_body/rotation_matrix/truediv_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:}
3loop_body/rotation_matrix/truediv_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Ñ
-loop_body/rotation_matrix/truediv_1/pfor/TileTile<loop_body/rotation_matrix/truediv_1/pfor/Tile/input:output:09loop_body/rotation_matrix/truediv_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
<loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6loop_body/rotation_matrix/truediv_1/pfor/strided_sliceStridedSlice7loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Eloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_1:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
>loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
@loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
@loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¢
8loop_body/rotation_matrix/truediv_1/pfor/strided_slice_1StridedSlice7loop_body/rotation_matrix/truediv_1/pfor/Shape:output:0Gloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack:output:0Iloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_1:output:0Iloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskv
4loop_body/rotation_matrix/truediv_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ä
/loop_body/rotation_matrix/truediv_1/pfor/concatConcatV2?loop_body/rotation_matrix/truediv_1/pfor/strided_slice:output:06loop_body/rotation_matrix/truediv_1/pfor/Tile:output:0Aloop_body/rotation_matrix/truediv_1/pfor/strided_slice_1:output:0=loop_body/rotation_matrix/truediv_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ù
2loop_body/rotation_matrix/truediv_1/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_8/pfor/Sub_1:z:08loop_body/rotation_matrix/truediv_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÚ
0loop_body/rotation_matrix/truediv_1/pfor/RealDivRealDiv;loop_body/rotation_matrix/truediv_1/pfor/Reshape_1:output:0.loop_body/rotation_matrix/truediv_1/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_6/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_6/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_6/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_6/stack:output:0Cloop_body/rotation_matrix/strided_slice_6/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_6/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_6/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_6/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_6/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_6/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_6/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_6/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_6/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:¿
;loop_body/rotation_matrix/strided_slice_6/pfor/StridedSliceStridedSlice4loop_body/rotation_matrix/truediv_1/pfor/RealDiv:z:0>loop_body/rotation_matrix/strided_slice_6/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_6/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_6/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Cos_3/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_5/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_5/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_5/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_5/stack:output:0Cloop_body/rotation_matrix/strided_slice_5/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_5/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_5/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_5/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_5/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_5/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_5/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_5/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_5/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_5/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Cos_3/pfor/Cos:y:0>loop_body/rotation_matrix/strided_slice_5/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_5/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_5/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Sin_3/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_4/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_4/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_4/stack:output:0Cloop_body/rotation_matrix/strided_slice_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_4/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_4/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_4/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_4/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_4/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_4/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_4/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_4/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_4/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Sin_3/pfor/Sin:y:0>loop_body/rotation_matrix/strided_slice_4/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_4/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_4/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
&loop_body/rotation_matrix/Sin/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/mul_1/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/mul_1/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/mul_1/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :½
(loop_body/rotation_matrix/mul_1/pfor/addAddV24loop_body/rotation_matrix/mul_1/pfor/Rank_1:output:03loop_body/rotation_matrix/mul_1/pfor/add/y:output:0*
T0*
_output_shapes
: º
,loop_body/rotation_matrix/mul_1/pfor/MaximumMaximum,loop_body/rotation_matrix/mul_1/pfor/add:z:02loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/mul_1/pfor/ShapeShape*loop_body/rotation_matrix/Sin/pfor/Sin:y:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/mul_1/pfor/subSub0loop_body/rotation_matrix/mul_1/pfor/Maximum:z:02loop_body/rotation_matrix/mul_1/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/mul_1/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/mul_1/pfor/ReshapeReshape,loop_body/rotation_matrix/mul_1/pfor/sub:z:0;loop_body/rotation_matrix/mul_1/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/mul_1/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/mul_1/pfor/TileTile8loop_body/rotation_matrix/mul_1/pfor/Tile/input:output:05loop_body/rotation_matrix/mul_1/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/mul_1/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul_1/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Aloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/mul_1/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/mul_1/pfor/Shape:output:0Cloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/mul_1/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/mul_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/mul_1/pfor/concatConcatV2;loop_body/rotation_matrix/mul_1/pfor/strided_slice:output:02loop_body/rotation_matrix/mul_1/pfor/Tile:output:0=loop_body/rotation_matrix/mul_1/pfor/strided_slice_1:output:09loop_body/rotation_matrix/mul_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Í
.loop_body/rotation_matrix/mul_1/pfor/Reshape_1Reshape*loop_body/rotation_matrix/Sin/pfor/Sin:y:04loop_body/rotation_matrix/mul_1/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
(loop_body/rotation_matrix/mul_1/pfor/MulMul7loop_body/rotation_matrix/mul_1/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
&loop_body/rotation_matrix/Cos/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
'loop_body/rotation_matrix/mul/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :k
)loop_body/rotation_matrix/mul/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : j
(loop_body/rotation_matrix/mul/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :·
&loop_body/rotation_matrix/mul/pfor/addAddV22loop_body/rotation_matrix/mul/pfor/Rank_1:output:01loop_body/rotation_matrix/mul/pfor/add/y:output:0*
T0*
_output_shapes
: ´
*loop_body/rotation_matrix/mul/pfor/MaximumMaximum*loop_body/rotation_matrix/mul/pfor/add:z:00loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: 
(loop_body/rotation_matrix/mul/pfor/ShapeShape*loop_body/rotation_matrix/Cos/pfor/Cos:y:0*
T0*
_output_shapes
:°
&loop_body/rotation_matrix/mul/pfor/subSub.loop_body/rotation_matrix/mul/pfor/Maximum:z:00loop_body/rotation_matrix/mul/pfor/Rank:output:0*
T0*
_output_shapes
: z
0loop_body/rotation_matrix/mul/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Á
*loop_body/rotation_matrix/mul/pfor/ReshapeReshape*loop_body/rotation_matrix/mul/pfor/sub:z:09loop_body/rotation_matrix/mul/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:w
-loop_body/rotation_matrix/mul/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:¿
'loop_body/rotation_matrix/mul/pfor/TileTile6loop_body/rotation_matrix/mul/pfor/Tile/input:output:03loop_body/rotation_matrix/mul/pfor/Reshape:output:0*
T0*
_output_shapes
: 
6loop_body/rotation_matrix/mul/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8loop_body/rotation_matrix/mul/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8loop_body/rotation_matrix/mul/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:þ
0loop_body/rotation_matrix/mul/pfor/strided_sliceStridedSlice1loop_body/rotation_matrix/mul/pfor/Shape:output:0?loop_body/rotation_matrix/mul/pfor/strided_slice/stack:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice/stack_1:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
8loop_body/rotation_matrix/mul/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/mul/pfor/strided_slice_1StridedSlice1loop_body/rotation_matrix/mul/pfor/Shape:output:0Aloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_1:output:0Cloop_body/rotation_matrix/mul/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskp
.loop_body/rotation_matrix/mul/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Æ
)loop_body/rotation_matrix/mul/pfor/concatConcatV29loop_body/rotation_matrix/mul/pfor/strided_slice:output:00loop_body/rotation_matrix/mul/pfor/Tile:output:0;loop_body/rotation_matrix/mul/pfor/strided_slice_1:output:07loop_body/rotation_matrix/mul/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:É
,loop_body/rotation_matrix/mul/pfor/Reshape_1Reshape*loop_body/rotation_matrix/Cos/pfor/Cos:y:02loop_body/rotation_matrix/mul/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ»
&loop_body/rotation_matrix/mul/pfor/MulMul5loop_body/rotation_matrix/mul/pfor/Reshape_1:output:0#loop_body/rotation_matrix/sub_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_3/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :m
+loop_body/rotation_matrix/sub_3/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :Â
,loop_body/rotation_matrix/sub_3/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:02loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_3/pfor/ShapeShape*loop_body/rotation_matrix/mul/pfor/Mul:z:0*
T0*
_output_shapes
:¶
(loop_body/rotation_matrix/sub_3/pfor/subSub0loop_body/rotation_matrix/sub_3/pfor/Maximum:z:02loop_body/rotation_matrix/sub_3/pfor/Rank:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_3/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_3/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_3/pfor/sub:z:0;loop_body/rotation_matrix/sub_3/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_3/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_3/pfor/TileTile8loop_body/rotation_matrix/sub_3/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_3/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_3/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_3/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_3/pfor/concatConcatV2;loop_body/rotation_matrix/sub_3/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_3/pfor/Tile:output:0=loop_body/rotation_matrix/sub_3/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Í
.loop_body/rotation_matrix/sub_3/pfor/Reshape_1Reshape*loop_body/rotation_matrix/mul/pfor/Mul:z:04loop_body/rotation_matrix/sub_3/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
,loop_body/rotation_matrix/sub_3/pfor/Shape_1Shape,loop_body/rotation_matrix/mul_1/pfor/Mul:z:0*
T0*
_output_shapes
:º
*loop_body/rotation_matrix/sub_3/pfor/sub_1Sub0loop_body/rotation_matrix/sub_3/pfor/Maximum:z:04loop_body/rotation_matrix/sub_3/pfor/Rank_1:output:0*
T0*
_output_shapes
: ~
4loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shapeConst*
_output_shapes
:*
dtype0*
valueB:Í
.loop_body/rotation_matrix/sub_3/pfor/Reshape_2Reshape.loop_body/rotation_matrix/sub_3/pfor/sub_1:z:0=loop_body/rotation_matrix/sub_3/pfor/Reshape_2/shape:output:0*
T0*
_output_shapes
:{
1loop_body/rotation_matrix/sub_3/pfor/Tile_1/inputConst*
_output_shapes
:*
dtype0*
valueB:Ë
+loop_body/rotation_matrix/sub_3/pfor/Tile_1Tile:loop_body/rotation_matrix/sub_3/pfor/Tile_1/input:output:07loop_body/rotation_matrix/sub_3/pfor/Reshape_2:output:0*
T0*
_output_shapes
: 
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_2StridedSlice5loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_3/pfor/strided_slice_3StridedSlice5loop_body/rotation_matrix/sub_3/pfor/Shape_1:output:0Cloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_1:output:0Eloop_body/rotation_matrix/sub_3/pfor/strided_slice_3/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskt
2loop_body/rotation_matrix/sub_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Ø
-loop_body/rotation_matrix/sub_3/pfor/concat_1ConcatV2=loop_body/rotation_matrix/sub_3/pfor/strided_slice_2:output:04loop_body/rotation_matrix/sub_3/pfor/Tile_1:output:0=loop_body/rotation_matrix/sub_3/pfor/strided_slice_3:output:0;loop_body/rotation_matrix/sub_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:Ñ
.loop_body/rotation_matrix/sub_3/pfor/Reshape_3Reshape,loop_body/rotation_matrix/mul_1/pfor/Mul:z:06loop_body/rotation_matrix/sub_3/pfor/concat_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÕ
*loop_body/rotation_matrix/sub_3/pfor/Sub_2Sub7loop_body/rotation_matrix/sub_3/pfor/Reshape_1:output:07loop_body/rotation_matrix/sub_3/pfor/Reshape_3:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿk
)loop_body/rotation_matrix/sub_4/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : l
*loop_body/rotation_matrix/sub_4/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :»
(loop_body/rotation_matrix/sub_4/pfor/addAddV22loop_body/rotation_matrix/sub_4/pfor/Rank:output:03loop_body/rotation_matrix/sub_4/pfor/add/y:output:0*
T0*
_output_shapes
: m
+loop_body/rotation_matrix/sub_4/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :¼
,loop_body/rotation_matrix/sub_4/pfor/MaximumMaximum4loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0,loop_body/rotation_matrix/sub_4/pfor/add:z:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/sub_4/pfor/ShapeShape.loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:0*
T0*
_output_shapes
:¸
(loop_body/rotation_matrix/sub_4/pfor/subSub0loop_body/rotation_matrix/sub_4/pfor/Maximum:z:04loop_body/rotation_matrix/sub_4/pfor/Rank_1:output:0*
T0*
_output_shapes
: |
2loop_body/rotation_matrix/sub_4/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Ç
,loop_body/rotation_matrix/sub_4/pfor/ReshapeReshape,loop_body/rotation_matrix/sub_4/pfor/sub:z:0;loop_body/rotation_matrix/sub_4/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:y
/loop_body/rotation_matrix/sub_4/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Å
)loop_body/rotation_matrix/sub_4/pfor/TileTile8loop_body/rotation_matrix/sub_4/pfor/Tile/input:output:05loop_body/rotation_matrix/sub_4/pfor/Reshape:output:0*
T0*
_output_shapes
: 
8loop_body/rotation_matrix/sub_4/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
:loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
:loop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
2loop_body/rotation_matrix/sub_4/pfor/strided_sliceStridedSlice3loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Aloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_1:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
:loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/sub_4/pfor/strided_slice_1StridedSlice3loop_body/rotation_matrix/sub_4/pfor/Shape:output:0Cloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack:output:0Eloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/sub_4/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskr
0loop_body/rotation_matrix/sub_4/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ð
+loop_body/rotation_matrix/sub_4/pfor/concatConcatV2;loop_body/rotation_matrix/sub_4/pfor/strided_slice:output:02loop_body/rotation_matrix/sub_4/pfor/Tile:output:0=loop_body/rotation_matrix/sub_4/pfor/strided_slice_1:output:09loop_body/rotation_matrix/sub_4/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Ñ
.loop_body/rotation_matrix/sub_4/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_3/pfor/Sub_2:z:04loop_body/rotation_matrix/sub_4/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¿
*loop_body/rotation_matrix/sub_4/pfor/Sub_1Sub!loop_body/rotation_matrix/sub:z:07loop_body/rotation_matrix/sub_4/pfor/Reshape_1:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
+loop_body/rotation_matrix/truediv/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B :o
-loop_body/rotation_matrix/truediv/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B : n
,loop_body/rotation_matrix/truediv/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ã
*loop_body/rotation_matrix/truediv/pfor/addAddV26loop_body/rotation_matrix/truediv/pfor/Rank_1:output:05loop_body/rotation_matrix/truediv/pfor/add/y:output:0*
T0*
_output_shapes
: À
.loop_body/rotation_matrix/truediv/pfor/MaximumMaximum.loop_body/rotation_matrix/truediv/pfor/add:z:04loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: 
,loop_body/rotation_matrix/truediv/pfor/ShapeShape.loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:0*
T0*
_output_shapes
:¼
*loop_body/rotation_matrix/truediv/pfor/subSub2loop_body/rotation_matrix/truediv/pfor/Maximum:z:04loop_body/rotation_matrix/truediv/pfor/Rank:output:0*
T0*
_output_shapes
: ~
4loop_body/rotation_matrix/truediv/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:Í
.loop_body/rotation_matrix/truediv/pfor/ReshapeReshape.loop_body/rotation_matrix/truediv/pfor/sub:z:0=loop_body/rotation_matrix/truediv/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:{
1loop_body/rotation_matrix/truediv/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:Ë
+loop_body/rotation_matrix/truediv/pfor/TileTile:loop_body/rotation_matrix/truediv/pfor/Tile/input:output:07loop_body/rotation_matrix/truediv/pfor/Reshape:output:0*
T0*
_output_shapes
: 
:loop_body/rotation_matrix/truediv/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
<loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
<loop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
4loop_body/rotation_matrix/truediv/pfor/strided_sliceStridedSlice5loop_body/rotation_matrix/truediv/pfor/Shape:output:0Cloop_body/rotation_matrix/truediv/pfor/strided_slice/stack:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice/stack_1:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_mask
<loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:
>loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
>loop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
6loop_body/rotation_matrix/truediv/pfor/strided_slice_1StridedSlice5loop_body/rotation_matrix/truediv/pfor/Shape:output:0Eloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack:output:0Gloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_1:output:0Gloop_body/rotation_matrix/truediv/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
end_maskt
2loop_body/rotation_matrix/truediv/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : Ú
-loop_body/rotation_matrix/truediv/pfor/concatConcatV2=loop_body/rotation_matrix/truediv/pfor/strided_slice:output:04loop_body/rotation_matrix/truediv/pfor/Tile:output:0?loop_body/rotation_matrix/truediv/pfor/strided_slice_1:output:0;loop_body/rotation_matrix/truediv/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:Õ
0loop_body/rotation_matrix/truediv/pfor/Reshape_1Reshape.loop_body/rotation_matrix/sub_4/pfor/Sub_1:z:06loop_body/rotation_matrix/truediv/pfor/concat:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÔ
.loop_body/rotation_matrix/truediv/pfor/RealDivRealDiv9loop_body/rotation_matrix/truediv/pfor/Reshape_1:output:0,loop_body/rotation_matrix/truediv/y:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_3/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_3/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_3/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_3/stack:output:0Cloop_body/rotation_matrix/strided_slice_3/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_3/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_3/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_3/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_3/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_3/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_3/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_3/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_3/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:½
;loop_body/rotation_matrix/strided_slice_3/pfor/StridedSliceStridedSlice2loop_body/rotation_matrix/truediv/pfor/RealDiv:z:0>loop_body/rotation_matrix/strided_slice_3/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_3/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_3/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask
(loop_body/rotation_matrix/Sin_2/pfor/SinSin)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_2/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_2/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_2/stack:output:0Cloop_body/rotation_matrix/strided_slice_2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_2/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_2/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_2/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_2/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_2/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_2/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_2/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_2/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_2/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Sin_2/pfor/Sin:y:0>loop_body/rotation_matrix/strided_slice_2/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_2/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_2/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask©
&loop_body/rotation_matrix/Neg/pfor/NegNegDloop_body/rotation_matrix/strided_slice_2/pfor/StridedSlice:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(loop_body/rotation_matrix/Cos_2/pfor/CosCos)loop_body/stateful_uniform/pfor/AddV2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
>loop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0Const*
_output_shapes
:*
dtype0*
valueB: |
:loop_body/rotation_matrix/strided_slice_1/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ·
5loop_body/rotation_matrix/strided_slice_1/pfor/concatConcatV2Gloop_body/rotation_matrix/strided_slice_1/pfor/concat/values_0:output:08loop_body/rotation_matrix/strided_slice_1/stack:output:0Cloop_body/rotation_matrix/strided_slice_1/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0Const*
_output_shapes
:*
dtype0*
valueB: ~
<loop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_1/pfor/concat_1ConcatV2Iloop_body/rotation_matrix/strided_slice_1/pfor/concat_1/values_0:output:0:loop_body/rotation_matrix/strided_slice_1/stack_1:output:0Eloop_body/rotation_matrix/strided_slice_1/pfor/concat_1/axis:output:0*
N*
T0*
_output_shapes
:
@loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0Const*
_output_shapes
:*
dtype0*
valueB:~
<loop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axisConst*
_output_shapes
: *
dtype0*
value	B : ¿
7loop_body/rotation_matrix/strided_slice_1/pfor/concat_2ConcatV2Iloop_body/rotation_matrix/strided_slice_1/pfor/concat_2/values_0:output:0:loop_body/rotation_matrix/strided_slice_1/stack_2:output:0Eloop_body/rotation_matrix/strided_slice_1/pfor/concat_2/axis:output:0*
N*
T0*
_output_shapes
:·
;loop_body/rotation_matrix/strided_slice_1/pfor/StridedSliceStridedSlice,loop_body/rotation_matrix/Cos_2/pfor/Cos:y:0>loop_body/rotation_matrix/strided_slice_1/pfor/concat:output:0@loop_body/rotation_matrix/strided_slice_1/pfor/concat_1:output:0@loop_body/rotation_matrix/strided_slice_1/pfor/concat_2:output:0*
Index0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
new_axis_mask|
+loop_body/rotation_matrix/concat/pfor/ShapeConst*
_output_shapes
:*
dtype0*
valueB"      
Eloop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensorConst*
_output_shapes
:*
dtype0*
valueB:w
5loop_body/rotation_matrix/concat/pfor/ones_like/ConstConst*
_output_shapes
: *
dtype0*
value	B :ì
/loop_body/rotation_matrix/concat/pfor/ones_likeFillNloop_body/rotation_matrix/concat/pfor/ones_like/Shape/shape_as_tensor:output:0>loop_body/rotation_matrix/concat/pfor/ones_like/Const:output:0*
T0*
_output_shapes
:
3loop_body/rotation_matrix/concat/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿÕ
-loop_body/rotation_matrix/concat/pfor/ReshapeReshape8loop_body/rotation_matrix/concat/pfor/ones_like:output:0<loop_body/rotation_matrix/concat/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:
5loop_body/rotation_matrix/concat/pfor/Reshape_1/shapeConst*
_output_shapes
:*
dtype0*
valueB:
ÿÿÿÿÿÿÿÿÿ¶
/loop_body/rotation_matrix/concat/pfor/Reshape_1Reshapepfor/Reshape:output:0>loop_body/rotation_matrix/concat/pfor/Reshape_1/shape:output:0*
T0*
_output_shapes
:s
1loop_body/rotation_matrix/concat/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
,loop_body/rotation_matrix/concat/pfor/concatConcatV28loop_body/rotation_matrix/concat/pfor/Reshape_1:output:06loop_body/rotation_matrix/concat/pfor/Reshape:output:0:loop_body/rotation_matrix/concat/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:v
4loop_body/rotation_matrix/concat/pfor/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ô
0loop_body/rotation_matrix/concat/pfor/ExpandDims
ExpandDims(loop_body/rotation_matrix/zeros:output:0=loop_body/rotation_matrix/concat/pfor/ExpandDims/dim:output:0*
T0*"
_output_shapes
:Ú
*loop_body/rotation_matrix/concat/pfor/TileTile9loop_body/rotation_matrix/concat/pfor/ExpandDims:output:05loop_body/rotation_matrix/concat/pfor/concat:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿv
4loop_body/rotation_matrix/concat/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : Ò
2loop_body/rotation_matrix/concat/pfor/GreaterEqualGreaterEqual.loop_body/rotation_matrix/concat/axis:output:0=loop_body/rotation_matrix/concat/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: 
*loop_body/rotation_matrix/concat/pfor/CastCast6loop_body/rotation_matrix/concat/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: ³
)loop_body/rotation_matrix/concat/pfor/addAddV2.loop_body/rotation_matrix/concat/axis:output:0.loop_body/rotation_matrix/concat/pfor/Cast:y:0*
T0*
_output_shapes
: ç
.loop_body/rotation_matrix/concat/pfor/concat_1ConcatV2Dloop_body/rotation_matrix/strided_slice_1/pfor/StridedSlice:output:0*loop_body/rotation_matrix/Neg/pfor/Neg:y:0Dloop_body/rotation_matrix/strided_slice_3/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_4/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_5/pfor/StridedSlice:output:0Dloop_body/rotation_matrix/strided_slice_6/pfor/StridedSlice:output:03loop_body/rotation_matrix/concat/pfor/Tile:output:0-loop_body/rotation_matrix/concat/pfor/add:z:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ^
loop_body/SelectV2/pfor/RankConst*
_output_shapes
: *
dtype0*
value	B : _
loop_body/SelectV2/pfor/add/yConst*
_output_shapes
: *
dtype0*
value	B :
loop_body/SelectV2/pfor/addAddV2%loop_body/SelectV2/pfor/Rank:output:0&loop_body/SelectV2/pfor/add/y:output:0*
T0*
_output_shapes
: `
loop_body/SelectV2/pfor/Rank_1Const*
_output_shapes
: *
dtype0*
value	B :`
loop_body/SelectV2/pfor/Rank_2Const*
_output_shapes
: *
dtype0*
value	B : a
loop_body/SelectV2/pfor/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
loop_body/SelectV2/pfor/add_1AddV2'loop_body/SelectV2/pfor/Rank_2:output:0(loop_body/SelectV2/pfor/add_1/y:output:0*
T0*
_output_shapes
: 
loop_body/SelectV2/pfor/MaximumMaximum'loop_body/SelectV2/pfor/Rank_1:output:0loop_body/SelectV2/pfor/add:z:0*
T0*
_output_shapes
: 
!loop_body/SelectV2/pfor/Maximum_1Maximum!loop_body/SelectV2/pfor/add_1:z:0#loop_body/SelectV2/pfor/Maximum:z:0*
T0*
_output_shapes
: `
loop_body/SelectV2/pfor/ShapeShapepfor/range:output:0*
T0*
_output_shapes
:
loop_body/SelectV2/pfor/subSub%loop_body/SelectV2/pfor/Maximum_1:z:0'loop_body/SelectV2/pfor/Rank_1:output:0*
T0*
_output_shapes
: o
%loop_body/SelectV2/pfor/Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB: 
loop_body/SelectV2/pfor/ReshapeReshapeloop_body/SelectV2/pfor/sub:z:0.loop_body/SelectV2/pfor/Reshape/shape:output:0*
T0*
_output_shapes
:l
"loop_body/SelectV2/pfor/Tile/inputConst*
_output_shapes
:*
dtype0*
valueB:
loop_body/SelectV2/pfor/TileTile+loop_body/SelectV2/pfor/Tile/input:output:0(loop_body/SelectV2/pfor/Reshape:output:0*
T0*
_output_shapes
: u
+loop_body/SelectV2/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-loop_body/SelectV2/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-loop_body/SelectV2/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ç
%loop_body/SelectV2/pfor/strided_sliceStridedSlice&loop_body/SelectV2/pfor/Shape:output:04loop_body/SelectV2/pfor/strided_slice/stack:output:06loop_body/SelectV2/pfor/strided_slice/stack_1:output:06loop_body/SelectV2/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*

begin_maskw
-loop_body/SelectV2/pfor/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:y
/loop_body/SelectV2/pfor/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB: y
/loop_body/SelectV2/pfor/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ë
'loop_body/SelectV2/pfor/strided_slice_1StridedSlice&loop_body/SelectV2/pfor/Shape:output:06loop_body/SelectV2/pfor/strided_slice_1/stack:output:08loop_body/SelectV2/pfor/strided_slice_1/stack_1:output:08loop_body/SelectV2/pfor/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
end_maske
#loop_body/SelectV2/pfor/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : 
loop_body/SelectV2/pfor/concatConcatV2.loop_body/SelectV2/pfor/strided_slice:output:0%loop_body/SelectV2/pfor/Tile:output:00loop_body/SelectV2/pfor/strided_slice_1:output:0,loop_body/SelectV2/pfor/concat/axis:output:0*
N*
T0*
_output_shapes
:
!loop_body/SelectV2/pfor/Reshape_1Reshapepfor/range:output:0'loop_body/SelectV2/pfor/concat:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¼
 loop_body/SelectV2/pfor/SelectV2SelectV2loop_body/Greater:z:0*loop_body/SelectV2/pfor/Reshape_1:output:0loop_body/SelectV2/e:output:0*
T0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿg
%loop_body/GatherV2/pfor/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : î
 loop_body/GatherV2/pfor/GatherV2GatherV2inputs)loop_body/SelectV2/pfor/SelectV2:output:0.loop_body/GatherV2/pfor/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿààj
(loop_body/ExpandDims/pfor/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
value	B : ­
&loop_body/ExpandDims/pfor/GreaterEqualGreaterEqual!loop_body/ExpandDims/dim:output:01loop_body/ExpandDims/pfor/GreaterEqual/y:output:0*
T0*
_output_shapes
: 
loop_body/ExpandDims/pfor/CastCast*loop_body/ExpandDims/pfor/GreaterEqual:z:0*

DstT0*

SrcT0
*
_output_shapes
: 
loop_body/ExpandDims/pfor/addAddV2!loop_body/ExpandDims/dim:output:0"loop_body/ExpandDims/pfor/Cast:y:0*
T0*
_output_shapes
: À
$loop_body/ExpandDims/pfor/ExpandDims
ExpandDims)loop_body/GatherV2/pfor/GatherV2:output:0!loop_body/ExpandDims/pfor/add:z:0*
T0*5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà
Gloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
Iloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
Iloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¨
Aloop_body/transform/ImageProjectiveTransformV3/pfor/strided_sliceStridedSlicepfor/Reshape:output:0Ploop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_1:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Oloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÎ
Aloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2TensorListReserveXloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2/element_shape:output:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ{
9loop_body/transform/ImageProjectiveTransformV3/pfor/ConstConst*
_output_shapes
: *
dtype0*
value	B : 
Lloop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ
Floop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : þ
9loop_body/transform/ImageProjectiveTransformV3/pfor/whileStatelessWhileOloop_body/transform/ImageProjectiveTransformV3/pfor/while/loop_counter:output:0Uloop_body/transform/ImageProjectiveTransformV3/pfor/while/maximum_iterations:output:0Bloop_body/transform/ImageProjectiveTransformV3/pfor/Const:output:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/TensorArrayV2:handle:0Jloop_body/transform/ImageProjectiveTransformV3/pfor/strided_slice:output:0-loop_body/ExpandDims/pfor/ExpandDims:output:07loop_body/rotation_matrix/concat/pfor/concat_1:output:0*loop_body/transform/strided_slice:output:0'loop_body/transform/fill_value:output:0*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*^
_output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: * 
_read_only_resource_inputs
 *
_stateful_parallelism( *O
bodyGRE
Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_body_5030*O
condGRE
Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_5029*]
output_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: ~
;loop_body/transform/ImageProjectiveTransformV3/pfor/Const_1Const*
_output_shapes
: *
dtype0	*
valueB	 ±
Tloop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shapeConst*
_output_shapes
:*
dtype0*)
value B"ÿÿÿÿ   ÿÿÿÿÿÿÿÿ   ²
Floop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2TensorListConcatV2Bloop_body/transform/ImageProjectiveTransformV3/pfor/while:output:3]loop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2/element_shape:output:0Dloop_body/transform/ImageProjectiveTransformV3/pfor/Const_1:output:0*D
_output_shapes2
0:ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ*
element_dtype0*

shape_type0Í
loop_body/Squeeze/pfor/SqueezeSqueezeOloop_body/transform/ImageProjectiveTransformV3/pfor/TensorListConcatV2:tensor:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
squeeze_dims

IdentityIdentity'loop_body/Squeeze/pfor/Squeeze:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà©
NoOpNoOp*^loop_body/stateful_uniform/RngReadAndSkip5^loop_body/stateful_uniform/RngReadAndSkip/pfor/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿàà: 2V
)loop_body/stateful_uniform/RngReadAndSkip)loop_body/stateful_uniform/RngReadAndSkip2l
4loop_body/stateful_uniform/RngReadAndSkip/pfor/while4loop_body/stateful_uniform/RngReadAndSkip/pfor/while:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ê

%__inference_conv2d_layer_call_fn_5107

inputs!
unknown: 
	unknown_0: 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_1325y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
¦D
Ø
D__inference_sequential_layer_call_and_return_conditional_losses_2888
random_flip_input"
random_rotation_2842:	%
conv2d_2845: 
conv2d_2847: '
conv2d_1_2851:  
conv2d_1_2853: '
conv2d_2_2857:  
conv2d_2_2859: 

dense_2864:©

dense_2866:	 
dense_1_2870:

dense_1_2872:	 
dense_2_2876:

dense_2_2878:	
dense_3_2882:	
dense_3_2884:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢!dropout_1/StatefulPartitionedCall¢!dropout_2/StatefulPartitionedCall¢'random_rotation/StatefulPartitionedCallÑ
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_2634
'random_rotation/StatefulPartitionedCallStatefulPartitionedCall$random_flip/PartitionedCall:output:0random_rotation_2842*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_2562
conv2d/StatefulPartitionedCallStatefulPartitionedCall0random_rotation/StatefulPartitionedCall:output:0conv2d_2845conv2d_2847*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_1325é
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2851conv2d_1_2853*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2857conv2d_2_2859*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361ï
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_1374ù
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2864
dense_2866*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1387å
dropout/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1593
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_2870dense_1_2872*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1411
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall(dense_1/StatefulPartitionedCall:output:0 ^dropout/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1560
dense_2/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_2_2876dense_2_2878*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1435
!dropout_2/StatefulPartitionedCallStatefulPartitionedCall(dense_2/StatefulPartitionedCall:output:0"^dropout_1/StatefulPartitionedCall*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1527
dense_3/StatefulPartitionedCallStatefulPartitionedCall*dropout_2/StatefulPartitionedCall:output:0dense_3_2882dense_3_2884*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1459w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿÇ
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall ^dropout/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall"^dropout_2/StatefulPartitionedCall(^random_rotation/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall2F
!dropout_2/StatefulPartitionedCall!dropout_2/StatefulPartitionedCall2R
'random_rotation/StatefulPartitionedCall'random_rotation/StatefulPartitionedCall:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
¡

ó
A__inference_dense_3_layer_call_and_return_conditional_losses_1459

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ä
~
.__inference_random_rotation_layer_call_fn_4182

inputs
unknown:	
identity¢StatefulPartitionedCallØ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_2562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿàà: 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ç
F
*__inference_random_flip_layer_call_fn_4102

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_1306j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs

û
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs

e
I__inference_random_rotation_layer_call_and_return_conditional_losses_4186

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ý>
Á
Irandom_rotation_loop_body_stateful_uniform_Bitcast_1_pfor_while_body_3393
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counter
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterationsO
Krandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderQ
Mrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0¡
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0	L
Hrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identityN
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1N
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2N
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice	
Erandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
Crandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/addAddV2Krandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderNrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Urandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ¶
Srandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stackPackKrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder^random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Wrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ¶
Urandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1PackGrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add:z:0`random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:¦
Urandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ù
Mrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_sliceStridedSlicerandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0\random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack:output:0^random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1:output:0^random_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_maskÛ
Grandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/BitcastBitcastVrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Nrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¬
Jrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims
ExpandDimsPrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Bitcast:output:0Wrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:ª
drandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemMrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1Krandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderSrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌ
Grandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Erandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1AddV2Krandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderPrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Grandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :Ð
Erandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2AddV2random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counterPrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: À
Hrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentityIrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2:z:0*
T0*
_output_shapes
: 
Jrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1Identityrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations*
T0*
_output_shapes
: Â
Jrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2IdentityIrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1:z:0*
T0*
_output_shapes
: í
Jrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3Identitytrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Hrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identityQrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0"¡
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1Srandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1:output:0"¡
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2Srandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2:output:0"¡
Jrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3Srandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3:output:0"
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slicerandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0"¼
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslicerandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 n
ñ
Xrandom_rotation_loop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_3450¯
ªrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counterµ
°random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterations^
Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder`
\random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1¬
§random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0°
«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0°
«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_random_rotation_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_shape_0
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0[
Wrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity]
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1]
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2]
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3ª
¥random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice®
©random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2®
©random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_random_rotation_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_shape
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_alg
Trandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :·
Rrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/addAddV2Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder]random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/y:output:0*
T0*
_output_shapes
: ¦
drandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ã
brandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stackPackZrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholdermrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:¨
frandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ã
drandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1PackVrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add:z:0orandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:µ
drandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ä
\random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_sliceStridedSlice«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0krandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack:output:0mrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1:output:0mrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask
Vrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :»
Trandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1AddV2Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: ¨
frandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ç
drandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stackPackZrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderorandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:ª
hrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : é
frandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1PackXrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1:z:0qrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:·
frandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ì
^random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1StridedSlice«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_random_rotation_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0mrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack:output:0orandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1:output:0orandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask
grandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2StatelessRandomUniformV2random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_shape_0erandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice:output:0grandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1:output:0random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
]random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ó
Yrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims
ExpandDimsprandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2:output:0frandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿæ
srandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem\random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderbrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Vrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :»
Trandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2AddV2Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Vrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :
Trandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3AddV2ªrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counter_random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: Þ
Wrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityXrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3:z:0*
T0*
_output_shapes
: ¹
Yrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1Identity°random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterations*
T0*
_output_shapes
: à
Yrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2IdentityXrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2:z:0*
T0*
_output_shapes
: 
Yrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3Identityrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "»
Wrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity`random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0"¿
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1brandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1:output:0"¿
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2brandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2:output:0"¿
Yrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3brandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3:output:0"
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_shaperandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_shape_0"´
random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_algrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0"Ò
¥random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice§random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0"Ú
©random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_random_rotation_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_random_rotation_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0"Ú
©random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2«random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 
«
B
&__inference_flatten_layer_call_fn_5193

inputs
identity®
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_1374b
IdentityIdentityPartitionedCall:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¦

ô
?__inference_dense_layer_call_and_return_conditional_losses_1387

inputs3
matmul_readvariableop_resource:©.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:©*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ©: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5158

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
´
J
.__inference_max_pooling2d_1_layer_call_fn_5153

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

û
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5178

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs
¤

õ
A__inference_dense_2_layer_call_and_return_conditional_losses_1435

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
öh

Srandom_rotation_loop_body_transform_ImageProjectiveTransformV3_pfor_while_body_3951¥
 random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter«
¦random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsY
Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder[
Wrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1¢
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_random_rotation_loop_body_expanddims_pfor_expanddims_0
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_random_rotation_loop_body_rotation_matrix_concat_pfor_concat_1_0
}random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_strided_slice_0~
zrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_fill_value_0V
Rrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identityX
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_1X
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_2X
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_3 
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_random_rotation_loop_body_expanddims_pfor_expanddims
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_random_rotation_loop_body_rotation_matrix_concat_pfor_concat_1
{random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_strided_slice|
xrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_fill_value
Orandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¨
Mrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/addAddV2Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholderXrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add/y:output:0*
T0*
_output_shapes
: ¡
_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Ô
]random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stackPackUrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholderhrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:£
arandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : Ô
_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1PackQrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add:z:0jrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:°
_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ¡
Wrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_sliceStridedSlicerandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_random_rotation_loop_body_expanddims_pfor_expanddims_0frandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack:output:0hrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1:output:0hrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:àà*
ellipsis_mask*
shrink_axis_mask
Qrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :¬
Orandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1AddV2Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholderZrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: £
arandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : Ø
_random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stackPackUrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholderjrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:¥
crandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : Ú
arandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1PackSrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1:z:0lrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:²
arandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      «
Yrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1StridedSlicerandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_random_rotation_loop_body_rotation_matrix_concat_pfor_concat_1_0hrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack:output:0jrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1:output:0jrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
ellipsis_mask*
shrink_axis_mask¿
drandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3ImageProjectiveTransformV3`random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice:output:0brandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1:output:0}random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_strided_slice_0zrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_fill_value_0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
Xrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
Trandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims
ExpandDimsyrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3:transformed_images:0arandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÒ
nrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemWrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder]random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Qrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :¬
Orandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2AddV2Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholderZrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Qrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :ø
Orandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3AddV2 random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counterZrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: Ô
Rrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentitySrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3:z:0*
T0*
_output_shapes
: ª
Trandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1Identity¦random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterations*
T0*
_output_shapes
: Ö
Trandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2IdentitySrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2:z:0*
T0*
_output_shapes
: 
Trandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3Identity~random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "±
Rrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity[random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0"µ
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_1]random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1:output:0"µ
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_2]random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2:output:0"µ
Trandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity_3]random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3:output:0"ö
xrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_fill_valuezrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_fill_value_0"¾
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slicerandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0"ü
{random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_strided_slice}random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_strided_slice_0"¸
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_random_rotation_loop_body_rotation_matrix_concat_pfor_concat_1random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_random_rotation_loop_body_rotation_matrix_concat_pfor_concat_1_0" 
random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_random_rotation_loop_body_expanddims_pfor_expanddimsrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_random_rotation_loop_body_expanddims_pfor_expanddims_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :;7
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 
­

Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_4528
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counter
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterationsN
Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderP
Lloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_4528___redundant_placeholder0¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_4528___redundant_placeholder1¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_4528___redundant_placeholder2¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_4528___redundant_placeholder3K
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity
Å
Cloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/LessLessJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice*
T0*
_output_shapes
: ½
Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityGloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityPloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
«
»

Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_2493
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsI
Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderK
Gloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1
loop_body_transform_imageprojectivetransformv3_pfor_while_less_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_2493___redundant_placeholder0
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_2493___redundant_placeholder1
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_2493___redundant_placeholder2
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_2493___redundant_placeholder3F
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identity
±
>loop_body/transform/ImageProjectiveTransformV3/pfor/while/LessLessEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderloop_body_transform_imageprojectivetransformv3_pfor_while_less_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice*
T0*
_output_shapes
: ³
Bloop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentityBloop_body/transform/ImageProjectiveTransformV3/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityKloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:

û
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361

inputs8
conv2d_readvariableop_resource:  -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0}
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 X
ReluReluBiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 i
IdentityIdentityRelu:activations:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs
¤

õ
A__inference_dense_1_layer_call_and_return_conditional_losses_1411

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
Ê
7loop_body_stateful_uniform_Bitcast_pfor_while_cond_1868l
hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counterr
nloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations=
9loop_body_stateful_uniform_bitcast_pfor_while_placeholder?
;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1l
hloop_body_stateful_uniform_bitcast_pfor_while_less_loop_body_stateful_uniform_bitcast_pfor_strided_slice
~loop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_cond_1868___redundant_placeholder0	:
6loop_body_stateful_uniform_bitcast_pfor_while_identity

2loop_body/stateful_uniform/Bitcast/pfor/while/LessLess9loop_body_stateful_uniform_bitcast_pfor_while_placeholderhloop_body_stateful_uniform_bitcast_pfor_while_less_loop_body_stateful_uniform_bitcast_pfor_strided_slice*
T0*
_output_shapes
: 
6loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentity6loop_body/stateful_uniform/Bitcast/pfor/while/Less:z:0*
T0
*
_output_shapes
: "y
6loop_body_stateful_uniform_bitcast_pfor_while_identity?loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Ç4
	
9loop_body_stateful_uniform_Bitcast_1_pfor_while_body_1936p
lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counterv
rloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations?
;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderA
=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1m
iloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0
|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0	<
8loop_body_stateful_uniform_bitcast_1_pfor_while_identity>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3k
gloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice~
zloop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice	w
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ú
3loop_body/stateful_uniform/Bitcast_1/pfor/while/addAddV2;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder>loop_body/stateful_uniform/Bitcast_1/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 
Cloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stackPack;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderNloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Gloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1Pack7loop_body/stateful_uniform/Bitcast_1/pfor/while/add:z:0Ploop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
=loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_sliceStridedSlice|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0Lloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack:output:0Nloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1:output:0Nloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask»
7loop_body/stateful_uniform/Bitcast_1/pfor/while/BitcastBitcastFloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
>loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ü
:loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims
ExpandDims@loop_body/stateful_uniform/Bitcast_1/pfor/while/Bitcast:output:0Gloop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:ê
Tloop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderCloop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌy
7loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Þ
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1AddV2;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder@loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: y
7loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2AddV2lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counter@loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/y:output:0*
T0*
_output_shapes
:  
8loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentity9loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2:z:0*
T0*
_output_shapes
: Û
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1Identityrloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations*
T0*
_output_shapes
: ¢
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2Identity9loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1:z:0*
T0*
_output_shapes
: Í
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3Identitydloop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "}
8loop_body_stateful_uniform_bitcast_1_pfor_while_identityAloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3:output:0"Ô
gloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_sliceiloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0"ú
zloop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
ñ
a
(__inference_dropout_2_layer_call_fn_5323

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1527p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ç4
	
9loop_body_stateful_uniform_Bitcast_1_pfor_while_body_4472p
lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counterv
rloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations?
;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderA
=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1m
iloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0
|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0	<
8loop_body_stateful_uniform_bitcast_1_pfor_while_identity>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2>
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3k
gloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice~
zloop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice	w
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ú
3loop_body/stateful_uniform/Bitcast_1/pfor/while/addAddV2;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder>loop_body/stateful_uniform/Bitcast_1/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 
Cloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stackPack;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderNloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Gloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1Pack7loop_body/stateful_uniform/Bitcast_1/pfor/while/add:z:0Ploop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:
Eloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
=loop_body/stateful_uniform/Bitcast_1/pfor/while/strided_sliceStridedSlice|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0Lloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack:output:0Nloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_1:output:0Nloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask»
7loop_body/stateful_uniform/Bitcast_1/pfor/while/BitcastBitcastFloop_body/stateful_uniform/Bitcast_1/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
>loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ü
:loop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims
ExpandDims@loop_body/stateful_uniform/Bitcast_1/pfor/while/Bitcast:output:0Gloop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:ê
Tloop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderCloop_body/stateful_uniform/Bitcast_1/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌy
7loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Þ
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1AddV2;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder@loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: y
7loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
5loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2AddV2lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counter@loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2/y:output:0*
T0*
_output_shapes
:  
8loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentity9loop_body/stateful_uniform/Bitcast_1/pfor/while/add_2:z:0*
T0*
_output_shapes
: Û
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1Identityrloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations*
T0*
_output_shapes
: ¢
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2Identity9loop_body/stateful_uniform/Bitcast_1/pfor/while/add_1:z:0*
T0*
_output_shapes
: Í
:loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3Identitydloop_body/stateful_uniform/Bitcast_1/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "}
8loop_body_stateful_uniform_bitcast_1_pfor_while_identityAloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_1Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_1:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_2Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_2:output:0"
:loop_body_stateful_uniform_bitcast_1_pfor_while_identity_3Cloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity_3:output:0"Ô
gloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_sliceiloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice_0"ú
zloop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice|loop_body_stateful_uniform_bitcast_1_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_1_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

ã
9loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_4471p
lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counterv
rloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations?
;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderA
=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1p
lloop_body_stateful_uniform_bitcast_1_pfor_while_less_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice
loop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_cond_4471___redundant_placeholder0	<
8loop_body_stateful_uniform_bitcast_1_pfor_while_identity

4loop_body/stateful_uniform/Bitcast_1/pfor/while/LessLess;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderlloop_body_stateful_uniform_bitcast_1_pfor_while_less_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice*
T0*
_output_shapes
: 
8loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentity8loop_body/stateful_uniform/Bitcast_1/pfor/while/Less:z:0*
T0
*
_output_shapes
: "}
8loop_body_stateful_uniform_bitcast_1_pfor_while_identityAloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Á
¥
)__inference_sequential_layer_call_fn_2790
random_flip_input
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2:  
	unknown_3: #
	unknown_4:  
	unknown_5: 
	unknown_6:©
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:


unknown_11:	

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
Ç
F
*__inference_random_flip_layer_call_fn_4107

inputs
identityº
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_2634j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
B
î	
 __inference__traced_restore_5499
file_prefix8
assignvariableop_conv2d_kernel: ,
assignvariableop_1_conv2d_bias: <
"assignvariableop_2_conv2d_1_kernel:  .
 assignvariableop_3_conv2d_1_bias: <
"assignvariableop_4_conv2d_2_kernel:  .
 assignvariableop_5_conv2d_2_bias: 4
assignvariableop_6_dense_kernel:©,
assignvariableop_7_dense_bias:	5
!assignvariableop_8_dense_1_kernel:
.
assignvariableop_9_dense_1_bias:	6
"assignvariableop_10_dense_2_kernel:
/
 assignvariableop_11_dense_2_bias:	5
"assignvariableop_12_dense_3_kernel:	.
 assignvariableop_13_dense_3_bias:6
(assignvariableop_14_random_flip_statevar:	:
,assignvariableop_15_random_rotation_statevar:	
identity_17¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_2¢AssignVariableOp_3¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9§
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Í
valueÃBÀB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ó
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2		[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOpassignvariableop_conv2d_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_conv2d_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_2AssignVariableOp"assignvariableop_2_conv2d_1_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_3AssignVariableOp assignvariableop_3_conv2d_1_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_4AssignVariableOp"assignvariableop_4_conv2d_2_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_5AssignVariableOp assignvariableop_5_conv2d_2_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_6AssignVariableOpassignvariableop_6_dense_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_7AssignVariableOpassignvariableop_7_dense_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_8AssignVariableOp!assignvariableop_8_dense_1_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_dense_1_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOp"assignvariableop_10_dense_2_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOp assignvariableop_11_dense_2_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp"assignvariableop_12_dense_3_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOp assignvariableop_13_dense_3_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_14AssignVariableOp(assignvariableop_14_random_flip_statevarIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_15AssignVariableOp,assignvariableop_15_random_rotation_statevarIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	1
NoOpNoOp"/device:CPU:0*
_output_shapes
 ¯
Identity_16Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_17IdentityIdentity_16:output:0^NoOp_1*
T0*
_output_shapes
: 
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_17Identity_17:output:0*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
´
J
.__inference_max_pooling2d_2_layer_call_fn_5183

inputs
identity×
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­U
ú
__inference__wrapped_model_1259
random_flip_inputJ
0sequential_conv2d_conv2d_readvariableop_resource: ?
1sequential_conv2d_biasadd_readvariableop_resource: L
2sequential_conv2d_1_conv2d_readvariableop_resource:  A
3sequential_conv2d_1_biasadd_readvariableop_resource: L
2sequential_conv2d_2_conv2d_readvariableop_resource:  A
3sequential_conv2d_2_biasadd_readvariableop_resource: D
/sequential_dense_matmul_readvariableop_resource:©?
0sequential_dense_biasadd_readvariableop_resource:	E
1sequential_dense_1_matmul_readvariableop_resource:
A
2sequential_dense_1_biasadd_readvariableop_resource:	E
1sequential_dense_2_matmul_readvariableop_resource:
A
2sequential_dense_2_biasadd_readvariableop_resource:	D
1sequential_dense_3_matmul_readvariableop_resource:	@
2sequential_dense_3_biasadd_readvariableop_resource:
identity¢(sequential/conv2d/BiasAdd/ReadVariableOp¢'sequential/conv2d/Conv2D/ReadVariableOp¢*sequential/conv2d_1/BiasAdd/ReadVariableOp¢)sequential/conv2d_1/Conv2D/ReadVariableOp¢*sequential/conv2d_2/BiasAdd/ReadVariableOp¢)sequential/conv2d_2/Conv2D/ReadVariableOp¢'sequential/dense/BiasAdd/ReadVariableOp¢&sequential/dense/MatMul/ReadVariableOp¢)sequential/dense_1/BiasAdd/ReadVariableOp¢(sequential/dense_1/MatMul/ReadVariableOp¢)sequential/dense_2/BiasAdd/ReadVariableOp¢(sequential/dense_2/MatMul/ReadVariableOp¢)sequential/dense_3/BiasAdd/ReadVariableOp¢(sequential/dense_3/MatMul/ReadVariableOp 
'sequential/conv2d/Conv2D/ReadVariableOpReadVariableOp0sequential_conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0Ë
sequential/conv2d/Conv2DConv2Drandom_flip_input/sequential/conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *
paddingVALID*
strides

(sequential/conv2d/BiasAdd/ReadVariableOpReadVariableOp1sequential_conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0µ
sequential/conv2d/BiasAddBiasAdd!sequential/conv2d/Conv2D:output:00sequential/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ ~
sequential/conv2d/ReluRelu"sequential/conv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ ¾
 sequential/max_pooling2d/MaxPoolMaxPool$sequential/conv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides
¤
)sequential/conv2d_1/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0å
sequential/conv2d_1/Conv2DConv2D)sequential/max_pooling2d/MaxPool:output:01sequential/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *
paddingVALID*
strides

*sequential/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¹
sequential/conv2d_1/BiasAddBiasAdd#sequential/conv2d_1/Conv2D:output:02sequential/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm 
sequential/conv2d_1/ReluRelu$sequential/conv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm Â
"sequential/max_pooling2d_1/MaxPoolMaxPool&sequential/conv2d_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides
¤
)sequential/conv2d_2/Conv2D/ReadVariableOpReadVariableOp2sequential_conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0ç
sequential/conv2d_2/Conv2DConv2D+sequential/max_pooling2d_1/MaxPool:output:01sequential/conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *
paddingVALID*
strides

*sequential/conv2d_2/BiasAdd/ReadVariableOpReadVariableOp3sequential_conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0¹
sequential/conv2d_2/BiasAddBiasAdd#sequential/conv2d_2/Conv2D:output:02sequential/conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 
sequential/conv2d_2/ReluRelu$sequential/conv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 Â
"sequential/max_pooling2d_2/MaxPoolMaxPool&sequential/conv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
i
sequential/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿT  ©
sequential/flatten/ReshapeReshape+sequential/max_pooling2d_2/MaxPool:output:0!sequential/flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
&sequential/dense/MatMul/ReadVariableOpReadVariableOp/sequential_dense_matmul_readvariableop_resource*!
_output_shapes
:©*
dtype0©
sequential/dense/MatMulMatMul#sequential/flatten/Reshape:output:0.sequential/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
'sequential/dense/BiasAdd/ReadVariableOpReadVariableOp0sequential_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ª
sequential/dense/BiasAddBiasAdd!sequential/dense/MatMul:product:0/sequential/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
sequential/dense/ReluRelu!sequential/dense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential/dropout/IdentityIdentity#sequential/dense/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense_1/MatMul/ReadVariableOpReadVariableOp1sequential_dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0®
sequential/dense_1/MatMulMatMul$sequential/dropout/Identity:output:00sequential/dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_1/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
sequential/dense_1/BiasAddBiasAdd#sequential/dense_1/MatMul:product:01sequential/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
sequential/dense_1/ReluRelu#sequential/dense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential/dropout_1/IdentityIdentity%sequential/dense_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense_2/MatMul/ReadVariableOpReadVariableOp1sequential_dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0°
sequential/dense_2/MatMulMatMul&sequential/dropout_1/Identity:output:00sequential/dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_2/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0°
sequential/dense_2/BiasAddBiasAdd#sequential/dense_2/MatMul:product:01sequential/dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
sequential/dense_2/ReluRelu#sequential/dense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
sequential/dropout_2/IdentityIdentity%sequential/dense_2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
(sequential/dense_3/MatMul/ReadVariableOpReadVariableOp1sequential_dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0¯
sequential/dense_3/MatMulMatMul&sequential/dropout_2/Identity:output:00sequential/dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
)sequential/dense_3/BiasAdd/ReadVariableOpReadVariableOp2sequential_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0¯
sequential/dense_3/BiasAddBiasAdd#sequential/dense_3/MatMul:product:01sequential/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ|
sequential/dense_3/SoftmaxSoftmax#sequential/dense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
IdentityIdentity$sequential/dense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¥
NoOpNoOp)^sequential/conv2d/BiasAdd/ReadVariableOp(^sequential/conv2d/Conv2D/ReadVariableOp+^sequential/conv2d_1/BiasAdd/ReadVariableOp*^sequential/conv2d_1/Conv2D/ReadVariableOp+^sequential/conv2d_2/BiasAdd/ReadVariableOp*^sequential/conv2d_2/Conv2D/ReadVariableOp(^sequential/dense/BiasAdd/ReadVariableOp'^sequential/dense/MatMul/ReadVariableOp*^sequential/dense_1/BiasAdd/ReadVariableOp)^sequential/dense_1/MatMul/ReadVariableOp*^sequential/dense_2/BiasAdd/ReadVariableOp)^sequential/dense_2/MatMul/ReadVariableOp*^sequential/dense_3/BiasAdd/ReadVariableOp)^sequential/dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 2T
(sequential/conv2d/BiasAdd/ReadVariableOp(sequential/conv2d/BiasAdd/ReadVariableOp2R
'sequential/conv2d/Conv2D/ReadVariableOp'sequential/conv2d/Conv2D/ReadVariableOp2X
*sequential/conv2d_1/BiasAdd/ReadVariableOp*sequential/conv2d_1/BiasAdd/ReadVariableOp2V
)sequential/conv2d_1/Conv2D/ReadVariableOp)sequential/conv2d_1/Conv2D/ReadVariableOp2X
*sequential/conv2d_2/BiasAdd/ReadVariableOp*sequential/conv2d_2/BiasAdd/ReadVariableOp2V
)sequential/conv2d_2/Conv2D/ReadVariableOp)sequential/conv2d_2/Conv2D/ReadVariableOp2R
'sequential/dense/BiasAdd/ReadVariableOp'sequential/dense/BiasAdd/ReadVariableOp2P
&sequential/dense/MatMul/ReadVariableOp&sequential/dense/MatMul/ReadVariableOp2V
)sequential/dense_1/BiasAdd/ReadVariableOp)sequential/dense_1/BiasAdd/ReadVariableOp2T
(sequential/dense_1/MatMul/ReadVariableOp(sequential/dense_1/MatMul/ReadVariableOp2V
)sequential/dense_2/BiasAdd/ReadVariableOp)sequential/dense_2/BiasAdd/ReadVariableOp2T
(sequential/dense_2/MatMul/ReadVariableOp(sequential/dense_2/MatMul/ReadVariableOp2V
)sequential/dense_3/BiasAdd/ReadVariableOp)sequential/dense_3/BiasAdd/ReadVariableOp2T
(sequential/dense_3/MatMul/ReadVariableOp(sequential/dense_3/MatMul/ReadVariableOp:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
¤

õ
A__inference_dense_2_layer_call_and_return_conditional_losses_5313

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
_
A__inference_dropout_layer_call_and_return_conditional_losses_1398

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù	
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_5340

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì
Ê
7loop_body_stateful_uniform_Bitcast_pfor_while_cond_4404l
hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counterr
nloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations=
9loop_body_stateful_uniform_bitcast_pfor_while_placeholder?
;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1l
hloop_body_stateful_uniform_bitcast_pfor_while_less_loop_body_stateful_uniform_bitcast_pfor_strided_slice
~loop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_cond_4404___redundant_placeholder0	:
6loop_body_stateful_uniform_bitcast_pfor_while_identity

2loop_body/stateful_uniform/Bitcast/pfor/while/LessLess9loop_body_stateful_uniform_bitcast_pfor_while_placeholderhloop_body_stateful_uniform_bitcast_pfor_while_less_loop_body_stateful_uniform_bitcast_pfor_strided_slice*
T0*
_output_shapes
: 
6loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentity6loop_body/stateful_uniform/Bitcast/pfor/while/Less:z:0*
T0
*
_output_shapes
: "y
6loop_body_stateful_uniform_bitcast_pfor_while_identity?loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

e
I__inference_random_rotation_layer_call_and_return_conditional_losses_1312

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ë
È
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_4339z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter
|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsD
@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderF
Bloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_less_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_4339___redundant_placeholder0
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_4339___redundant_placeholder1
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_4339___redundant_placeholder2A
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identity

9loop_body/stateful_uniform/RngReadAndSkip/pfor/while/LessLess@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholdervloop_body_stateful_uniform_rngreadandskip_pfor_while_less_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice*
T0*
_output_shapes
: ©
=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentity=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityFloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : :::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
:
Ù=

Grandom_rotation_loop_body_stateful_uniform_Bitcast_pfor_while_body_3326
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_loop_counter
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterationsM
Irandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderO
Krandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0	J
Frandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identityL
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_1L
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_2L
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_3
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slice
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_pfor_stridedslice	
Crandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
Arandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/addAddV2Irandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderLrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Srandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : °
Qrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stackPackIrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholder\random_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Urandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : °
Srandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1PackErandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add:z:0^random_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:¤
Srandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      í
Krandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_sliceStridedSlicerandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0Zrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack:output:0\random_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1:output:0\random_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask×
Erandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/BitcastBitcastTrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0
Lrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ¦
Hrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims
ExpandDimsNrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Bitcast:output:0Urandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:¢
brandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemKrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1Irandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderQrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌ
Erandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Crandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_1AddV2Irandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderNrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Erandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :È
Crandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_2AddV2random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_loop_counterNrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: ¼
Frandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentityGrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_2:z:0*
T0*
_output_shapes
: 
Hrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_1Identityrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations*
T0*
_output_shapes
: ¾
Hrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_2IdentityGrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/add_1:z:0*
T0*
_output_shapes
: é
Hrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_3Identityrrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Frandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identityOrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0"
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_1Qrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_1:output:0"
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_2Qrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_2:output:0"
Hrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity_3Qrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity_3:output:0"
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slicerandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0"´
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_pfor_stridedslicerandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_strided_slice_random_rotation_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
µ

Grandom_rotation_loop_body_stateful_uniform_Bitcast_pfor_while_cond_3325
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_loop_counter
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterationsM
Irandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderO
Krandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_less_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slice£
random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_pfor_while_cond_3325___redundant_placeholder0	J
Frandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identity
Á
Brandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/LessLessIrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_placeholderrandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_less_random_rotation_loop_body_stateful_uniform_bitcast_pfor_strided_slice*
T0*
_output_shapes
: »
Frandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentityFrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Frandom_rotation_loop_body_stateful_uniform_bitcast_pfor_while_identityOrandom_rotation/loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¢4
ü
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_1804z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter
|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsD
@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderF
Bloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1w
sloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0w
iloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0:	\
Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0\
Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0A
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityC
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1C
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2C
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3u
qloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_sliceu
gloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource:	Z
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_xZ
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1¢Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipRngReadAndSkipiloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0*
_output_shapes
:
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims
ExpandDimsKloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip:value:0Lloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dim:output:0*
T0	*
_output_shapes

:þ
Yloop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemBloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderHloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0	:éèÐ|
:loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :é
8loop_body/stateful_uniform/RngReadAndSkip/pfor/while/addAddV2@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderCloop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/y:output:0*
T0*
_output_shapes
: ~
<loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
:loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1AddV2vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counterEloop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: æ
=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentity>loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1:z:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: ¦
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1Identity|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterations:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: æ
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2Identity<loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add:z:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: 
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3Identityiloop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: Á
9loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOpNoOpD^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityFloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3:output:0"²
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0"²
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_xXloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0"è
qloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slicesloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0"Ô
gloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resourceiloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 2
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipCloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ô

map_while_cond_4126$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice:
6map_while_map_while_cond_4126___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:

a
E__inference_random_flip_layer_call_and_return_conditional_losses_1306

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs

ù
@__inference_conv2d_layer_call_and_return_conditional_losses_1325

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
÷	
`
A__inference_dropout_layer_call_and_return_conditional_losses_5246

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÂX

Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_body_5030
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsI
Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderK
Gloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1
}loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0r
nloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0~
zloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0a
]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0^
Zloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0F
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityH
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_1H
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_2H
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_3
{loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slicep
lloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims|
xloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_
[loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice\
Xloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ø
=loop_body/transform/ImageProjectiveTransformV3/pfor/while/addAddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderHloop_body/transform/ImageProjectiveTransformV3/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ¤
Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stackPackEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderXloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ¤
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1PackAloop_body/transform/ImageProjectiveTransformV3/pfor/while/add:z:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
: 
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      À
Gloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_sliceStridedSlicenloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0Vloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack:output:0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1:output:0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:àà*
ellipsis_mask*
shrink_axis_mask
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ü
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1AddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ¨
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stackPackEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderZloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:
Sloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ª
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1PackCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1:z:0\loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:¢
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
Iloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1StridedSlicezloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack:output:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1:output:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
ellipsis_mask*
shrink_axis_maskÏ
Tloop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3ImageProjectiveTransformV3Ploop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1:output:0]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0Zloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
Hloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ×
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims
ExpandDimsiloop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3:transformed_images:0Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
^loop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemGloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderMloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :ü
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2AddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :¸
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3AddV2loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counterJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: ´
Bloop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentityCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3:z:0*
T0*
_output_shapes
: ú
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1Identityloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterations*
T0*
_output_shapes
: ¶
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2IdentityCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2:z:0*
T0*
_output_shapes
: á
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3Identitynloop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityKloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_1Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_2Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_3Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3:output:0"¶
Xloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_valueZloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0"ü
{loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice}loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0"¼
[loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0"ö
xloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1zloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0"Þ
lloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddimsnloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :;7
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 
÷

)__inference_sequential_layer_call_fn_2956

inputs!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:©
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
¡

ó
A__inference_dense_3_layer_call_and_return_conditional_losses_5360

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿV
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ø
_
A__inference_dropout_layer_call_and_return_conditional_losses_5234

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_5281

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
3
ß
7loop_body_stateful_uniform_Bitcast_pfor_while_body_1869l
hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counterr
nloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations=
9loop_body_stateful_uniform_bitcast_pfor_while_placeholder?
;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1i
eloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0|
xloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0	:
6loop_body_stateful_uniform_bitcast_pfor_while_identity<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_1<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_2<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_3g
cloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slicez
vloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice	u
3loop_body/stateful_uniform/Bitcast/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ô
1loop_body/stateful_uniform/Bitcast/pfor/while/addAddV29loop_body_stateful_uniform_bitcast_pfor_while_placeholder<loop_body/stateful_uniform/Bitcast/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 
Aloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stackPack9loop_body_stateful_uniform_bitcast_pfor_while_placeholderLloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Eloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1Pack5loop_body/stateful_uniform/Bitcast/pfor/while/add:z:0Nloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
;loop_body/stateful_uniform/Bitcast/pfor/while/strided_sliceStridedSlicexloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0Jloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack:output:0Lloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1:output:0Lloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask·
5loop_body/stateful_uniform/Bitcast/pfor/while/BitcastBitcastDloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
<loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ö
8loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims
ExpandDims>loop_body/stateful_uniform/Bitcast/pfor/while/Bitcast:output:0Eloop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:â
Rloop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_19loop_body_stateful_uniform_bitcast_pfor_while_placeholderAloop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌw
5loop_body/stateful_uniform/Bitcast/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ø
3loop_body/stateful_uniform/Bitcast/pfor/while/add_1AddV29loop_body_stateful_uniform_bitcast_pfor_while_placeholder>loop_body/stateful_uniform/Bitcast/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: w
5loop_body/stateful_uniform/Bitcast/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
3loop_body/stateful_uniform/Bitcast/pfor/while/add_2AddV2hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counter>loop_body/stateful_uniform/Bitcast/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
6loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentity7loop_body/stateful_uniform/Bitcast/pfor/while/add_2:z:0*
T0*
_output_shapes
: Õ
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_1Identitynloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations*
T0*
_output_shapes
: 
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_2Identity7loop_body/stateful_uniform/Bitcast/pfor/while/add_1:z:0*
T0*
_output_shapes
: É
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_3Identitybloop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "y
6loop_body_stateful_uniform_bitcast_pfor_while_identity?loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_1Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_1:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_2Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_2:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_3Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_3:output:0"Ì
cloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_sliceeloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0"ò
vloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslicexloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Ë
È
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_cond_1803z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter
|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsD
@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderF
Bloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_less_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_1803___redundant_placeholder0
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_1803___redundant_placeholder1
loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_cond_1803___redundant_placeholder2A
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identity

9loop_body/stateful_uniform/RngReadAndSkip/pfor/while/LessLess@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholdervloop_body_stateful_uniform_rngreadandskip_pfor_while_less_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice*
T0*
_output_shapes
: ©
=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentity=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityFloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*)
_input_shapes
: : : : : :::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
:
«
»

Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_5029
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsI
Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderK
Gloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1
loop_body_transform_imageprojectivetransformv3_pfor_while_less_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_5029___redundant_placeholder0
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_5029___redundant_placeholder1
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_5029___redundant_placeholder2
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_5029___redundant_placeholder3F
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identity
±
>loop_body/transform/ImageProjectiveTransformV3/pfor/while/LessLessEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderloop_body_transform_imageprojectivetransformv3_pfor_while_less_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice*
T0*
_output_shapes
: ³
Bloop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentityBloop_body/transform/ImageProjectiveTransformV3/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityKloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:

ã
9loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_1935p
lloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counterv
rloop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterations?
;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderA
=loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1p
lloop_body_stateful_uniform_bitcast_1_pfor_while_less_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice
loop_body_stateful_uniform_bitcast_1_pfor_while_loop_body_stateful_uniform_bitcast_1_pfor_while_cond_1935___redundant_placeholder0	<
8loop_body_stateful_uniform_bitcast_1_pfor_while_identity

4loop_body/stateful_uniform/Bitcast_1/pfor/while/LessLess;loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderlloop_body_stateful_uniform_bitcast_1_pfor_while_less_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice*
T0*
_output_shapes
: 
8loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentity8loop_body/stateful_uniform/Bitcast_1/pfor/while/Less:z:0*
T0
*
_output_shapes
: "}
8loop_body_stateful_uniform_bitcast_1_pfor_while_identityAloop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
¿

&__inference_dense_3_layer_call_fn_5349

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallÖ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1459o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
J
.__inference_random_rotation_layer_call_fn_4175

inputs
identity¾
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_1312j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs

a
E__inference_random_flip_layer_call_and_return_conditional_losses_4111

inputs
identityX
IdentityIdentityinputs*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ç

map_while_body_4127$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:àà*
element_dtype0ß
,map/while/flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ààr
(map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:É
#map/while/flip_left_right/ReverseV2	ReverseV25map/while/flip_left_right/control_dependency:output:01map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ààá
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder,map/while/flip_left_right/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ù	
b
C__inference_dropout_2_layer_call_and_return_conditional_losses_1527

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
a
C__inference_dropout_2_layer_call_and_return_conditional_losses_1446

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó=
 
D__inference_sequential_layer_call_and_return_conditional_losses_2838
random_flip_input%
conv2d_2795: 
conv2d_2797: '
conv2d_1_2801:  
conv2d_1_2803: '
conv2d_2_2807:  
conv2d_2_2809: 

dense_2814:©

dense_2816:	 
dense_1_2820:

dense_1_2822:	 
dense_2_2826:

dense_2_2828:	
dense_3_2832:	
dense_3_2834:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallÑ
random_flip/PartitionedCallPartitionedCallrandom_flip_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_1306ì
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_1312
conv2d/StatefulPartitionedCallStatefulPartitionedCall(random_rotation/PartitionedCall:output:0conv2d_2795conv2d_2797*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_1325é
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_2801conv2d_1_2803*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_2807conv2d_2_2809*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361ï
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_1374ù
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_2814
dense_2816*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1387Õ
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1398
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_2820dense_1_2822*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1411Û
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1422
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_2826dense_2_2828*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1435Û
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1446
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_2832dense_3_2834*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1459w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
Ë
Û
Srandom_rotation_loop_body_transform_ImageProjectiveTransformV3_pfor_while_cond_3950¥
 random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter«
¦random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsY
Urandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder[
Wrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1¥
 random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_less_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice»
¶random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_3950___redundant_placeholder0»
¶random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_3950___redundant_placeholder1»
¶random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_3950___redundant_placeholder2»
¶random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_cond_3950___redundant_placeholder3V
Rrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity
ñ
Nrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/LessLessUrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_placeholder random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_less_random_rotation_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice*
T0*
_output_shapes
: Ó
Rrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentityRrandom_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Less:z:0*
T0
*
_output_shapes
: "±
Rrandom_rotation_loop_body_transform_imageprojectivetransformv3_pfor_while_identity[random_rotation/loop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
Ý
©
Irandom_rotation_loop_body_stateful_uniform_Bitcast_1_pfor_while_cond_3392
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_loop_counter
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_maximum_iterationsO
Krandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderQ
Mrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_less_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice§
¢random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_cond_3392___redundant_placeholder0	L
Hrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identity
É
Drandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/LessLessKrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_placeholderrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_less_random_rotation_loop_body_stateful_uniform_bitcast_1_pfor_strided_slice*
T0*
_output_shapes
: ¿
Hrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/IdentityIdentityHrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Hrandom_rotation_loop_body_stateful_uniform_bitcast_1_pfor_while_identityQrandom_rotation/loop_body/stateful_uniform/Bitcast_1/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
Í
µ
Xrandom_rotation_loop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_3449¯
ªrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counterµ
°random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterations^
Zrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder`
\random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1¯
ªrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_sliceÅ
Àrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_3449___redundant_placeholder0Å
Àrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_3449___redundant_placeholder1Å
Àrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_3449___redundant_placeholder2Å
Àrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_3449___redundant_placeholder3[
Wrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity

Srandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/LessLessZrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderªrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_random_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice*
T0*
_output_shapes
: Ý
Wrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityWrandom_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Less:z:0*
T0
*
_output_shapes
: "»
Wrandom_rotation_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity`random_rotation/loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
ô

map_while_cond_2590$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1$
 map_while_less_map_strided_slice:
6map_while_map_while_cond_2590___redundant_placeholder0
map_while_identity
p
map/while/LessLessmap_while_placeholder map_while_less_map_strided_slice*
T0*
_output_shapes
: x
map/while/Less_1Less map_while_map_while_loop_countermap_while_map_strided_slice*
T0*
_output_shapes
: d
map/while/LogicalAnd
LogicalAndmap/while/Less_1:z:0map/while/Less:z:0*
_output_shapes
: Y
map/while/IdentityIdentitymap/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
@
Ç
Nrandom_rotation_loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_3261
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter¡
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsT
Prandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderV
Rrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_resource_0:	|
xrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_x_0|
xrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_1_0Q
Mrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identityS
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1S
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2S
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_resource:	z
vrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_xz
vrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_1¢Srandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip
Srandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipRngReadAndSkiprandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_resource_0xrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_x_0xrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_1_0*
_output_shapes
:
Srandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Á
Orandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims
ExpandDims[random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip:value:0\random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dim:output:0*
T0	*
_output_shapes

:¾
irandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemRrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1Prandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderXrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0	:éèÐ
Jrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
Hrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/addAddV2Prandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderSrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Lrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ä
Jrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1AddV2random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counterUrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Mrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentityNrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1:z:0J^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: ç
Orandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1Identityrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsJ^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: 
Orandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2IdentityLrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add:z:0J^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: Ã
Orandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3Identityyrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0J^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: á
Irandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOpNoOpT^random_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "§
Mrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identityVrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0"«
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1Xrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1:output:0"«
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2Xrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2:output:0"«
Orandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3Xrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3:output:0"ò
vrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_1xrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_1_0"ò
vrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_xxrandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_cast_x_0"ª
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slicerandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0"
random_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_resourcerandom_rotation_loop_body_stateful_uniform_rngreadandskip_pfor_while_random_rotation_loop_body_stateful_uniform_rngreadandskip_resource_0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 2ª
Srandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipSrandom_rotation/loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ó]
ú
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_1993
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counter
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterationsN
Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderP
Lloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0e
aloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0|
xloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0K
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityM
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1M
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2M
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2c
_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shapez
vloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
Bloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/addAddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderMloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ³
Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stackPackJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ³
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1PackFloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add:z:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:¥
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ä
Lloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_sliceStridedSliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0[loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack:output:0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1:output:0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1AddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ·
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stackPackJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:
Xloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ¹
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1PackHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1:z:0aloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:§
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ì
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1StridedSliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack:output:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1:output:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask¥
Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2StatelessRandomUniformV2aloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0Uloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1:output:0xloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Mloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ã
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims
ExpandDims`loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2:output:0Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
cloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemLloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderRloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2AddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :Ì
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3AddV2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counterOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: ¾
Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3:z:0*
T0*
_output_shapes
: 
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1Identityloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterations*
T0*
_output_shapes
: À
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2IdentityHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2:z:0*
T0*
_output_shapes
: ë
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3Identitysloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityPloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3:output:0"Ä
_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shapealoop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0"ò
vloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_algxloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_sliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 
Ú
a
C__inference_dropout_1_layer_call_and_return_conditional_losses_1422

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ù	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_5293

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
°
H
,__inference_max_pooling2d_layer_call_fn_5123

inputs
identityÕ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ã

&__inference_dense_1_layer_call_fn_5255

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1411p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

D
(__inference_dropout_1_layer_call_fn_5271

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1422a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ñ
a
(__inference_dropout_1_layer_call_fn_5276

inputs
identity¢StatefulPartitionedCall¿
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1560p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¢4
ü
>loop_body_stateful_uniform_RngReadAndSkip_pfor_while_body_4340z
vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counter
|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterationsD
@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderF
Bloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1w
sloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0w
iloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0:	\
Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0\
Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0A
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityC
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1C
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2C
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3u
qloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_sliceu
gloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource:	Z
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_xZ
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1¢Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipRngReadAndSkipiloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0*
_output_shapes
:
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : 
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims
ExpandDimsKloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip:value:0Lloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims/dim:output:0*
T0	*
_output_shapes

:þ
Yloop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemBloop_body_stateful_uniform_rngreadandskip_pfor_while_placeholder_1@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderHloop_body/stateful_uniform/RngReadAndSkip/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0	:éèÐ|
:loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :é
8loop_body/stateful_uniform/RngReadAndSkip/pfor/while/addAddV2@loop_body_stateful_uniform_rngreadandskip_pfor_while_placeholderCloop_body/stateful_uniform/RngReadAndSkip/pfor/while/add/y:output:0*
T0*
_output_shapes
: ~
<loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
:loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1AddV2vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_counterEloop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: æ
=loop_body/stateful_uniform/RngReadAndSkip/pfor/while/IdentityIdentity>loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add_1:z:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: ¦
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1Identity|loop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_while_maximum_iterations:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: æ
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2Identity<loop_body/stateful_uniform/RngReadAndSkip/pfor/while/add:z:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: 
?loop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3Identityiloop_body/stateful_uniform/RngReadAndSkip/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0:^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOp*
T0*
_output_shapes
: Á
9loop_body/stateful_uniform/RngReadAndSkip/pfor/while/NoOpNoOpD^loop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip*"
_acd_function_control_output(*
_output_shapes
 "
=loop_body_stateful_uniform_rngreadandskip_pfor_while_identityFloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_1Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_1:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_2Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_2:output:0"
?loop_body_stateful_uniform_rngreadandskip_pfor_while_identity_3Hloop_body/stateful_uniform/RngReadAndSkip/pfor/while/Identity_3:output:0"²
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1Xloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_1_0"²
Vloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_xXloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_cast_x_0"è
qloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slicesloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_pfor_strided_slice_0"Ô
gloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resourceiloop_body_stateful_uniform_rngreadandskip_pfor_while_loop_body_stateful_uniform_rngreadandskip_resource_0*(
_construction_contextkEagerRuntime*#
_input_shapes
: : : : : : : : 2
Cloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkipCloop_body/stateful_uniform/RngReadAndSkip/pfor/while/RngReadAndSkip: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 


)__inference_sequential_layer_call_fn_1497
random_flip_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:©
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_1466o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
Å
]
A__inference_flatten_layer_call_and_return_conditional_losses_5199

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿT  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs
¤

õ
A__inference_dense_1_layer_call_and_return_conditional_losses_5266

inputs2
matmul_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
æ

'__inference_conv2d_1_layer_call_fn_5137

inputs!
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿoo : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo 
 
_user_specified_nameinputs
¦

ô
?__inference_dense_layer_call_and_return_conditional_losses_5219

inputs3
matmul_readvariableop_resource:©.
biasadd_readvariableop_resource:	
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpw
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*!
_output_shapes
:©*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿQ
ReluReluBiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿb
IdentityIdentityRelu:activations:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿw
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ©: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
 
_user_specified_nameinputs
ÂX

Cloop_body_transform_ImageProjectiveTransformV3_pfor_while_body_2494
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counter
loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterationsI
Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderK
Gloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1
}loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0r
nloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0~
zloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0a
]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0^
Zloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0F
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityH
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_1H
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_2H
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_3
{loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slicep
lloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims|
xloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_
[loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice\
Xloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :ø
=loop_body/transform/ImageProjectiveTransformV3/pfor/while/addAddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderHloop_body/transform/ImageProjectiveTransformV3/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ¤
Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stackPackEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderXloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ¤
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1PackAloop_body/transform/ImageProjectiveTransformV3/pfor/while/add:z:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
: 
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      À
Gloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_sliceStridedSlicenloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0Vloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack:output:0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_1:output:0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:àà*
ellipsis_mask*
shrink_axis_mask
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ü
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1AddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ¨
Oloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stackPackEloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderZloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:
Sloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ª
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1PackCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_1:z:0\loop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:¢
Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      Ê
Iloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1StridedSlicezloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0Xloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack:output:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_1:output:0Zloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes

:*
ellipsis_mask*
shrink_axis_maskÏ
Tloop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3ImageProjectiveTransformV3Ploop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice:output:0Rloop_body/transform/ImageProjectiveTransformV3/pfor/while/strided_slice_1:output:0]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0Zloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0*8
_output_shapes&
$:"ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
dtype0*
	fill_mode	REFLECT*
interpolation
BILINEAR
Hloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ×
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims
ExpandDimsiloop_body/transform/ImageProjectiveTransformV3/pfor/while/ImageProjectiveTransformV3:transformed_images:0Qloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims/dim:output:0*
T0*<
_output_shapes*
(:&ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
^loop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemGloop_body_transform_imageprojectivetransformv3_pfor_while_placeholder_1Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderMloop_body/transform/ImageProjectiveTransformV3/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :ü
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2AddV2Eloop_body_transform_imageprojectivetransformv3_pfor_while_placeholderJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Aloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :¸
?loop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3AddV2loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_loop_counterJloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: ´
Bloop_body/transform/ImageProjectiveTransformV3/pfor/while/IdentityIdentityCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_3:z:0*
T0*
_output_shapes
: ú
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1Identityloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_while_maximum_iterations*
T0*
_output_shapes
: ¶
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2IdentityCloop_body/transform/ImageProjectiveTransformV3/pfor/while/add_2:z:0*
T0*
_output_shapes
: á
Dloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3Identitynloop_body/transform/ImageProjectiveTransformV3/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Bloop_body_transform_imageprojectivetransformv3_pfor_while_identityKloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_1Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_1:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_2Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_2:output:0"
Dloop_body_transform_imageprojectivetransformv3_pfor_while_identity_3Mloop_body/transform/ImageProjectiveTransformV3/pfor/while/Identity_3:output:0"¶
Xloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_valueZloop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_fill_value_0"ü
{loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice}loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_imageprojectivetransformv3_pfor_strided_slice_0"¼
[loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice]loop_body_transform_imageprojectivetransformv3_pfor_while_loop_body_transform_strided_slice_0"ö
xloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1zloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_1_loop_body_rotation_matrix_concat_pfor_concat_1_0"Þ
lloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddimsnloop_body_transform_imageprojectivetransformv3_pfor_while_strided_slice_loop_body_expanddims_pfor_expanddims_0*(
_construction_contextkEagerRuntime*]
_input_shapesL
J: : : : : :ÿÿÿÿÿÿÿÿÿàà:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :;7
5
_output_shapes#
!:ÿÿÿÿÿÿÿÿÿàà:1-
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 

c
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5128

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

B
&__inference_dropout_layer_call_fn_5224

inputs
identity­
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1398a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
]
A__inference_flatten_layer_call_and_return_conditional_losses_1374

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿT  ^
ReshapeReshapeinputsConst:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©Z
IdentityIdentityReshape:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ :W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ 
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5188

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ü)
Ú
__inference__traced_save_5441
file_prefix,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop.
*savev2_conv2d_2_kernel_read_readvariableop,
(savev2_conv2d_2_bias_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop-
)savev2_dense_2_kernel_read_readvariableop+
'savev2_dense_2_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop3
/savev2_random_flip_statevar_read_readvariableop	7
3savev2_random_rotation_statevar_read_readvariableop	
savev2_const

identity_1¢MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¤
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*Í
valueÃBÀB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEBJlayer-0/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEBJlayer-1/_random_generator/_generator/_state_var/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*5
value,B*B B B B B B B B B B B B B B B B B ð
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop*savev2_conv2d_2_kernel_read_readvariableop(savev2_conv2d_2_bias_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop)savev2_dense_2_kernel_read_readvariableop'savev2_dense_2_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop/savev2_random_flip_statevar_read_readvariableop3savev2_random_rotation_statevar_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
2		
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*¸
_input_shapes¦
£: : : :  : :  : :©::
::
::	:::: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:,(
&
_output_shapes
: : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :,(
&
_output_shapes
:  : 

_output_shapes
: :'#
!
_output_shapes
:©:!

_output_shapes	
::&	"
 
_output_shapes
:
:!


_output_shapes	
::&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: 
 
æ
random_flip_map_while_body_3068<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1;
7random_flip_map_while_random_flip_map_strided_slice_1_0w
srandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0"
random_flip_map_while_identity$
 random_flip_map_while_identity_1$
 random_flip_map_while_identity_2$
 random_flip_map_while_identity_39
5random_flip_map_while_random_flip_map_strided_slice_1u
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor
Grandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      ó
9random_flip/map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0!random_flip_map_while_placeholderPrandom_flip/map/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:àà*
element_dtype0
8random_flip/map/while/flip_left_right/control_dependencyIdentity@random_flip/map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*L
_classB
@>loc:@random_flip/map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:àà~
4random_flip/map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:í
/random_flip/map/while/flip_left_right/ReverseV2	ReverseV2Arandom_flip/map/while/flip_left_right/control_dependency:output:0=random_flip/map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:àà
:random_flip/map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#random_flip_map_while_placeholder_1!random_flip_map_while_placeholder8random_flip/map/while/flip_left_right/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:éèÒ]
random_flip/map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
random_flip/map/while/addAddV2!random_flip_map_while_placeholder$random_flip/map/while/add/y:output:0*
T0*
_output_shapes
: _
random_flip/map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
random_flip/map/while/add_1AddV28random_flip_map_while_random_flip_map_while_loop_counter&random_flip/map/while/add_1/y:output:0*
T0*
_output_shapes
: l
random_flip/map/while/IdentityIdentityrandom_flip/map/while/add_1:z:0*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_1Identity3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: l
 random_flip/map/while/Identity_2Identityrandom_flip/map/while/add:z:0*
T0*
_output_shapes
: 
 random_flip/map/while/Identity_3IdentityJrandom_flip/map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0"M
 random_flip_map_while_identity_1)random_flip/map/while/Identity_1:output:0"M
 random_flip_map_while_identity_2)random_flip/map/while/Identity_2:output:0"M
 random_flip_map_while_identity_3)random_flip/map/while/Identity_3:output:0"p
5random_flip_map_while_random_flip_map_strided_slice_17random_flip_map_while_random_flip_map_strided_slice_1_0"è
qrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensorsrandom_flip_map_while_tensorarrayv2read_tensorlistgetitem_random_flip_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 

D
(__inference_dropout_2_layer_call_fn_5318

inputs
identity¯
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1446a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ë
a
E__inference_random_flip_layer_call_and_return_conditional_losses_4170

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
map_while_body_4127*
condR
map_while_cond_4126*
output_shapes
: : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Â

$__inference_dense_layer_call_fn_5208

inputs
unknown:©
	unknown_0:	
identity¢StatefulPartitionedCallÕ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1387p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*,
_input_shapes
:ÿÿÿÿÿÿÿÿÿ©: : 22
StatefulPartitionedCallStatefulPartitionedCall:Q M
)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
 
_user_specified_nameinputs

ù
@__inference_conv2d_layer_call_and_return_conditional_losses_5118

inputs8
conv2d_readvariableop_resource: -
biasadd_readvariableop_resource: 
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp|
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
: *
dtype0
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *
paddingVALID*
strides
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ Z
ReluReluBiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ k
IdentityIdentityRelu:activations:0^NoOp*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ w
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*4
_input_shapes#
!:ÿÿÿÿÿÿÿÿÿàà: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ò=

D__inference_sequential_layer_call_and_return_conditional_losses_1466

inputs%
conv2d_1326: 
conv2d_1328: '
conv2d_1_1344:  
conv2d_1_1346: '
conv2d_2_1362:  
conv2d_2_1364: 

dense_1388:©

dense_1390:	 
dense_1_1412:

dense_1_1414:	 
dense_2_1436:

dense_2_1438:	
dense_3_1460:	
dense_3_1462:
identity¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢ conv2d_2/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dense_2/StatefulPartitionedCall¢dense_3/StatefulPartitionedCallÆ
random_flip/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_random_flip_layer_call_and_return_conditional_losses_1306ì
random_rotation/PartitionedCallPartitionedCall$random_flip/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_random_rotation_layer_call_and_return_conditional_losses_1312
conv2d/StatefulPartitionedCallStatefulPartitionedCall(random_rotation/PartitionedCall:output:0conv2d_1326conv2d_1328*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_conv2d_layer_call_and_return_conditional_losses_1325é
max_pooling2d/PartitionedCallPartitionedCall'conv2d/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *P
fKRI
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_1268
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall&max_pooling2d/PartitionedCall:output:0conv2d_1_1344conv2d_1_1346*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_1_layer_call_and_return_conditional_losses_1343ï
max_pooling2d_1/PartitionedCallPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280
 conv2d_2/StatefulPartitionedCallStatefulPartitionedCall(max_pooling2d_1/PartitionedCall:output:0conv2d_2_1362conv2d_2_1364*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361ï
max_pooling2d_2/PartitionedCallPartitionedCall)conv2d_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *R
fMRK
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_1292Ø
flatten/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_flatten_layer_call_and_return_conditional_losses_1374ù
dense/StatefulPartitionedCallStatefulPartitionedCall flatten/PartitionedCall:output:0
dense_1388
dense_1390*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *H
fCRA
?__inference_dense_layer_call_and_return_conditional_losses_1387Õ
dropout/PartitionedCallPartitionedCall&dense/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1398
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_1412dense_1_1414*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_1_layer_call_and_return_conditional_losses_1411Û
dropout_1/PartitionedCallPartitionedCall(dense_1/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_1_layer_call_and_return_conditional_losses_1422
dense_2/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_2_1436dense_2_1438*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1435Û
dropout_2/PartitionedCallPartitionedCall(dense_2/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dropout_2_layer_call_and_return_conditional_losses_1446
dense_3/StatefulPartitionedCallStatefulPartitionedCall"dropout_2/PartitionedCall:output:0dense_3_1460dense_3_1462*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_3_layer_call_and_return_conditional_losses_1459w
IdentityIdentity(dense_3/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ³
NoOpNoOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall!^conv2d_2/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dense_2/StatefulPartitionedCall ^dense_3/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2D
 conv2d_2/StatefulPartitionedCall conv2d_2/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dense_2/StatefulPartitionedCalldense_2/StatefulPartitionedCall2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ó]
ú
Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_body_4529
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counter
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterationsN
Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderP
Lloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0e
aloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0|
xloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0K
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityM
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1M
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2M
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2c
_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shapez
vloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
Bloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/addAddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderMloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ³
Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stackPackJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ³
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1PackFloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add:z:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:¥
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ä
Lloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_sliceStridedSliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0[loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack:output:0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_1:output:0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1AddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: 
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1Const*
_output_shapes
: *
dtype0*
value	B : ·
Tloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stackPackJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack/1:output:0*
N*
T0*
_output_shapes
:
Xloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : ¹
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1PackHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_1:z:0aloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1/1:output:0*
N*
T0*
_output_shapes
:§
Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      ì
Nloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1StridedSliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0]loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack:output:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_1:output:0_loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask¥
Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2StatelessRandomUniformV2aloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0Uloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice:output:0Wloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/strided_slice_1:output:0xloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0*#
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
Mloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : Ã
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims
ExpandDims`loop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/StatelessRandomUniformV2:output:0Vloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims/dim:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ¦
cloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemLloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderRloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÒ
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2AddV2Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
Floop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :Ì
Dloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3AddV2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counterOloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3/y:output:0*
T0*
_output_shapes
: ¾
Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_3:z:0*
T0*
_output_shapes
: 
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1Identityloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterations*
T0*
_output_shapes
: À
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2IdentityHloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/add_2:z:0*
T0*
_output_shapes
: ë
Iloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3Identitysloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityPloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_1Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_1:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_2Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_2:output:0"
Iloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity_3Rloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity_3:output:0"Ä
_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shapealoop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_shape_0"ò
vloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_algxloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_alg_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_sliceloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_1_loop_body_stateful_uniform_bitcast_pfor_tensorlistconcatv2_0"
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_strided_slice_loop_body_stateful_uniform_bitcast_1_pfor_tensorlistconcatv2_0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8: : : : : :ÿÿÿÿÿÿÿÿÿ:ÿÿÿÿÿÿÿÿÿ:: : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ:-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
::

_output_shapes
: 
Ç

map_while_body_2591$
 map_while_map_while_loop_counter
map_while_map_strided_slice
map_while_placeholder
map_while_placeholder_1#
map_while_map_strided_slice_1_0_
[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0
map_while_identity
map_while_identity_1
map_while_identity_2
map_while_identity_3!
map_while_map_strided_slice_1]
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor
;map/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      ·
-map/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0map_while_placeholderDmap/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*$
_output_shapes
:àà*
element_dtype0ß
,map/while/flip_left_right/control_dependencyIdentity4map/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*@
_class6
42loc:@map/while/TensorArrayV2Read/TensorListGetItem*$
_output_shapes
:ààr
(map/while/flip_left_right/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB:É
#map/while/flip_left_right/ReverseV2	ReverseV25map/while/flip_left_right/control_dependency:output:01map/while/flip_left_right/ReverseV2/axis:output:0*
T0*$
_output_shapes
:ààá
.map/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemmap_while_placeholder_1map_while_placeholder,map/while/flip_left_right/ReverseV2:output:0*
_output_shapes
: *
element_dtype0:éèÒQ
map/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :h
map/while/addAddV2map_while_placeholdermap/while/add/y:output:0*
T0*
_output_shapes
: S
map/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :w
map/while/add_1AddV2 map_while_map_while_loop_countermap/while/add_1/y:output:0*
T0*
_output_shapes
: T
map/while/IdentityIdentitymap/while/add_1:z:0*
T0*
_output_shapes
: ^
map/while/Identity_1Identitymap_while_map_strided_slice*
T0*
_output_shapes
: T
map/while/Identity_2Identitymap/while/add:z:0*
T0*
_output_shapes
: 
map/while/Identity_3Identity>map/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "1
map_while_identitymap/while/Identity:output:0"5
map_while_identity_1map/while/Identity_1:output:0"5
map_while_identity_2map/while/Identity_2:output:0"5
map_while_identity_3map/while/Identity_3:output:0"@
map_while_map_strided_slice_1map_while_map_strided_slice_1_0"¸
Ymap_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor[map_while_tensorarrayv2read_tensorlistgetitem_map_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*
_input_shapes
: : : : : : : 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
æ

'__inference_conv2d_2_layer_call_fn_5167

inputs!
unknown:  
	unknown_0: 
identity¢StatefulPartitionedCallß
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_conv2d_2_layer_call_and_return_conditional_losses_1361w
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:ÿÿÿÿÿÿÿÿÿ66 : : 22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 
 
_user_specified_nameinputs
ë
a
E__inference_random_flip_layer_call_and_return_conditional_losses_2634

inputs
identity?
	map/ShapeShapeinputs*
T0*
_output_shapes
:a
map/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: c
map/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:c
map/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:å
map/strided_sliceStridedSlicemap/Shape:output:0 map/strided_slice/stack:output:0"map/strided_slice/stack_1:output:0"map/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskj
map/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ¾
map/TensorArrayV2TensorListReserve(map/TensorArrayV2/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒ
9map/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      á
+map/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorinputsBmap/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒK
	map/ConstConst*
_output_shapes
: *
dtype0*
value	B : l
!map/TensorArrayV2_1/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿÂ
map/TensorArrayV2_1TensorListReserve*map/TensorArrayV2_1/element_shape:output:0map/strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éèÒX
map/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
	map/whileStatelessWhilemap/while/loop_counter:output:0map/strided_slice:output:0map/Const:output:0map/TensorArrayV2_1:handle:0map/strided_slice:output:0;map/TensorArrayUnstack/TensorListFromTensor:output_handle:0*
T

2*
_lower_using_switch_merge(*
_num_original_outputs* 
_output_shapes
: : : : : : * 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
map_while_body_2591*
condR
map_while_cond_2590*
output_shapes
: : : : : : 
4map/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*!
valueB"à   à      Ô
&map/TensorArrayV2Stack/TensorListStackTensorListStackmap/while:output:3=map/TensorArrayV2Stack/TensorListStack/element_shape:output:0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà*
element_dtype0
IdentityIdentity/map/TensorArrayV2Stack/TensorListStack:tensor:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:ÿÿÿÿÿÿÿÿÿàà:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ç


random_flip_map_while_cond_3067<
8random_flip_map_while_random_flip_map_while_loop_counter7
3random_flip_map_while_random_flip_map_strided_slice%
!random_flip_map_while_placeholder'
#random_flip_map_while_placeholder_1<
8random_flip_map_while_less_random_flip_map_strided_sliceR
Nrandom_flip_map_while_random_flip_map_while_cond_3067___redundant_placeholder0"
random_flip_map_while_identity
 
random_flip/map/while/LessLess!random_flip_map_while_placeholder8random_flip_map_while_less_random_flip_map_strided_slice*
T0*
_output_shapes
: ´
random_flip/map/while/Less_1Less8random_flip_map_while_random_flip_map_while_loop_counter3random_flip_map_while_random_flip_map_strided_slice*
T0*
_output_shapes
: 
 random_flip/map/while/LogicalAnd
LogicalAnd random_flip/map/while/Less_1:z:0random_flip/map/while/Less:z:0*
_output_shapes
: q
random_flip/map/while/IdentityIdentity$random_flip/map/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "I
random_flip_map_while_identity'random_flip/map/while/Identity:output:0*(
_construction_contextkEagerRuntime*!
_input_shapes
: : : : : :: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
:
3
ß
7loop_body_stateful_uniform_Bitcast_pfor_while_body_4405l
hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counterr
nloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations=
9loop_body_stateful_uniform_bitcast_pfor_while_placeholder?
;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_1i
eloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0|
xloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0	:
6loop_body_stateful_uniform_bitcast_pfor_while_identity<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_1<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_2<
8loop_body_stateful_uniform_bitcast_pfor_while_identity_3g
cloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slicez
vloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice	u
3loop_body/stateful_uniform/Bitcast/pfor/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ô
1loop_body/stateful_uniform/Bitcast/pfor/while/addAddV29loop_body_stateful_uniform_bitcast_pfor_while_placeholder<loop_body/stateful_uniform/Bitcast/pfor/while/add/y:output:0*
T0*
_output_shapes
: 
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1Const*
_output_shapes
: *
dtype0*
value	B : 
Aloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stackPack9loop_body_stateful_uniform_bitcast_pfor_while_placeholderLloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack/1:output:0*
N*
T0*
_output_shapes
:
Eloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1Const*
_output_shapes
: *
dtype0*
value	B : 
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1Pack5loop_body/stateful_uniform/Bitcast/pfor/while/add:z:0Nloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1/1:output:0*
N*
T0*
_output_shapes
:
Cloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB"      
;loop_body/stateful_uniform/Bitcast/pfor/while/strided_sliceStridedSlicexloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0Jloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack:output:0Lloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_1:output:0Lloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice/stack_2:output:0*
Index0*
T0	*
_output_shapes
:*
ellipsis_mask*
shrink_axis_mask·
5loop_body/stateful_uniform/Bitcast/pfor/while/BitcastBitcastDloop_body/stateful_uniform/Bitcast/pfor/while/strided_slice:output:0*
T0	*
_output_shapes
:*

type0~
<loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : ö
8loop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims
ExpandDims>loop_body/stateful_uniform/Bitcast/pfor/while/Bitcast:output:0Eloop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims/dim:output:0*
T0*
_output_shapes

:â
Rloop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem;loop_body_stateful_uniform_bitcast_pfor_while_placeholder_19loop_body_stateful_uniform_bitcast_pfor_while_placeholderAloop_body/stateful_uniform/Bitcast/pfor/while/ExpandDims:output:0*
_output_shapes
: *
element_dtype0:éèÌw
5loop_body/stateful_uniform/Bitcast/pfor/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :Ø
3loop_body/stateful_uniform/Bitcast/pfor/while/add_1AddV29loop_body_stateful_uniform_bitcast_pfor_while_placeholder>loop_body/stateful_uniform/Bitcast/pfor/while/add_1/y:output:0*
T0*
_output_shapes
: w
5loop_body/stateful_uniform/Bitcast/pfor/while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :
3loop_body/stateful_uniform/Bitcast/pfor/while/add_2AddV2hloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_loop_counter>loop_body/stateful_uniform/Bitcast/pfor/while/add_2/y:output:0*
T0*
_output_shapes
: 
6loop_body/stateful_uniform/Bitcast/pfor/while/IdentityIdentity7loop_body/stateful_uniform/Bitcast/pfor/while/add_2:z:0*
T0*
_output_shapes
: Õ
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_1Identitynloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_while_maximum_iterations*
T0*
_output_shapes
: 
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_2Identity7loop_body/stateful_uniform/Bitcast/pfor/while/add_1:z:0*
T0*
_output_shapes
: É
8loop_body/stateful_uniform/Bitcast/pfor/while/Identity_3Identitybloop_body/stateful_uniform/Bitcast/pfor/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: "y
6loop_body_stateful_uniform_bitcast_pfor_while_identity?loop_body/stateful_uniform/Bitcast/pfor/while/Identity:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_1Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_1:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_2Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_2:output:0"}
8loop_body_stateful_uniform_bitcast_pfor_while_identity_3Aloop_body/stateful_uniform/Bitcast/pfor/while/Identity_3:output:0"Ì
cloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_sliceeloop_body_stateful_uniform_bitcast_pfor_while_loop_body_stateful_uniform_bitcast_pfor_strided_slice_0"ò
vloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslicexloop_body_stateful_uniform_bitcast_pfor_while_strided_slice_loop_body_stateful_uniform_strided_slice_pfor_stridedslice_0*(
_construction_contextkEagerRuntime*0
_input_shapes
: : : : : :ÿÿÿÿÿÿÿÿÿ: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 

)__inference_sequential_layer_call_fn_2991

inputs
unknown:	#
	unknown_0: 
	unknown_1: #
	unknown_2:  
	unknown_3: #
	unknown_4:  
	unknown_5: 
	unknown_6:©
	unknown_7:	
	unknown_8:

	unknown_9:	

unknown_10:


unknown_11:	

unknown_12:	

unknown_13:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_sequential_layer_call_and_return_conditional_losses_2722o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*N
_input_shapes=
;:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
ù	
b
C__inference_dropout_1_layer_call_and_return_conditional_losses_1560

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÞF
à

D__inference_sequential_layer_call_and_return_conditional_losses_3052

inputs?
%conv2d_conv2d_readvariableop_resource: 4
&conv2d_biasadd_readvariableop_resource: A
'conv2d_1_conv2d_readvariableop_resource:  6
(conv2d_1_biasadd_readvariableop_resource: A
'conv2d_2_conv2d_readvariableop_resource:  6
(conv2d_2_biasadd_readvariableop_resource: 9
$dense_matmul_readvariableop_resource:©4
%dense_biasadd_readvariableop_resource:	:
&dense_1_matmul_readvariableop_resource:
6
'dense_1_biasadd_readvariableop_resource:	:
&dense_2_matmul_readvariableop_resource:
6
'dense_2_biasadd_readvariableop_resource:	9
&dense_3_matmul_readvariableop_resource:	5
'dense_3_biasadd_readvariableop_resource:
identity¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢conv2d_2/BiasAdd/ReadVariableOp¢conv2d_2/Conv2D/ReadVariableOp¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢dense_2/BiasAdd/ReadVariableOp¢dense_2/MatMul/ReadVariableOp¢dense_3/BiasAdd/ReadVariableOp¢dense_3/MatMul/ReadVariableOp
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
: *
dtype0ª
conv2d/Conv2DConv2Dinputs$conv2d/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ *
paddingVALID*
strides

conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ h
conv2d/ReluReluconv2d/BiasAdd:output:0*
T0*1
_output_shapes
:ÿÿÿÿÿÿÿÿÿÞÞ ¨
max_pooling2d/MaxPoolMaxPoolconv2d/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿoo *
ksize
*
paddingVALID*
strides

conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Ä
conv2d_1/Conv2DConv2Dmax_pooling2d/MaxPool:output:0&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm *
paddingVALID*
strides

conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm j
conv2d_1/ReluReluconv2d_1/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿmm ¬
max_pooling2d_1/MaxPoolMaxPoolconv2d_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ66 *
ksize
*
paddingVALID*
strides

conv2d_2/Conv2D/ReadVariableOpReadVariableOp'conv2d_2_conv2d_readvariableop_resource*&
_output_shapes
:  *
dtype0Æ
conv2d_2/Conv2DConv2D max_pooling2d_1/MaxPool:output:0&conv2d_2/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 *
paddingVALID*
strides

conv2d_2/BiasAdd/ReadVariableOpReadVariableOp(conv2d_2_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0
conv2d_2/BiasAddBiasAddconv2d_2/Conv2D:output:0'conv2d_2/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 j
conv2d_2/ReluReluconv2d_2/BiasAdd:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ44 ¬
max_pooling2d_2/MaxPoolMaxPoolconv2d_2/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ *
ksize
*
paddingVALID*
strides
^
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿT  
flatten/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten/Const:output:0*
T0*)
_output_shapes
:ÿÿÿÿÿÿÿÿÿ©
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource*!
_output_shapes
:©*
dtype0
dense/MatMulMatMulflatten/Reshape:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ]

dense/ReluReludense/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿi
dropout/IdentityIdentitydense/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_1/ReluReludense_1/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_1/IdentityIdentitydense_1/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/MatMul/ReadVariableOpReadVariableOp&dense_2_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype0
dense_2/MatMulMatMuldropout_1/Identity:output:0%dense_2/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_2/BiasAdd/ReadVariableOpReadVariableOp'dense_2_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
dense_2/BiasAddBiasAdddense_2/MatMul:product:0&dense_2/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿa
dense_2/ReluReludense_2/BiasAdd:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿm
dropout_2/IdentityIdentitydense_2/Relu:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/MatMul/ReadVariableOpReadVariableOp&dense_3_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_3/MatMulMatMuldropout_2/Identity:output:0%dense_3/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_3/BiasAddBiasAdddense_3/MatMul:product:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿf
dense_3/SoftmaxSoftmaxdense_3/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿh
IdentityIdentitydense_3/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
NoOpNoOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp ^conv2d_2/BiasAdd/ReadVariableOp^conv2d_2/Conv2D/ReadVariableOp^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp^dense_2/BiasAdd/ReadVariableOp^dense_2/MatMul/ReadVariableOp^dense_3/BiasAdd/ReadVariableOp^dense_3/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2B
conv2d_2/BiasAdd/ReadVariableOpconv2d_2/BiasAdd/ReadVariableOp2@
conv2d_2/Conv2D/ReadVariableOpconv2d_2/Conv2D/ReadVariableOp2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2@
dense_2/BiasAdd/ReadVariableOpdense_2/BiasAdd/ReadVariableOp2>
dense_2/MatMul/ReadVariableOpdense_2/MatMul/ReadVariableOp2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2>
dense_3/MatMul/ReadVariableOpdense_3/MatMul/ReadVariableOp:Y U
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
 
_user_specified_nameinputs
Ã

&__inference_dense_2_layer_call_fn_5302

inputs
unknown:

	unknown_0:	
identity¢StatefulPartitionedCall×
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dense_2_layer_call_and_return_conditional_losses_1435p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:ÿÿÿÿÿÿÿÿÿ: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
­

Hloop_body_stateful_uniform_StatelessRandomUniformV2_pfor_while_cond_1992
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_counter
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_maximum_iterationsN
Jloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderP
Lloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholder_1
loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_1992___redundant_placeholder0¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_1992___redundant_placeholder1¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_1992___redundant_placeholder2¥
 loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_cond_1992___redundant_placeholder3K
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identity
Å
Cloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/LessLessJloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_placeholderloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_less_loop_body_stateful_uniform_statelessrandomuniformv2_pfor_strided_slice*
T0*
_output_shapes
: ½
Gloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/IdentityIdentityGloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Less:z:0*
T0
*
_output_shapes
: "
Gloop_body_stateful_uniform_statelessrandomuniformv2_pfor_while_identityPloop_body/stateful_uniform/StatelessRandomUniformV2/pfor/while/Identity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
: : : : : ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::

_output_shapes
:
÷	
`
A__inference_dropout_layer_call_and_return_conditional_losses_1593

inputs
identityR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?§
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿp
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿj
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿZ
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ì

"__inference_signature_wrapper_2923
random_flip_input!
unknown: 
	unknown_0: #
	unknown_1:  
	unknown_2: #
	unknown_3:  
	unknown_4: 
	unknown_5:©
	unknown_6:	
	unknown_7:

	unknown_8:	
	unknown_9:


unknown_10:	

unknown_11:	

unknown_12:
identity¢StatefulPartitionedCallÞ
StatefulPartitionedCallStatefulPartitionedCallrandom_flip_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*0
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *(
f#R!
__inference__wrapped_model_1259o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*L
_input_shapes;
9:ÿÿÿÿÿÿÿÿÿàà: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:d `
1
_output_shapes
:ÿÿÿÿÿÿÿÿÿàà
+
_user_specified_namerandom_flip_input
í
_
&__inference_dropout_layer_call_fn_5229

inputs
identity¢StatefulPartitionedCall½
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_dropout_layer_call_and_return_conditional_losses_1593p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

e
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_1280

inputs
identity¢
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*È
serving_default´
Y
random_flip_inputD
#serving_default_random_flip_input:0ÿÿÿÿÿÿÿÿÿàà;
dense_30
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:Øò
ã
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer_with_weights-1
layer-4
layer-5
layer_with_weights-2
layer-6
layer-7
	layer-8

layer_with_weights-3

layer-9
layer-10
layer_with_weights-4
layer-11
layer-12
layer_with_weights-5
layer-13
layer-14
layer_with_weights-6
layer-15
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_sequential
¼
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
¼
 	variables
!trainable_variables
"regularization_losses
#	keras_api
$__call__
*%&call_and_return_all_conditional_losses
&_random_generator"
_tf_keras_layer
Ý
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+__call__
*,&call_and_return_all_conditional_losses

-kernel
.bias
 /_jit_compiled_convolution_op"
_tf_keras_layer
¥
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
6	variables
7trainable_variables
8regularization_losses
9	keras_api
:__call__
*;&call_and_return_all_conditional_losses

<kernel
=bias
 >_jit_compiled_convolution_op"
_tf_keras_layer
¥
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
C__call__
*D&call_and_return_all_conditional_losses"
_tf_keras_layer
Ý
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias
 M_jit_compiled_convolution_op"
_tf_keras_layer
¥
N	variables
Otrainable_variables
Pregularization_losses
Q	keras_api
R__call__
*S&call_and_return_all_conditional_losses"
_tf_keras_layer
¥
T	variables
Utrainable_variables
Vregularization_losses
W	keras_api
X__call__
*Y&call_and_return_all_conditional_losses"
_tf_keras_layer
»
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias"
_tf_keras_layer
¼
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator"
_tf_keras_layer
»
i	variables
jtrainable_variables
kregularization_losses
l	keras_api
m__call__
*n&call_and_return_all_conditional_losses

okernel
pbias"
_tf_keras_layer
¼
q	variables
rtrainable_variables
sregularization_losses
t	keras_api
u__call__
*v&call_and_return_all_conditional_losses
w_random_generator"
_tf_keras_layer
»
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
|__call__
*}&call_and_return_all_conditional_losses

~kernel
bias"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator"
_tf_keras_layer
Ã
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
kernel
	bias"
_tf_keras_layer

-0
.1
<2
=3
K4
L5
`6
a7
o8
p9
~10
11
12
13"
trackable_list_wrapper

-0
.1
<2
=3
K4
L5
`6
a7
o8
p9
~10
11
12
13"
trackable_list_wrapper
 "
trackable_list_wrapper
Ï
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
á
trace_0
trace_1
trace_2
trace_32î
)__inference_sequential_layer_call_fn_1497
)__inference_sequential_layer_call_fn_2956
)__inference_sequential_layer_call_fn_2991
)__inference_sequential_layer_call_fn_2790¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
Í
trace_0
trace_1
trace_2
trace_32Ú
D__inference_sequential_layer_call_and_return_conditional_losses_3052
D__inference_sequential_layer_call_and_return_conditional_losses_4097
D__inference_sequential_layer_call_and_return_conditional_losses_2838
D__inference_sequential_layer_call_and_return_conditional_losses_2888¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1ztrace_2ztrace_3
ÔBÑ
__inference__wrapped_model_1259random_flip_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
-
serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
  layer_regularization_losses
¡layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
É
¢trace_0
£trace_12
*__inference_random_flip_layer_call_fn_4102
*__inference_random_flip_layer_call_fn_4107³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¢trace_0z£trace_1
ÿ
¤trace_0
¥trace_12Ä
E__inference_random_flip_layer_call_and_return_conditional_losses_4111
E__inference_random_flip_layer_call_and_return_conditional_losses_4170³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¤trace_0z¥trace_1
/
¦
_generator"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
§non_trainable_variables
¨layers
©metrics
 ªlayer_regularization_losses
«layer_metrics
 	variables
!trainable_variables
"regularization_losses
$__call__
*%&call_and_return_all_conditional_losses
&%"call_and_return_conditional_losses"
_generic_user_object
Ñ
¬trace_0
­trace_12
.__inference_random_rotation_layer_call_fn_4175
.__inference_random_rotation_layer_call_fn_4182³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¬trace_0z­trace_1

®trace_0
¯trace_12Ì
I__inference_random_rotation_layer_call_and_return_conditional_losses_4186
I__inference_random_rotation_layer_call_and_return_conditional_losses_5098³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z®trace_0z¯trace_1
/
°
_generator"
_generic_user_object
.
-0
.1"
trackable_list_wrapper
.
-0
.1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
±non_trainable_variables
²layers
³metrics
 ´layer_regularization_losses
µlayer_metrics
'	variables
(trainable_variables
)regularization_losses
+__call__
*,&call_and_return_all_conditional_losses
&,"call_and_return_conditional_losses"
_generic_user_object
ë
¶trace_02Ì
%__inference_conv2d_layer_call_fn_5107¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¶trace_0

·trace_02ç
@__inference_conv2d_layer_call_and_return_conditional_losses_5118¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z·trace_0
':% 2conv2d/kernel
: 2conv2d/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
¸non_trainable_variables
¹layers
ºmetrics
 »layer_regularization_losses
¼layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
ò
½trace_02Ó
,__inference_max_pooling2d_layer_call_fn_5123¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z½trace_0

¾trace_02î
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5128¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z¾trace_0
.
<0
=1"
trackable_list_wrapper
.
<0
=1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
¿non_trainable_variables
Àlayers
Ámetrics
 Âlayer_regularization_losses
Ãlayer_metrics
6	variables
7trainable_variables
8regularization_losses
:__call__
*;&call_and_return_all_conditional_losses
&;"call_and_return_conditional_losses"
_generic_user_object
í
Ätrace_02Î
'__inference_conv2d_1_layer_call_fn_5137¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÄtrace_0

Åtrace_02é
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5148¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÅtrace_0
):'  2conv2d_1/kernel
: 2conv2d_1/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ænon_trainable_variables
Çlayers
Èmetrics
 Élayer_regularization_losses
Êlayer_metrics
?	variables
@trainable_variables
Aregularization_losses
C__call__
*D&call_and_return_all_conditional_losses
&D"call_and_return_conditional_losses"
_generic_user_object
ô
Ëtrace_02Õ
.__inference_max_pooling2d_1_layer_call_fn_5153¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zËtrace_0

Ìtrace_02ð
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5158¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÌtrace_0
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ínon_trainable_variables
Îlayers
Ïmetrics
 Ðlayer_regularization_losses
Ñlayer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
í
Òtrace_02Î
'__inference_conv2d_2_layer_call_fn_5167¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÒtrace_0

Ótrace_02é
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5178¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÓtrace_0
):'  2conv2d_2/kernel
: 2conv2d_2/bias
´2±®
£²
FullArgSpec'
args
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ônon_trainable_variables
Õlayers
Ömetrics
 ×layer_regularization_losses
Ølayer_metrics
N	variables
Otrainable_variables
Pregularization_losses
R__call__
*S&call_and_return_all_conditional_losses
&S"call_and_return_conditional_losses"
_generic_user_object
ô
Ùtrace_02Õ
.__inference_max_pooling2d_2_layer_call_fn_5183¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÙtrace_0

Útrace_02ð
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5188¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zÚtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
Ûnon_trainable_variables
Ülayers
Ýmetrics
 Þlayer_regularization_losses
ßlayer_metrics
T	variables
Utrainable_variables
Vregularization_losses
X__call__
*Y&call_and_return_all_conditional_losses
&Y"call_and_return_conditional_losses"
_generic_user_object
ì
àtrace_02Í
&__inference_flatten_layer_call_fn_5193¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zàtrace_0

átrace_02è
A__inference_flatten_layer_call_and_return_conditional_losses_5199¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zátrace_0
.
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ânon_trainable_variables
ãlayers
ämetrics
 ålayer_regularization_losses
ælayer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
ê
çtrace_02Ë
$__inference_dense_layer_call_fn_5208¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zçtrace_0

ètrace_02æ
?__inference_dense_layer_call_and_return_conditional_losses_5219¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zètrace_0
!:©2dense/kernel
:2
dense/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
énon_trainable_variables
êlayers
ëmetrics
 ìlayer_regularization_losses
ílayer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
Á
îtrace_0
ïtrace_12
&__inference_dropout_layer_call_fn_5224
&__inference_dropout_layer_call_fn_5229³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zîtrace_0zïtrace_1
÷
ðtrace_0
ñtrace_12¼
A__inference_dropout_layer_call_and_return_conditional_losses_5234
A__inference_dropout_layer_call_and_return_conditional_losses_5246³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zðtrace_0zñtrace_1
"
_generic_user_object
.
o0
p1"
trackable_list_wrapper
.
o0
p1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
ònon_trainable_variables
ólayers
ômetrics
 õlayer_regularization_losses
ölayer_metrics
i	variables
jtrainable_variables
kregularization_losses
m__call__
*n&call_and_return_all_conditional_losses
&n"call_and_return_conditional_losses"
_generic_user_object
ì
÷trace_02Í
&__inference_dense_1_layer_call_fn_5255¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 z÷trace_0

øtrace_02è
A__inference_dense_1_layer_call_and_return_conditional_losses_5266¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zøtrace_0
": 
2dense_1/kernel
:2dense_1/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
²
ùnon_trainable_variables
úlayers
ûmetrics
 ülayer_regularization_losses
ýlayer_metrics
q	variables
rtrainable_variables
sregularization_losses
u__call__
*v&call_and_return_all_conditional_losses
&v"call_and_return_conditional_losses"
_generic_user_object
Å
þtrace_0
ÿtrace_12
(__inference_dropout_1_layer_call_fn_5271
(__inference_dropout_1_layer_call_fn_5276³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 zþtrace_0zÿtrace_1
û
trace_0
trace_12À
C__inference_dropout_1_layer_call_and_return_conditional_losses_5281
C__inference_dropout_1_layer_call_and_return_conditional_losses_5293³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
.
~0
1"
trackable_list_wrapper
.
~0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
x	variables
ytrainable_variables
zregularization_losses
|__call__
*}&call_and_return_all_conditional_losses
&}"call_and_return_conditional_losses"
_generic_user_object
ì
trace_02Í
&__inference_dense_2_layer_call_fn_5302¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02è
A__inference_dense_2_layer_call_and_return_conditional_losses_5313¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
": 
2dense_2/kernel
:2dense_2/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Å
trace_0
trace_12
(__inference_dropout_2_layer_call_fn_5318
(__inference_dropout_2_layer_call_fn_5323³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
û
trace_0
trace_12À
C__inference_dropout_2_layer_call_and_return_conditional_losses_5328
C__inference_dropout_2_layer_call_and_return_conditional_losses_5340³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0ztrace_1
"
_generic_user_object
0
0
1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
ì
trace_02Í
&__inference_dense_3_layer_call_fn_5349¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0

trace_02è
A__inference_dense_3_layer_call_and_return_conditional_losses_5360¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 ztrace_0
!:	2dense_3/kernel
:2dense_3/bias
 "
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
)__inference_sequential_layer_call_fn_1497random_flip_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
)__inference_sequential_layer_call_fn_2956inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
úB÷
)__inference_sequential_layer_call_fn_2991inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
)__inference_sequential_layer_call_fn_2790random_flip_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_3052inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
D__inference_sequential_layer_call_and_return_conditional_losses_4097inputs"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
D__inference_sequential_layer_call_and_return_conditional_losses_2838random_flip_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 B
D__inference_sequential_layer_call_and_return_conditional_losses_2888random_flip_input"¿
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÓBÐ
"__inference_signature_wrapper_2923random_flip_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ïBì
*__inference_random_flip_layer_call_fn_4102inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ïBì
*__inference_random_flip_layer_call_fn_4107inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_random_flip_layer_call_and_return_conditional_losses_4111inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
E__inference_random_flip_layer_call_and_return_conditional_losses_4170inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
/

_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
óBð
.__inference_random_rotation_layer_call_fn_4175inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
óBð
.__inference_random_rotation_layer_call_fn_4182inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_random_rotation_layer_call_and_return_conditional_losses_4186inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
I__inference_random_rotation_layer_call_and_return_conditional_losses_5098inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults¢
p

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
/

_state_var"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÙBÖ
%__inference_conv2d_layer_call_fn_5107inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ôBñ
@__inference_conv2d_layer_call_and_return_conditional_losses_5118inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
àBÝ
,__inference_max_pooling2d_layer_call_fn_5123inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ûBø
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5128inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_conv2d_1_layer_call_fn_5137inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5148inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
âBß
.__inference_max_pooling2d_1_layer_call_fn_5153inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5158inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÛBØ
'__inference_conv2d_2_layer_call_fn_5167inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
öBó
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5178inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
âBß
.__inference_max_pooling2d_2_layer_call_fn_5183inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ýBú
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5188inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_flatten_layer_call_fn_5193inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_flatten_layer_call_and_return_conditional_losses_5199inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ØBÕ
$__inference_dense_layer_call_fn_5208inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
óBð
?__inference_dense_layer_call_and_return_conditional_losses_5219inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ëBè
&__inference_dropout_layer_call_fn_5224inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ëBè
&__inference_dropout_layer_call_fn_5229inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
A__inference_dropout_layer_call_and_return_conditional_losses_5234inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
A__inference_dropout_layer_call_and_return_conditional_losses_5246inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_1_layer_call_fn_5255inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_dense_1_layer_call_and_return_conditional_losses_5266inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
íBê
(__inference_dropout_1_layer_call_fn_5271inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
íBê
(__inference_dropout_1_layer_call_fn_5276inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_dropout_1_layer_call_and_return_conditional_losses_5281inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_dropout_1_layer_call_and_return_conditional_losses_5293inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_2_layer_call_fn_5302inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_dense_2_layer_call_and_return_conditional_losses_5313inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
íBê
(__inference_dropout_2_layer_call_fn_5318inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
íBê
(__inference_dropout_2_layer_call_fn_5323inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_dropout_2_layer_call_and_return_conditional_losses_5328inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
B
C__inference_dropout_2_layer_call_and_return_conditional_losses_5340inputs"³
ª²¦
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ÚB×
&__inference_dense_3_layer_call_fn_5349inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
õBò
A__inference_dense_3_layer_call_and_return_conditional_losses_5360inputs"¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
 :	2random_flip/StateVar
$:"	2random_rotation/StateVar¯
__inference__wrapped_model_1259-.<=KL`aop~D¢A
:¢7
52
random_flip_inputÿÿÿÿÿÿÿÿÿàà
ª "1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ²
B__inference_conv2d_1_layer_call_and_return_conditional_losses_5148l<=7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿoo 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿmm 
 
'__inference_conv2d_1_layer_call_fn_5137_<=7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿoo 
ª " ÿÿÿÿÿÿÿÿÿmm ²
B__inference_conv2d_2_layer_call_and_return_conditional_losses_5178lKL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ44 
 
'__inference_conv2d_2_layer_call_fn_5167_KL7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ66 
ª " ÿÿÿÿÿÿÿÿÿ44 ´
@__inference_conv2d_layer_call_and_return_conditional_losses_5118p-.9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿÞÞ 
 
%__inference_conv2d_layer_call_fn_5107c-.9¢6
/¢,
*'
inputsÿÿÿÿÿÿÿÿÿàà
ª ""ÿÿÿÿÿÿÿÿÿÞÞ £
A__inference_dense_1_layer_call_and_return_conditional_losses_5266^op0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_dense_1_layer_call_fn_5255Qop0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_dense_2_layer_call_and_return_conditional_losses_5313^~0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_dense_2_layer_call_fn_5302Q~0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
A__inference_dense_3_layer_call_and_return_conditional_losses_5360_0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 |
&__inference_dense_3_layer_call_fn_5349R0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¢
?__inference_dense_layer_call_and_return_conditional_losses_5219_`a1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ©
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 z
$__inference_dense_layer_call_fn_5208R`a1¢.
'¢$
"
inputsÿÿÿÿÿÿÿÿÿ©
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dropout_1_layer_call_and_return_conditional_losses_5281^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¥
C__inference_dropout_1_layer_call_and_return_conditional_losses_5293^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dropout_1_layer_call_fn_5271Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ}
(__inference_dropout_1_layer_call_fn_5276Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ¥
C__inference_dropout_2_layer_call_and_return_conditional_losses_5328^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¥
C__inference_dropout_2_layer_call_and_return_conditional_losses_5340^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 }
(__inference_dropout_2_layer_call_fn_5318Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ}
(__inference_dropout_2_layer_call_fn_5323Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ£
A__inference_dropout_layer_call_and_return_conditional_losses_5234^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 £
A__inference_dropout_layer_call_and_return_conditional_losses_5246^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 {
&__inference_dropout_layer_call_fn_5224Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ{
&__inference_dropout_layer_call_fn_5229Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ§
A__inference_flatten_layer_call_and_return_conditional_losses_5199b7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "'¢$

0ÿÿÿÿÿÿÿÿÿ©
 
&__inference_flatten_layer_call_fn_5193U7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ 
ª "ÿÿÿÿÿÿÿÿÿ©ì
I__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_5158R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_max_pooling2d_1_layer_call_fn_5153R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿì
I__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_5188R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
.__inference_max_pooling2d_2_layer_call_fn_5183R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿê
G__inference_max_pooling2d_layer_call_and_return_conditional_losses_5128R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Â
,__inference_max_pooling2d_layer_call_fn_5123R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ¹
E__inference_random_flip_layer_call_and_return_conditional_losses_4111p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà
 ¹
E__inference_random_flip_layer_call_and_return_conditional_losses_4170p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà
 
*__inference_random_flip_layer_call_fn_4102c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 
ª ""ÿÿÿÿÿÿÿÿÿàà
*__inference_random_flip_layer_call_fn_4107c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p
ª ""ÿÿÿÿÿÿÿÿÿàà½
I__inference_random_rotation_layer_call_and_return_conditional_losses_4186p=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà
 Á
I__inference_random_rotation_layer_call_and_return_conditional_losses_5098t=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p
ª "/¢,
%"
0ÿÿÿÿÿÿÿÿÿàà
 
.__inference_random_rotation_layer_call_fn_4175c=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 
ª ""ÿÿÿÿÿÿÿÿÿàà
.__inference_random_rotation_layer_call_fn_4182g=¢:
3¢0
*'
inputsÿÿÿÿÿÿÿÿÿàà
p
ª ""ÿÿÿÿÿÿÿÿÿààÐ
D__inference_sequential_layer_call_and_return_conditional_losses_2838-.<=KL`aop~L¢I
B¢?
52
random_flip_inputÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ò
D__inference_sequential_layer_call_and_return_conditional_losses_2888-.<=KL`aop~L¢I
B¢?
52
random_flip_inputÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Ä
D__inference_sequential_layer_call_and_return_conditional_losses_3052|-.<=KL`aop~A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Æ
D__inference_sequential_layer_call_and_return_conditional_losses_4097~-.<=KL`aop~A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 §
)__inference_sequential_layer_call_fn_1497z-.<=KL`aop~L¢I
B¢?
52
random_flip_inputÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿ©
)__inference_sequential_layer_call_fn_2790|-.<=KL`aop~L¢I
B¢?
52
random_flip_inputÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_sequential_layer_call_fn_2956o-.<=KL`aop~A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p 

 
ª "ÿÿÿÿÿÿÿÿÿ
)__inference_sequential_layer_call_fn_2991q-.<=KL`aop~A¢>
7¢4
*'
inputsÿÿÿÿÿÿÿÿÿàà
p

 
ª "ÿÿÿÿÿÿÿÿÿÇ
"__inference_signature_wrapper_2923 -.<=KL`aop~Y¢V
¢ 
OªL
J
random_flip_input52
random_flip_inputÿÿÿÿÿÿÿÿÿàà"1ª.
,
dense_3!
dense_3ÿÿÿÿÿÿÿÿÿ