Ťž
"Đ!
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
~
BiasAddGrad
out_backprop"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
B
GreaterEqual
x"T
y"T
z
"
Ttype:
2	
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
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
.
Neg
x"T
y"T"
Ttype:

2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
6
Pow
x"T
y"T
z"T"
Ttype:

2	
L
PreventGradient

input"T
output"T"	
Ttype"
messagestring 
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
V
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
ŕ
ResourceApplyAdam
var
m
v
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T" 
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized

&
	ZerosLike
x"T
y"T"	
Ttype"train*1.15.0-dev201906262v1.12.1-4946-ge02e33d9408ôű
s
dense_14_inputPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0dense_14/kernel/Initializer/random_uniform/shapeConst*
valueB"     *"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
:

.dense_14/kernel/Initializer/random_uniform/minConst*
valueB
 *HY˝*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 

.dense_14/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY=*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
×
8dense_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_14/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:

Ú
.dense_14/kernel/Initializer/random_uniform/subSub.dense_14/kernel/Initializer/random_uniform/max.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
î
.dense_14/kernel/Initializer/random_uniform/mulMul8dense_14/kernel/Initializer/random_uniform/RandomUniform.dense_14/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

ŕ
*dense_14/kernel/Initializer/random_uniformAdd.dense_14/kernel/Initializer/random_uniform/mul.dense_14/kernel/Initializer/random_uniform/min* 
_output_shapes
:
*
T0*"
_class
loc:@dense_14/kernel
 
dense_14/kernelVarHandleOp*
shape:
* 
shared_namedense_14/kernel*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
o
0dense_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/kernel*
_output_shapes
: 

dense_14/kernel/AssignAssignVariableOpdense_14/kernel*dense_14/kernel/Initializer/random_uniform*"
_class
loc:@dense_14/kernel*
dtype0

#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:


dense_14/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:

dense_14/biasVarHandleOp*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_14/bias* 
_class
loc:@dense_14/bias
k
.dense_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 

dense_14/bias/AssignAssignVariableOpdense_14/biasdense_14/bias/Initializer/zeros* 
_class
loc:@dense_14/bias*
dtype0

!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:
p
dense_14/MatMul/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:

|
dense_14/MatMulMatMuldense_14_inputdense_14/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
dense_14/BiasAdd/ReadVariableOpReadVariableOpdense_14/bias*
dtype0*
_output_shapes	
:

dense_14/BiasAddBiasAdddense_14/MatMuldense_14/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_14/ReluReludense_14/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
[
dropout_7/dropout/rateConst*
valueB
 *ÍĚL>*
dtype0*
_output_shapes
: 
T
dropout_7/dropout/ShapeShapedense_14/Relu*
T0*
_output_shapes
:
i
$dropout_7/dropout/random_uniform/minConst*
valueB
 *    *
dtype0*
_output_shapes
: 
i
$dropout_7/dropout/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *  ?

.dropout_7/dropout/random_uniform/RandomUniformRandomUniformdropout_7/dropout/Shape*
T0*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

$dropout_7/dropout/random_uniform/subSub$dropout_7/dropout/random_uniform/max$dropout_7/dropout/random_uniform/min*
T0*
_output_shapes
: 
´
$dropout_7/dropout/random_uniform/mulMul.dropout_7/dropout/random_uniform/RandomUniform$dropout_7/dropout/random_uniform/sub*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ś
 dropout_7/dropout/random_uniformAdd$dropout_7/dropout/random_uniform/mul$dropout_7/dropout/random_uniform/min*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
\
dropout_7/dropout/sub/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
n
dropout_7/dropout/subSubdropout_7/dropout/sub/xdropout_7/dropout/rate*
T0*
_output_shapes
: 
`
dropout_7/dropout/truediv/xConst*
dtype0*
_output_shapes
: *
valueB
 *  ?
y
dropout_7/dropout/truedivRealDivdropout_7/dropout/truediv/xdropout_7/dropout/sub*
T0*
_output_shapes
: 

dropout_7/dropout/GreaterEqualGreaterEqual dropout_7/dropout/random_uniformdropout_7/dropout/rate*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
dropout_7/dropout/mulMuldense_14/Reludropout_7/dropout/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

dropout_7/dropout/CastCastdropout_7/dropout/GreaterEqual*

SrcT0
*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0

dropout_7/dropout/mul_1Muldropout_7/dropout/muldropout_7/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_15/kernel/Initializer/random_uniform/shapeConst*
valueB"   
   *"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:

.dense_15/kernel/Initializer/random_uniform/minConst*
valueB
 *Ű˝*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 

.dense_15/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *Ű=*"
_class
loc:@dense_15/kernel
Ö
8dense_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_15/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	

Ú
.dense_15/kernel/Initializer/random_uniform/subSub.dense_15/kernel/Initializer/random_uniform/max.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
í
.dense_15/kernel/Initializer/random_uniform/mulMul8dense_15/kernel/Initializer/random_uniform/RandomUniform.dense_15/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ß
*dense_15/kernel/Initializer/random_uniformAdd.dense_15/kernel/Initializer/random_uniform/mul.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	


dense_15/kernelVarHandleOp*
shape:	
* 
shared_namedense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 
o
0dense_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/kernel*
_output_shapes
: 

dense_15/kernel/AssignAssignVariableOpdense_15/kernel*dense_15/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@dense_15/kernel

#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*
dtype0*
_output_shapes
:	
*"
_class
loc:@dense_15/kernel

dense_15/bias/Initializer/zerosConst*
valueB
*    * 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:


dense_15/biasVarHandleOp*
shape:
*
shared_namedense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
: 
k
.dense_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/bias*
_output_shapes
: 

dense_15/bias/AssignAssignVariableOpdense_15/biasdense_15/bias/Initializer/zeros*
dtype0* 
_class
loc:@dense_15/bias

!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:

o
dense_15/MatMul/ReadVariableOpReadVariableOpdense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/MatMulMatMuldropout_7/dropout/mul_1dense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

i
dense_15/BiasAdd/ReadVariableOpReadVariableOpdense_15/bias*
dtype0*
_output_shapes
:


dense_15/BiasAddBiasAdddense_15/MatMuldense_15/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_
dense_15/SoftmaxSoftmaxdense_15/BiasAdd*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0

dense_15_targetPlaceholder*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
_class

loc:@total*
dtype0*
_output_shapes
: *
shape: *
shared_nametotal
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: *
_class

loc:@total
v
count/Initializer/zerosConst*
dtype0*
_output_shapes
: *
valueB
 *    *
_class

loc:@count
x
countVarHandleOp*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: *
shared_namecount
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
}
metrics/acc/SqueezeSqueezedense_15_target*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
z
metrics/acc/ArgMaxArgMaxdense_15/Softmaxmetrics/acc/ArgMax/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/CastCastmetrics/acc/ArgMax*

SrcT0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
metrics/acc/Cast_1Castmetrics/acc/Equal*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0

[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
^
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
M
metrics/acc/SizeSizemetrics/acc/Cast_1*
_output_shapes
: *
T0
\
metrics/acc/Cast_2Castmetrics/acc/Size*

SrcT0*
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
_output_shapes
: *
T0
z
loss/dense_15_loss/CastCastdense_15_target*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0	*

SrcT0
X
loss/dense_15_loss/ShapeShapedense_15/BiasAdd*
T0*
_output_shapes
:
s
 loss/dense_15_loss/Reshape/shapeConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

loss/dense_15_loss/ReshapeReshapeloss/dense_15_loss/Cast loss/dense_15_loss/Reshape/shape*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
&loss/dense_15_loss/strided_slice/stackConst*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:
r
(loss/dense_15_loss/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
r
(loss/dense_15_loss/strided_slice/stack_2Const*
dtype0*
_output_shapes
:*
valueB:

 loss/dense_15_loss/strided_sliceStridedSliceloss/dense_15_loss/Shape&loss/dense_15_loss/strided_slice/stack(loss/dense_15_loss/strided_slice/stack_1(loss/dense_15_loss/strided_slice/stack_2*
shrink_axis_mask*
T0*
Index0*
_output_shapes
: 
o
$loss/dense_15_loss/Reshape_1/shape/0Const*
dtype0*
_output_shapes
: *
valueB :
˙˙˙˙˙˙˙˙˙
 
"loss/dense_15_loss/Reshape_1/shapePack$loss/dense_15_loss/Reshape_1/shape/0 loss/dense_15_loss/strided_slice*
T0*
N*
_output_shapes
:

loss/dense_15_loss/Reshape_1Reshapedense_15/BiasAdd"loss/dense_15_loss/Reshape_1/shape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

<loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_15_loss/Reshape*
_output_shapes
:*
T0	

Zloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_15_loss/Reshape_1loss/dense_15_loss/Reshape*
T0*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
l
'loss/dense_15_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Uloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
dtype0*
_output_shapes
: *
valueB 

Tloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
dtype0*
_output_shapes
: *
value	B : 
Ţ
Tloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Sloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
value	B :*
dtype0*
_output_shapes
: 
k
closs/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
˛
Bloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsd^loss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
T0*
_output_shapes
:
í
Bloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ConstConstd^loss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ú
<loss/dense_15_loss/weighted_loss/broadcast_weights/ones_likeFillBloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ShapeBloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/Const*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Î
2loss/dense_15_loss/weighted_loss/broadcast_weightsMul'loss/dense_15_loss/weighted_loss/Cast/x<loss/dense_15_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
$loss/dense_15_loss/weighted_loss/MulMulZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2loss/dense_15_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
loss/dense_15_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
loss/dense_15_loss/SumSum$loss/dense_15_loss/weighted_loss/Mulloss/dense_15_loss/Const*
T0*
_output_shapes
: 
n
loss/dense_15_loss/num_elementsSize$loss/dense_15_loss/weighted_loss/Mul*
_output_shapes
: *
T0
}
$loss/dense_15_loss/num_elements/CastCastloss/dense_15_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
]
loss/dense_15_loss/Const_1Const*
dtype0*
_output_shapes
: *
valueB 
t
loss/dense_15_loss/Sum_1Sumloss/dense_15_loss/Sumloss/dense_15_loss/Const_1*
T0*
_output_shapes
: 

loss/dense_15_loss/valueDivNoNanloss/dense_15_loss/Sum_1$loss/dense_15_loss/num_elements/Cast*
T0*
_output_shapes
: 
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_15_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
dtype0	*
_output_shapes
: *
value	B	 R *
_class
	loc:@iter
u
iterVarHandleOp*
_class
	loc:@iter*
dtype0	*
_output_shapes
: *
shape: *
shared_nameiter
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
c
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
dtype0	*
_class
	loc:@iter
n
iter/Read/ReadVariableOpReadVariableOpiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
j
'training/Adam/gradients/gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
p
+training/Adam/gradients/gradients/grad_ys_0Const*
valueB
 *  ?*
dtype0*
_output_shapes
: 
Ľ
&training/Adam/gradients/gradients/FillFill'training/Adam/gradients/gradients/Shape+training/Adam/gradients/gradients/grad_ys_0*
T0*
_output_shapes
: 

3training/Adam/gradients/gradients/loss/mul_grad/MulMul&training/Adam/gradients/gradients/Fillloss/dense_15_loss/value*
T0*
_output_shapes
: 

5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Mul&training/Adam/gradients/gradients/Fill
loss/mul/x*
_output_shapes
: *
T0

Etraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 

Gtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
˛
Utraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/BroadcastGradientArgsBroadcastGradientArgsEtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/ShapeGtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ô
Jtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nanDivNoNan5training/Adam/gradients/gradients/loss/mul_grad/Mul_1$loss/dense_15_loss/num_elements/Cast*
T0*
_output_shapes
: 

Ctraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/SumSumJtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nanUtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/BroadcastGradientArgs*
T0*
_output_shapes
: 
˙
Gtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/ReshapeReshapeCtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/SumEtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Shape*
T0*
_output_shapes
: 

Ctraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/NegNegloss/dense_15_loss/Sum_1*
T0*
_output_shapes
: 
ä
Ltraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nan_1DivNoNanCtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Neg$loss/dense_15_loss/num_elements/Cast*
_output_shapes
: *
T0
í
Ltraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nan_2DivNoNanLtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nan_1$loss/dense_15_loss/num_elements/Cast*
T0*
_output_shapes
: 
đ
Ctraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/mulMul5training/Adam/gradients/gradients/loss/mul_grad/Mul_1Ltraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/div_no_nan_2*
T0*
_output_shapes
: 

Etraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Sum_1SumCtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/mulWtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
: 

Itraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Reshape_1ReshapeEtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Sum_1Gtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/Shape_1*
_output_shapes
: *
T0

Mtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/Reshape/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Gtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/ReshapeReshapeGtraining/Adam/gradients/gradients/loss/dense_15_loss/value_grad/ReshapeMtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/Reshape/shape*
T0*
_output_shapes
: 

Etraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/ConstConst*
valueB *
dtype0*
_output_shapes
: 
ý
Dtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/TileTileGtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/ReshapeEtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/Const*
_output_shapes
: *
T0

Ktraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:

Etraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/ReshapeReshapeDtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_1_grad/TileKtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/Reshape/shape*
T0*
_output_shapes
:

Ctraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/ShapeShape$loss/dense_15_loss/weighted_loss/Mul*
T0*
_output_shapes
:

Btraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/TileTileEtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/ReshapeCtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ű
Qtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/ShapeShapeZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:
ľ
Straining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Shape_1Shape2loss/dense_15_loss/weighted_loss/broadcast_weights*
T0*
_output_shapes
:
Ö
atraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsQtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/ShapeStraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
ü
Otraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/MulMulBtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/Tile2loss/dense_15_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
­
Otraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/SumSumOtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Mulatraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/BroadcastGradientArgs*
T0*
_output_shapes
:
°
Straining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/ReshapeReshapeOtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/SumQtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Shape*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ś
Qtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Mul_1MulZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsBtraining/Adam/gradients/gradients/loss/dense_15_loss/Sum_grad/Tile*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ł
Qtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Sum_1SumQtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Mul_1ctraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
ś
Utraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Reshape_1ReshapeQtraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Sum_1Straining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Shape_1*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ň
,training/Adam/gradients/gradients/zeros_like	ZerosLike\loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
ő
training/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradientPreventGradient\loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits:1*´
message¨ĽCurrently there is no way to take the second derivative of sparse_softmax_cross_entropy_with_logits due to the fused implementation's interaction with tf.gradients()*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
Ü
training/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
ľ
training/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDimsStraining/Adam/gradients/gradients/loss/dense_15_loss/weighted_loss/Mul_grad/Reshapetraining/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
ë
training/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulMultraining/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/ExpandDimstraining/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/PreventGradient*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0

Itraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/ShapeShapedense_15/BiasAdd*
T0*
_output_shapes
:
Ű
Ktraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/ReshapeReshapetraining/Adam/gradients/gradients/loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits_grad/mulItraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/Shape*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

Ä
Ctraining/Adam/gradients/gradients/dense_15/BiasAdd_grad/BiasAddGradBiasAddGradKtraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes
:

ú
=training/Adam/gradients/gradients/dense_15/MatMul_grad/MatMulMatMulKtraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/Reshapedense_15/MatMul/ReadVariableOp*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ě
?training/Adam/gradients/gradients/dense_15/MatMul_grad/MatMul_1MatMuldropout_7/dropout/mul_1Ktraining/Adam/gradients/gradients/loss/dense_15_loss/Reshape_1_grad/Reshape*
T0*
_output_shapes
:	
*
transpose_a(

Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/ShapeShapedropout_7/dropout/mul*
T0*
_output_shapes
:

Ftraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Shape_1Shapedropout_7/dropout/Cast*
T0*
_output_shapes
:
Ż
Ttraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/ShapeFtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ó
Btraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/MulMul=training/Adam/gradients/gradients/dense_15/MatMul_grad/MatMuldropout_7/dropout/Cast*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/SumSumBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/MulTtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

Ftraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/ReshapeReshapeBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/SumDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Shape*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ô
Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Mul_1Muldropout_7/dropout/mul=training/Adam/gradients/gradients/dense_15/MatMul_grad/MatMul*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0

Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Sum_1SumDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Mul_1Vtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:

Htraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Reshape_1ReshapeDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Sum_1Ftraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Shape_1*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/ShapeShapedense_14/Relu*
T0*
_output_shapes
:

Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Shape_1Const*
dtype0*
_output_shapes
: *
valueB 
Š
Rtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgsBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/ShapeDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Shape_1*2
_output_shapes 
:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Ý
@training/Adam/gradients/gradients/dropout_7/dropout/mul_grad/MulMulFtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Reshapedropout_7/dropout/truediv*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

@training/Adam/gradients/gradients/dropout_7/dropout/mul_grad/SumSum@training/Adam/gradients/gradients/dropout_7/dropout/mul_grad/MulRtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
T0

Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/ReshapeReshape@training/Adam/gradients/gradients/dropout_7/dropout/mul_grad/SumBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Shape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ó
Btraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Mul_1Muldense_14/ReluFtraining/Adam/gradients/gradients/dropout_7/dropout/mul_1_grad/Reshape*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙

Btraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Sum_1SumBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Mul_1Ttraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/BroadcastGradientArgs:1*
T0*
_output_shapes
:
ü
Ftraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Reshape_1ReshapeBtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Sum_1Dtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Shape_1*
T0*
_output_shapes
: 
Ń
=training/Adam/gradients/gradients/dense_14/Relu_grad/ReluGradReluGradDtraining/Adam/gradients/gradients/dropout_7/dropout/mul_grad/Reshapedense_14/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
ˇ
Ctraining/Adam/gradients/gradients/dense_14/BiasAdd_grad/BiasAddGradBiasAddGrad=training/Adam/gradients/gradients/dense_14/Relu_grad/ReluGrad*
T0*
_output_shapes	
:
ě
=training/Adam/gradients/gradients/dense_14/MatMul_grad/MatMulMatMul=training/Adam/gradients/gradients/dense_14/Relu_grad/ReluGraddense_14/MatMul/ReadVariableOp*
transpose_b(*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ö
?training/Adam/gradients/gradients/dense_14/MatMul_grad/MatMul_1MatMuldense_14_input=training/Adam/gradients/gradients/dense_14/Relu_grad/ReluGrad*
T0* 
_output_shapes
:
*
transpose_a(

.training/Adam/beta_1/Initializer/initial_valueConst*
dtype0*
_output_shapes
: *
valueB
 *fff?*'
_class
loc:@training/Adam/beta_1
Ľ
training/Adam/beta_1VarHandleOp*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: *
shape: *%
shared_nametraining/Adam/beta_1
y
5training/Adam/beta_1/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
Ť
training/Adam/beta_1/AssignAssignVariableOptraining/Adam/beta_1.training/Adam/beta_1/Initializer/initial_value*'
_class
loc:@training/Adam/beta_1*
dtype0

(training/Adam/beta_1/Read/ReadVariableOpReadVariableOptraining/Adam/beta_1*'
_class
loc:@training/Adam/beta_1*
dtype0*
_output_shapes
: 

.training/Adam/beta_2/Initializer/initial_valueConst*
valueB
 *wž?*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: 
Ľ
training/Adam/beta_2VarHandleOp*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: *
shape: *%
shared_nametraining/Adam/beta_2
y
5training/Adam/beta_2/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
Ť
training/Adam/beta_2/AssignAssignVariableOptraining/Adam/beta_2.training/Adam/beta_2/Initializer/initial_value*'
_class
loc:@training/Adam/beta_2*
dtype0

(training/Adam/beta_2/Read/ReadVariableOpReadVariableOptraining/Adam/beta_2*'
_class
loc:@training/Adam/beta_2*
dtype0*
_output_shapes
: 

-training/Adam/decay/Initializer/initial_valueConst*
valueB
 *    *&
_class
loc:@training/Adam/decay*
dtype0*
_output_shapes
: 
˘
training/Adam/decayVarHandleOp*&
_class
loc:@training/Adam/decay*
dtype0*
_output_shapes
: *
shape: *$
shared_nametraining/Adam/decay
w
4training/Adam/decay/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
§
training/Adam/decay/AssignAssignVariableOptraining/Adam/decay-training/Adam/decay/Initializer/initial_value*&
_class
loc:@training/Adam/decay*
dtype0

'training/Adam/decay/Read/ReadVariableOpReadVariableOptraining/Adam/decay*&
_class
loc:@training/Adam/decay*
dtype0*
_output_shapes
: 
Ş
5training/Adam/learning_rate/Initializer/initial_valueConst*
valueB
 *o:*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: 
ş
training/Adam/learning_rateVarHandleOp*,
shared_nametraining/Adam/learning_rate*.
_class$
" loc:@training/Adam/learning_rate*
dtype0*
_output_shapes
: *
shape: 

<training/Adam/learning_rate/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
Ç
"training/Adam/learning_rate/AssignAssignVariableOptraining/Adam/learning_rate5training/Adam/learning_rate/Initializer/initial_value*
dtype0*.
_class$
" loc:@training/Adam/learning_rate
ł
/training/Adam/learning_rate/Read/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: *.
_class$
" loc:@training/Adam/learning_rate
ś
Atraining/Adam/dense_14/kernel/m/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_14/kernel*
valueB"     *
dtype0*
_output_shapes
:
 
7training/Adam/dense_14/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_14/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_14/kernel/m/Initializer/zerosFillAtraining/Adam/dense_14/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_14/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

Ŕ
training/Adam/dense_14/kernel/mVarHandleOp*
shape:
*0
shared_name!training/Adam/dense_14/kernel/m*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
ł
@training/Adam/dense_14/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_14/kernel/m*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
ż
&training/Adam/dense_14/kernel/m/AssignAssignVariableOptraining/Adam/dense_14/kernel/m1training/Adam/dense_14/kernel/m/Initializer/zeros*"
_class
loc:@dense_14/kernel*
dtype0
š
3training/Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_14/kernel/m*
dtype0* 
_output_shapes
:
*"
_class
loc:@dense_14/kernel
 
/training/Adam/dense_14/bias/m/Initializer/zerosConst*
dtype0*
_output_shapes	
:* 
_class
loc:@dense_14/bias*
valueB*    
ľ
training/Adam/dense_14/bias/mVarHandleOp*
dtype0*
_output_shapes
: *
shape:*.
shared_nametraining/Adam/dense_14/bias/m* 
_class
loc:@dense_14/bias
­
>training/Adam/dense_14/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_14/bias/m* 
_class
loc:@dense_14/bias*
_output_shapes
: 
ˇ
$training/Adam/dense_14/bias/m/AssignAssignVariableOptraining/Adam/dense_14/bias/m/training/Adam/dense_14/bias/m/Initializer/zeros* 
_class
loc:@dense_14/bias*
dtype0
Ž
1training/Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_14/bias/m* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:
ś
Atraining/Adam/dense_15/kernel/m/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@dense_15/kernel*
valueB"   
   
 
7training/Adam/dense_15/kernel/m/Initializer/zeros/ConstConst*"
_class
loc:@dense_15/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_15/kernel/m/Initializer/zerosFillAtraining/Adam/dense_15/kernel/m/Initializer/zeros/shape_as_tensor7training/Adam/dense_15/kernel/m/Initializer/zeros/Const*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ż
training/Adam/dense_15/kernel/mVarHandleOp*
dtype0*
_output_shapes
: *
shape:	
*0
shared_name!training/Adam/dense_15/kernel/m*"
_class
loc:@dense_15/kernel
ł
@training/Adam/dense_15/kernel/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_15/kernel/m*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
ż
&training/Adam/dense_15/kernel/m/AssignAssignVariableOptraining/Adam/dense_15/kernel/m1training/Adam/dense_15/kernel/m/Initializer/zeros*
dtype0*"
_class
loc:@dense_15/kernel
¸
3training/Adam/dense_15/kernel/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_15/kernel/m*
dtype0*
_output_shapes
:	
*"
_class
loc:@dense_15/kernel

/training/Adam/dense_15/bias/m/Initializer/zerosConst* 
_class
loc:@dense_15/bias*
valueB
*    *
dtype0*
_output_shapes
:

´
training/Adam/dense_15/bias/mVarHandleOp*
dtype0*
_output_shapes
: *
shape:
*.
shared_nametraining/Adam/dense_15/bias/m* 
_class
loc:@dense_15/bias
­
>training/Adam/dense_15/bias/m/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_15/bias/m*
_output_shapes
: * 
_class
loc:@dense_15/bias
ˇ
$training/Adam/dense_15/bias/m/AssignAssignVariableOptraining/Adam/dense_15/bias/m/training/Adam/dense_15/bias/m/Initializer/zeros*
dtype0* 
_class
loc:@dense_15/bias
­
1training/Adam/dense_15/bias/m/Read/ReadVariableOpReadVariableOptraining/Adam/dense_15/bias/m* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:

ś
Atraining/Adam/dense_14/kernel/v/Initializer/zeros/shape_as_tensorConst*"
_class
loc:@dense_14/kernel*
valueB"     *
dtype0*
_output_shapes
:
 
7training/Adam/dense_14/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@dense_14/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_14/kernel/v/Initializer/zerosFillAtraining/Adam/dense_14/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_14/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

Ŕ
training/Adam/dense_14/kernel/vVarHandleOp*
shape:
*0
shared_name!training/Adam/dense_14/kernel/v*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
ł
@training/Adam/dense_14/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_14/kernel/v*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
ż
&training/Adam/dense_14/kernel/v/AssignAssignVariableOptraining/Adam/dense_14/kernel/v1training/Adam/dense_14/kernel/v/Initializer/zeros*"
_class
loc:@dense_14/kernel*
dtype0
š
3training/Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_14/kernel/v*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:

 
/training/Adam/dense_14/bias/v/Initializer/zerosConst* 
_class
loc:@dense_14/bias*
valueB*    *
dtype0*
_output_shapes	
:
ľ
training/Adam/dense_14/bias/vVarHandleOp*.
shared_nametraining/Adam/dense_14/bias/v* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes
: *
shape:
­
>training/Adam/dense_14/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_14/bias/v* 
_class
loc:@dense_14/bias*
_output_shapes
: 
ˇ
$training/Adam/dense_14/bias/v/AssignAssignVariableOptraining/Adam/dense_14/bias/v/training/Adam/dense_14/bias/v/Initializer/zeros* 
_class
loc:@dense_14/bias*
dtype0
Ž
1training/Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_14/bias/v*
dtype0*
_output_shapes	
:* 
_class
loc:@dense_14/bias
ś
Atraining/Adam/dense_15/kernel/v/Initializer/zeros/shape_as_tensorConst*
dtype0*
_output_shapes
:*"
_class
loc:@dense_15/kernel*
valueB"   
   
 
7training/Adam/dense_15/kernel/v/Initializer/zeros/ConstConst*"
_class
loc:@dense_15/kernel*
valueB
 *    *
dtype0*
_output_shapes
: 

1training/Adam/dense_15/kernel/v/Initializer/zerosFillAtraining/Adam/dense_15/kernel/v/Initializer/zeros/shape_as_tensor7training/Adam/dense_15/kernel/v/Initializer/zeros/Const*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ż
training/Adam/dense_15/kernel/vVarHandleOp*
dtype0*
_output_shapes
: *
shape:	
*0
shared_name!training/Adam/dense_15/kernel/v*"
_class
loc:@dense_15/kernel
ł
@training/Adam/dense_15/kernel/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_15/kernel/v*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
ż
&training/Adam/dense_15/kernel/v/AssignAssignVariableOptraining/Adam/dense_15/kernel/v1training/Adam/dense_15/kernel/v/Initializer/zeros*"
_class
loc:@dense_15/kernel*
dtype0
¸
3training/Adam/dense_15/kernel/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_15/kernel/v*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	


/training/Adam/dense_15/bias/v/Initializer/zerosConst* 
_class
loc:@dense_15/bias*
valueB
*    *
dtype0*
_output_shapes
:

´
training/Adam/dense_15/bias/vVarHandleOp* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
: *
shape:
*.
shared_nametraining/Adam/dense_15/bias/v
­
>training/Adam/dense_15/bias/v/IsInitialized/VarIsInitializedOpVarIsInitializedOptraining/Adam/dense_15/bias/v* 
_class
loc:@dense_15/bias*
_output_shapes
: 
ˇ
$training/Adam/dense_15/bias/v/AssignAssignVariableOptraining/Adam/dense_15/bias/v/training/Adam/dense_15/bias/v/Initializer/zeros* 
_class
loc:@dense_15/bias*
dtype0
­
1training/Adam/dense_15/bias/v/Read/ReadVariableOpReadVariableOptraining/Adam/dense_15/bias/v* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:

t
/training/Adam/Adam/update_dense_14/kernel/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
8training/Adam/Adam/update_dense_14/kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
q
/training/Adam/Adam/update_dense_14/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ŕ
-training/Adam/Adam/update_dense_14/kernel/addAdd8training/Adam/Adam/update_dense_14/kernel/ReadVariableOp/training/Adam/Adam/update_dense_14/kernel/add/y*
T0	*
_output_shapes
: 

.training/Adam/Adam/update_dense_14/kernel/CastCast-training/Adam/Adam/update_dense_14/kernel/add*

SrcT0	*
_output_shapes
: *

DstT0

<training/Adam/Adam/update_dense_14/kernel/Pow/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
Ă
-training/Adam/Adam/update_dense_14/kernel/PowPow<training/Adam/Adam/update_dense_14/kernel/Pow/ReadVariableOp.training/Adam/Adam/update_dense_14/kernel/Cast*
T0*
_output_shapes
: 

>training/Adam/Adam/update_dense_14/kernel/Pow_1/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
Ç
/training/Adam/Adam/update_dense_14/kernel/Pow_1Pow>training/Adam/Adam/update_dense_14/kernel/Pow_1/ReadVariableOp.training/Adam/Adam/update_dense_14/kernel/Cast*
_output_shapes
: *
T0

Jtraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 

Ltraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

Ltraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
ů
;training/Adam/Adam/update_dense_14/kernel/ResourceApplyAdamResourceApplyAdamdense_14/kerneltraining/Adam/dense_14/kernel/mtraining/Adam/dense_14/kernel/v-training/Adam/Adam/update_dense_14/kernel/Pow/training/Adam/Adam/update_dense_14/kernel/Pow_1Jtraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOpLtraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOp_1Ltraining/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam/ReadVariableOp_2/training/Adam/Adam/update_dense_14/kernel/Const?training/Adam/gradients/gradients/dense_14/MatMul_grad/MatMul_1*
use_locking(*
T0
r
-training/Adam/Adam/update_dense_14/bias/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
s
6training/Adam/Adam/update_dense_14/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
o
-training/Adam/Adam/update_dense_14/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ş
+training/Adam/Adam/update_dense_14/bias/addAdd6training/Adam/Adam/update_dense_14/bias/ReadVariableOp-training/Adam/Adam/update_dense_14/bias/add/y*
T0	*
_output_shapes
: 

,training/Adam/Adam/update_dense_14/bias/CastCast+training/Adam/Adam/update_dense_14/bias/add*
_output_shapes
: *

DstT0*

SrcT0	

:training/Adam/Adam/update_dense_14/bias/Pow/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
˝
+training/Adam/Adam/update_dense_14/bias/PowPow:training/Adam/Adam/update_dense_14/bias/Pow/ReadVariableOp,training/Adam/Adam/update_dense_14/bias/Cast*
T0*
_output_shapes
: 

<training/Adam/Adam/update_dense_14/bias/Pow_1/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
Á
-training/Adam/Adam/update_dense_14/bias/Pow_1Pow<training/Adam/Adam/update_dense_14/bias/Pow_1/ReadVariableOp,training/Adam/Adam/update_dense_14/bias/Cast*
_output_shapes
: *
T0

Htraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 

Jtraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

Jtraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
é
9training/Adam/Adam/update_dense_14/bias/ResourceApplyAdamResourceApplyAdamdense_14/biastraining/Adam/dense_14/bias/mtraining/Adam/dense_14/bias/v+training/Adam/Adam/update_dense_14/bias/Pow-training/Adam/Adam/update_dense_14/bias/Pow_1Htraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_dense_14/bias/ResourceApplyAdam/ReadVariableOp_2-training/Adam/Adam/update_dense_14/bias/ConstCtraining/Adam/gradients/gradients/dense_14/BiasAdd_grad/BiasAddGrad*
T0*
use_locking(
t
/training/Adam/Adam/update_dense_15/kernel/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
u
8training/Adam/Adam/update_dense_15/kernel/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
q
/training/Adam/Adam/update_dense_15/kernel/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
Ŕ
-training/Adam/Adam/update_dense_15/kernel/addAdd8training/Adam/Adam/update_dense_15/kernel/ReadVariableOp/training/Adam/Adam/update_dense_15/kernel/add/y*
_output_shapes
: *
T0	

.training/Adam/Adam/update_dense_15/kernel/CastCast-training/Adam/Adam/update_dense_15/kernel/add*

SrcT0	*
_output_shapes
: *

DstT0

<training/Adam/Adam/update_dense_15/kernel/Pow/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
Ă
-training/Adam/Adam/update_dense_15/kernel/PowPow<training/Adam/Adam/update_dense_15/kernel/Pow/ReadVariableOp.training/Adam/Adam/update_dense_15/kernel/Cast*
T0*
_output_shapes
: 

>training/Adam/Adam/update_dense_15/kernel/Pow_1/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
Ç
/training/Adam/Adam/update_dense_15/kernel/Pow_1Pow>training/Adam/Adam/update_dense_15/kernel/Pow_1/ReadVariableOp.training/Adam/Adam/update_dense_15/kernel/Cast*
_output_shapes
: *
T0

Jtraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 

Ltraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOp_1ReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

Ltraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOp_2ReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
ů
;training/Adam/Adam/update_dense_15/kernel/ResourceApplyAdamResourceApplyAdamdense_15/kerneltraining/Adam/dense_15/kernel/mtraining/Adam/dense_15/kernel/v-training/Adam/Adam/update_dense_15/kernel/Pow/training/Adam/Adam/update_dense_15/kernel/Pow_1Jtraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOpLtraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOp_1Ltraining/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam/ReadVariableOp_2/training/Adam/Adam/update_dense_15/kernel/Const?training/Adam/gradients/gradients/dense_15/MatMul_grad/MatMul_1*
use_locking(*
T0
r
-training/Adam/Adam/update_dense_15/bias/ConstConst*
valueB
 *żÖ3*
dtype0*
_output_shapes
: 
s
6training/Adam/Adam/update_dense_15/bias/ReadVariableOpReadVariableOpiter*
dtype0	*
_output_shapes
: 
o
-training/Adam/Adam/update_dense_15/bias/add/yConst*
value	B	 R*
dtype0	*
_output_shapes
: 
ş
+training/Adam/Adam/update_dense_15/bias/addAdd6training/Adam/Adam/update_dense_15/bias/ReadVariableOp-training/Adam/Adam/update_dense_15/bias/add/y*
T0	*
_output_shapes
: 

,training/Adam/Adam/update_dense_15/bias/CastCast+training/Adam/Adam/update_dense_15/bias/add*

SrcT0	*
_output_shapes
: *

DstT0

:training/Adam/Adam/update_dense_15/bias/Pow/ReadVariableOpReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 
˝
+training/Adam/Adam/update_dense_15/bias/PowPow:training/Adam/Adam/update_dense_15/bias/Pow/ReadVariableOp,training/Adam/Adam/update_dense_15/bias/Cast*
T0*
_output_shapes
: 

<training/Adam/Adam/update_dense_15/bias/Pow_1/ReadVariableOpReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
Á
-training/Adam/Adam/update_dense_15/bias/Pow_1Pow<training/Adam/Adam/update_dense_15/bias/Pow_1/ReadVariableOp,training/Adam/Adam/update_dense_15/bias/Cast*
T0*
_output_shapes
: 

Htraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOpReadVariableOptraining/Adam/learning_rate*
dtype0*
_output_shapes
: 

Jtraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOp_1ReadVariableOptraining/Adam/beta_1*
dtype0*
_output_shapes
: 

Jtraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOp_2ReadVariableOptraining/Adam/beta_2*
dtype0*
_output_shapes
: 
é
9training/Adam/Adam/update_dense_15/bias/ResourceApplyAdamResourceApplyAdamdense_15/biastraining/Adam/dense_15/bias/mtraining/Adam/dense_15/bias/v+training/Adam/Adam/update_dense_15/bias/Pow-training/Adam/Adam/update_dense_15/bias/Pow_1Htraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOpJtraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOp_1Jtraining/Adam/Adam/update_dense_15/bias/ResourceApplyAdam/ReadVariableOp_2-training/Adam/Adam/update_dense_15/bias/ConstCtraining/Adam/gradients/gradients/dense_15/BiasAdd_grad/BiasAddGrad*
use_locking(*
T0
Î
training/Adam/Adam/ConstConst:^training/Adam/Adam/update_dense_14/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_15/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: *
value	B	 R
j
&training/Adam/Adam/AssignAddVariableOpAssignAddVariableOpitertraining/Adam/Adam/Const*
dtype0	
ű
!training/Adam/Adam/ReadVariableOpReadVariableOpiter'^training/Adam/Adam/AssignAddVariableOp:^training/Adam/Adam/update_dense_14/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_14/kernel/ResourceApplyAdam:^training/Adam/Adam/update_dense_15/bias/ResourceApplyAdam<^training/Adam/Adam/update_dense_15/kernel/ResourceApplyAdam*
dtype0	*
_output_shapes
: 
Q
training_1/group_depsNoOp	^loss/mul'^training/Adam/Adam/AssignAddVariableOp
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
Ŕ
RestoreV2/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
B
IdentityIdentity	RestoreV2*
T0*
_output_shapes
:
\
AssignVariableOpAssignVariableOptraining/Adam/dense_14/kernel/mIdentity*
dtype0
Â
RestoreV2_1/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
_output_shapes
:*
T0
`
AssignVariableOp_1AssignVariableOptraining/Adam/dense_14/kernel/v
Identity_1*
dtype0
Ŕ
RestoreV2_2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
^
AssignVariableOp_2AssignVariableOptraining/Adam/dense_14/bias/m
Identity_2*
dtype0
Ŕ
RestoreV2_3/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
^
AssignVariableOp_3AssignVariableOptraining/Adam/dense_14/bias/v
Identity_3*
dtype0
Â
RestoreV2_4/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_4IdentityRestoreV2_4*
T0*
_output_shapes
:
`
AssignVariableOp_4AssignVariableOptraining/Adam/dense_15/kernel/m
Identity_4*
dtype0
Â
RestoreV2_5/tensor_namesConst"/device:CPU:0*g
value^B\BRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_5/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_5	RestoreV2ConstRestoreV2_5/tensor_namesRestoreV2_5/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_5IdentityRestoreV2_5*
T0*
_output_shapes
:
`
AssignVariableOp_5AssignVariableOptraining/Adam/dense_15/kernel/v
Identity_5*
dtype0
Ŕ
RestoreV2_6/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_6/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_6	RestoreV2ConstRestoreV2_6/tensor_namesRestoreV2_6/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_6IdentityRestoreV2_6*
T0*
_output_shapes
:
^
AssignVariableOp_6AssignVariableOptraining/Adam/dense_15/bias/m
Identity_6*
dtype0
Ŕ
RestoreV2_7/tensor_namesConst"/device:CPU:0*e
value\BZBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_7/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_7	RestoreV2ConstRestoreV2_7/tensor_namesRestoreV2_7/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_7IdentityRestoreV2_7*
T0*
_output_shapes
:
^
AssignVariableOp_7AssignVariableOptraining/Adam/dense_15/bias/v
Identity_7*
dtype0
Ś
RestoreV2_8/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_8/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_8	RestoreV2ConstRestoreV2_8/tensor_namesRestoreV2_8/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_8IdentityRestoreV2_8*
T0*
_output_shapes
:
P
AssignVariableOp_8AssignVariableOpdense_14/kernel
Identity_8*
dtype0
¤
RestoreV2_9/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_9/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_9	RestoreV2ConstRestoreV2_9/tensor_namesRestoreV2_9/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_9IdentityRestoreV2_9*
_output_shapes
:*
T0
N
AssignVariableOp_9AssignVariableOpdense_14/bias
Identity_9*
dtype0
§
RestoreV2_10/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_10/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_10	RestoreV2ConstRestoreV2_10/tensor_namesRestoreV2_10/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_10IdentityRestoreV2_10*
_output_shapes
:*
T0
R
AssignVariableOp_10AssignVariableOpdense_15/kernelIdentity_10*
dtype0
Ľ
RestoreV2_11/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_11/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_11	RestoreV2ConstRestoreV2_11/tensor_namesRestoreV2_11/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_11IdentityRestoreV2_11*
T0*
_output_shapes
:
P
AssignVariableOp_11AssignVariableOpdense_15/biasIdentity_11*
dtype0

RestoreV2_12/tensor_namesConst"/device:CPU:0*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_12/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_12	RestoreV2ConstRestoreV2_12/tensor_namesRestoreV2_12/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
H
Identity_12IdentityRestoreV2_12*
T0	*
_output_shapes
:
G
AssignVariableOp_12AssignVariableOpiterIdentity_12*
dtype0	

RestoreV2_13/tensor_namesConst"/device:CPU:0*@
value7B5B+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_13/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_13	RestoreV2ConstRestoreV2_13/tensor_namesRestoreV2_13/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_13IdentityRestoreV2_13*
T0*
_output_shapes
:
W
AssignVariableOp_13AssignVariableOptraining/Adam/beta_1Identity_13*
dtype0

RestoreV2_14/tensor_namesConst"/device:CPU:0*@
value7B5B+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_14/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_14	RestoreV2ConstRestoreV2_14/tensor_namesRestoreV2_14/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_14IdentityRestoreV2_14*
T0*
_output_shapes
:
W
AssignVariableOp_14AssignVariableOptraining/Adam/beta_2Identity_14*
dtype0

RestoreV2_15/tensor_namesConst"/device:CPU:0*?
value6B4B*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
u
RestoreV2_15/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_15	RestoreV2ConstRestoreV2_15/tensor_namesRestoreV2_15/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
H
Identity_15IdentityRestoreV2_15*
T0*
_output_shapes
:
V
AssignVariableOp_15AssignVariableOptraining/Adam/decayIdentity_15*
dtype0
Ł
RestoreV2_16/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*G
value>B<B2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE
u
RestoreV2_16/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_16	RestoreV2ConstRestoreV2_16/tensor_namesRestoreV2_16/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
H
Identity_16IdentityRestoreV2_16*
T0*
_output_shapes
:
^
AssignVariableOp_16AssignVariableOptraining/Adam/learning_rateIdentity_16*
dtype0
O
VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 
H
VarIsInitializedOp_1VarIsInitializedOpiter*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpdense_15/kernel*
_output_shapes
: 
X
VarIsInitializedOp_3VarIsInitializedOptraining/Adam/beta_1*
_output_shapes
: 
X
VarIsInitializedOp_4VarIsInitializedOptraining/Adam/beta_2*
_output_shapes
: 
Q
VarIsInitializedOp_5VarIsInitializedOpdense_15/bias*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOptotal*
_output_shapes
: 
I
VarIsInitializedOp_7VarIsInitializedOpcount*
_output_shapes
: 
W
VarIsInitializedOp_8VarIsInitializedOptraining/Adam/decay*
_output_shapes
: 
_
VarIsInitializedOp_9VarIsInitializedOptraining/Adam/learning_rate*
_output_shapes
: 
b
VarIsInitializedOp_10VarIsInitializedOptraining/Adam/dense_14/bias/m*
_output_shapes
: 
b
VarIsInitializedOp_11VarIsInitializedOptraining/Adam/dense_15/bias/m*
_output_shapes
: 
b
VarIsInitializedOp_12VarIsInitializedOptraining/Adam/dense_14/bias/v*
_output_shapes
: 
d
VarIsInitializedOp_13VarIsInitializedOptraining/Adam/dense_14/kernel/m*
_output_shapes
: 
d
VarIsInitializedOp_14VarIsInitializedOptraining/Adam/dense_15/kernel/v*
_output_shapes
: 
d
VarIsInitializedOp_15VarIsInitializedOptraining/Adam/dense_15/kernel/m*
_output_shapes
: 
b
VarIsInitializedOp_16VarIsInitializedOptraining/Adam/dense_15/bias/v*
_output_shapes
: 
T
VarIsInitializedOp_17VarIsInitializedOpdense_14/kernel*
_output_shapes
: 
d
VarIsInitializedOp_18VarIsInitializedOptraining/Adam/dense_14/kernel/v*
_output_shapes
: 
Ö
initNoOp^count/Assign^dense_14/bias/Assign^dense_14/kernel/Assign^dense_15/bias/Assign^dense_15/kernel/Assign^iter/Assign^total/Assign^training/Adam/beta_1/Assign^training/Adam/beta_2/Assign^training/Adam/decay/Assign%^training/Adam/dense_14/bias/m/Assign%^training/Adam/dense_14/bias/v/Assign'^training/Adam/dense_14/kernel/m/Assign'^training/Adam/dense_14/kernel/v/Assign%^training/Adam/dense_15/bias/m/Assign%^training/Adam/dense_15/bias/v/Assign'^training/Adam/dense_15/kernel/m/Assign'^training/Adam/dense_15/kernel/v/Assign#^training/Adam/learning_rate/Assign
W
Const_1Const"/device:CPU:0*
valueB B *
dtype0*
_output_shapes
: 
W
Const_2Const"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB B 

StringJoin/inputs_1Const"/device:CPU:0*<
value3B1 B+_temp_dde83e8a438a47dba0946395c088d6ee/part*
dtype0*
_output_shapes
: 
f

StringJoin
StringJoinConst_2StringJoin/inputs_1"/device:CPU:0*
N*
_output_shapes
: 
L

num_shardsConst*
dtype0*
_output_shapes
: *
value	B :
f
ShardedFilename/shardConst"/device:CPU:0*
dtype0*
_output_shapes
: *
value	B : 
x
ShardedFilenameShardedFilename
StringJoinShardedFilename/shard
num_shards"/device:CPU:0*
_output_shapes
: 
Ĺ	
SaveV2/tensor_namesConst"/device:CPU:0*î
valueäBáB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

SaveV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B 
÷
SaveV2SaveV2ShardedFilenameSaveV2/tensor_namesSaveV2/shape_and_slices#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOpiter/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp3training/Adam/dense_14/kernel/m/Read/ReadVariableOp1training/Adam/dense_14/bias/m/Read/ReadVariableOp3training/Adam/dense_15/kernel/m/Read/ReadVariableOp1training/Adam/dense_15/bias/m/Read/ReadVariableOp3training/Adam/dense_14/kernel/v/Read/ReadVariableOp1training/Adam/dense_14/bias/v/Read/ReadVariableOp3training/Adam/dense_15/kernel/v/Read/ReadVariableOp1training/Adam/dense_15/bias/v/Read/ReadVariableOp"/device:CPU:0*
dtypes
2	
h
ShardedFilename_1/shardConst"/device:CPU:0*
value	B :*
dtype0*
_output_shapes
: 
|
ShardedFilename_1ShardedFilename
StringJoinShardedFilename_1/shard
num_shards"/device:CPU:0*
_output_shapes
: 

SaveV2_1/tensor_namesConst"/device:CPU:0*1
value(B&B_CHECKPOINTABLE_OBJECT_GRAPH*
dtype0*
_output_shapes
:
q
SaveV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

SaveV2_1SaveV2ShardedFilename_1SaveV2_1/tensor_namesSaveV2_1/shape_and_slicesConst_1"/device:CPU:0*
dtypes
2
Ł
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilenameShardedFilename_1^SaveV2	^SaveV2_1"/device:CPU:0*
T0*
N*
_output_shapes
:
h
MergeV2CheckpointsMergeV2Checkpoints&MergeV2Checkpoints/checkpoint_prefixesConst_2"/device:CPU:0
e
Identity_17IdentityConst_2^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
D
Identity_18Identity
div_no_nan*
_output_shapes
: *
T0
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
ť	
save/SaveV2/tensor_namesConst*î
valueäBáB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*5
value,B*B B B B B B B B B B B B B B B B B 
ň
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_14/bias/Read/ReadVariableOp1training/Adam/dense_14/bias/m/Read/ReadVariableOp1training/Adam/dense_14/bias/v/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp3training/Adam/dense_14/kernel/m/Read/ReadVariableOp3training/Adam/dense_14/kernel/v/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp1training/Adam/dense_15/bias/m/Read/ReadVariableOp1training/Adam/dense_15/bias/v/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp3training/Adam/dense_15/kernel/m/Read/ReadVariableOp3training/Adam/dense_15/kernel/v/Read/ReadVariableOp(training/Adam/beta_1/Read/ReadVariableOp(training/Adam/beta_2/Read/ReadVariableOp'training/Adam/decay/Read/ReadVariableOpiter/Read/ReadVariableOp/training/Adam/learning_rate/Read/ReadVariableOp*
dtypes
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Í	
save/RestoreV2/tensor_namesConst"/device:CPU:0*î
valueäBáB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*5
value,B*B B B B B B B B B B B B B B B B B *
dtype0*
_output_shapes
:
ď
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*X
_output_shapesF
D:::::::::::::::::*
dtypes
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_14/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
h
save/AssignVariableOp_1AssignVariableOptraining/Adam/dense_14/bias/msave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
h
save/AssignVariableOp_2AssignVariableOptraining/Adam/dense_14/bias/vsave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_14/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0
j
save/AssignVariableOp_4AssignVariableOptraining/Adam/dense_14/kernel/msave/Identity_4*
dtype0
P
save/Identity_5Identitysave/RestoreV2:5*
_output_shapes
:*
T0
j
save/AssignVariableOp_5AssignVariableOptraining/Adam/dense_14/kernel/vsave/Identity_5*
dtype0
P
save/Identity_6Identitysave/RestoreV2:6*
T0*
_output_shapes
:
X
save/AssignVariableOp_6AssignVariableOpdense_15/biassave/Identity_6*
dtype0
P
save/Identity_7Identitysave/RestoreV2:7*
T0*
_output_shapes
:
h
save/AssignVariableOp_7AssignVariableOptraining/Adam/dense_15/bias/msave/Identity_7*
dtype0
P
save/Identity_8Identitysave/RestoreV2:8*
T0*
_output_shapes
:
h
save/AssignVariableOp_8AssignVariableOptraining/Adam/dense_15/bias/vsave/Identity_8*
dtype0
P
save/Identity_9Identitysave/RestoreV2:9*
T0*
_output_shapes
:
Z
save/AssignVariableOp_9AssignVariableOpdense_15/kernelsave/Identity_9*
dtype0
R
save/Identity_10Identitysave/RestoreV2:10*
T0*
_output_shapes
:
l
save/AssignVariableOp_10AssignVariableOptraining/Adam/dense_15/kernel/msave/Identity_10*
dtype0
R
save/Identity_11Identitysave/RestoreV2:11*
T0*
_output_shapes
:
l
save/AssignVariableOp_11AssignVariableOptraining/Adam/dense_15/kernel/vsave/Identity_11*
dtype0
R
save/Identity_12Identitysave/RestoreV2:12*
T0*
_output_shapes
:
a
save/AssignVariableOp_12AssignVariableOptraining/Adam/beta_1save/Identity_12*
dtype0
R
save/Identity_13Identitysave/RestoreV2:13*
T0*
_output_shapes
:
a
save/AssignVariableOp_13AssignVariableOptraining/Adam/beta_2save/Identity_13*
dtype0
R
save/Identity_14Identitysave/RestoreV2:14*
T0*
_output_shapes
:
`
save/AssignVariableOp_14AssignVariableOptraining/Adam/decaysave/Identity_14*
dtype0
R
save/Identity_15Identitysave/RestoreV2:15*
T0	*
_output_shapes
:
Q
save/AssignVariableOp_15AssignVariableOpitersave/Identity_15*
dtype0	
R
save/Identity_16Identitysave/RestoreV2:16*
T0*
_output_shapes
:
h
save/AssignVariableOp_16AssignVariableOptraining/Adam/learning_ratesave/Identity_16*
dtype0
×
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_10^save/AssignVariableOp_11^save/AssignVariableOp_12^save/AssignVariableOp_13^save/AssignVariableOp_14^save/AssignVariableOp_15^save/AssignVariableOp_16^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4^save/AssignVariableOp_5^save/AssignVariableOp_6^save/AssignVariableOp_7^save/AssignVariableOp_8^save/AssignVariableOp_9
,
init_1NoOp^count/Assign^total/Assign"MD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"
	variables

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H

training/Adam/beta_1:0training/Adam/beta_1/Assign*training/Adam/beta_1/Read/ReadVariableOp:0(20training/Adam/beta_1/Initializer/initial_value:0H

training/Adam/beta_2:0training/Adam/beta_2/Assign*training/Adam/beta_2/Read/ReadVariableOp:0(20training/Adam/beta_2/Initializer/initial_value:0H

training/Adam/decay:0training/Adam/decay/Assign)training/Adam/decay/Read/ReadVariableOp:0(2/training/Adam/decay/Initializer/initial_value:0H
ł
training/Adam/learning_rate:0"training/Adam/learning_rate/Assign1training/Adam/learning_rate/Read/ReadVariableOp:0(27training/Adam/learning_rate/Initializer/initial_value:0H
š
!training/Adam/dense_14/kernel/m:0&training/Adam/dense_14/kernel/m/Assign5training/Adam/dense_14/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_14/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_14/bias/m:0$training/Adam/dense_14/bias/m/Assign3training/Adam/dense_14/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_14/bias/m/Initializer/zeros:0
š
!training/Adam/dense_15/kernel/m:0&training/Adam/dense_15/kernel/m/Assign5training/Adam/dense_15/kernel/m/Read/ReadVariableOp:0(23training/Adam/dense_15/kernel/m/Initializer/zeros:0
ą
training/Adam/dense_15/bias/m:0$training/Adam/dense_15/bias/m/Assign3training/Adam/dense_15/bias/m/Read/ReadVariableOp:0(21training/Adam/dense_15/bias/m/Initializer/zeros:0
š
!training/Adam/dense_14/kernel/v:0&training/Adam/dense_14/kernel/v/Assign5training/Adam/dense_14/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_14/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_14/bias/v:0$training/Adam/dense_14/bias/v/Assign3training/Adam/dense_14/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_14/bias/v/Initializer/zeros:0
š
!training/Adam/dense_15/kernel/v:0&training/Adam/dense_15/kernel/v/Assign5training/Adam/dense_15/kernel/v/Read/ReadVariableOp:0(23training/Adam/dense_15/kernel/v/Initializer/zeros:0
ą
training/Adam/dense_15/bias/v:0$training/Adam/dense_15/bias/v/Assign3training/Adam/dense_15/bias/v/Read/ReadVariableOp:0(21training/Adam/dense_15/bias/v/Initializer/zeros:0"
trainable_variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08"Ĺ
local_variablesąŽ
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H*Q
__saved_model_train_op75
__saved_model_train_op
training_1/group_deps*é
trainß
:
dense_14_input(
dense_14_input:0˙˙˙˙˙˙˙˙˙
D
dense_15_target1
dense_15_target:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙4
metrics/acc/update_op
metric_op_wrapper:0 (
metrics/acc/value
Identity_18:0 
loss

loss/mul:0 A
predictions/dense_15)
dense_15/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/supervised/training*@
__saved_model_init_op'%
__saved_model_init_op
init_1ďŘ
Ů 
:
Add
x"T
y"T
z"T"
Ttype:
2	

ArgMax

input"T
	dimension"Tidx
output"output_type" 
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
E
AssignAddVariableOp
resource
value"dtype"
dtypetype
B
AssignVariableOp
resource
value"dtype"
dtypetype
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
8
DivNoNan
x"T
y"T
z"T"
Ttype:	
2
B
Equal
x"T
y"T
z
"
Ttype:
2	

^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	
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
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
O
Size

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
9
Softmax
logits"T
softmax"T"
Ttype:
2

#SparseSoftmaxCrossEntropyWithLogits
features"T
labels"Tlabels	
loss"T
backprop"T"
Ttype:
2"
Tlabelstype0	:
2	
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
:
Sub
x"T
y"T
z"T"
Ttype:
2	

Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"eval*1.15.0-dev201906262v1.12.1-4946-ge02e33d9408˛
s
dense_14_inputPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0dense_14/kernel/Initializer/random_uniform/shapeConst*
valueB"     *"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
:

.dense_14/kernel/Initializer/random_uniform/minConst*
valueB
 *HY˝*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 

.dense_14/kernel/Initializer/random_uniform/maxConst*
valueB
 *HY=*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
×
8dense_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_14/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:

Ú
.dense_14/kernel/Initializer/random_uniform/subSub.dense_14/kernel/Initializer/random_uniform/max.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
î
.dense_14/kernel/Initializer/random_uniform/mulMul8dense_14/kernel/Initializer/random_uniform/RandomUniform.dense_14/kernel/Initializer/random_uniform/sub* 
_output_shapes
:
*
T0*"
_class
loc:@dense_14/kernel
ŕ
*dense_14/kernel/Initializer/random_uniformAdd.dense_14/kernel/Initializer/random_uniform/mul.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

 
dense_14/kernelVarHandleOp*
shape:
* 
shared_namedense_14/kernel*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
o
0dense_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/kernel*
_output_shapes
: 

dense_14/kernel/AssignAssignVariableOpdense_14/kernel*dense_14/kernel/Initializer/random_uniform*
dtype0*"
_class
loc:@dense_14/kernel

#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:
*"
_class
loc:@dense_14/kernel

dense_14/bias/Initializer/zerosConst*
valueB*    * 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:

dense_14/biasVarHandleOp* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_14/bias
k
.dense_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 

dense_14/bias/AssignAssignVariableOpdense_14/biasdense_14/bias/Initializer/zeros*
dtype0* 
_class
loc:@dense_14/bias

!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
dtype0*
_output_shapes	
:* 
_class
loc:@dense_14/bias
p
dense_14/MatMul/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:

|
dense_14/MatMulMatMuldense_14_inputdense_14/MatMul/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
dense_14/BiasAdd/ReadVariableOpReadVariableOpdense_14/bias*
dtype0*
_output_shapes	
:

dense_14/BiasAddBiasAdddense_14/MatMuldense_14/BiasAdd/ReadVariableOp*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Z
dense_14/ReluReludense_14/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
dropout_7/IdentityIdentitydense_14/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_15/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *"
_class
loc:@dense_15/kernel

.dense_15/kernel/Initializer/random_uniform/minConst*
valueB
 *Ű˝*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 

.dense_15/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ű=*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 
Ö
8dense_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_15/kernel/Initializer/random_uniform/shape*
dtype0*
_output_shapes
:	
*
T0*"
_class
loc:@dense_15/kernel
Ú
.dense_15/kernel/Initializer/random_uniform/subSub.dense_15/kernel/Initializer/random_uniform/max.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
í
.dense_15/kernel/Initializer/random_uniform/mulMul8dense_15/kernel/Initializer/random_uniform/RandomUniform.dense_15/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ß
*dense_15/kernel/Initializer/random_uniformAdd.dense_15/kernel/Initializer/random_uniform/mul.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	


dense_15/kernelVarHandleOp* 
shared_namedense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: *
shape:	

o
0dense_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/kernel*
_output_shapes
: 

dense_15/kernel/AssignAssignVariableOpdense_15/kernel*dense_15/kernel/Initializer/random_uniform*"
_class
loc:@dense_15/kernel*
dtype0

#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/bias/Initializer/zerosConst*
dtype0*
_output_shapes
:
*
valueB
*    * 
_class
loc:@dense_15/bias

dense_15/biasVarHandleOp*
shared_namedense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
: *
shape:

k
.dense_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/bias*
_output_shapes
: 

dense_15/bias/AssignAssignVariableOpdense_15/biasdense_15/bias/Initializer/zeros* 
_class
loc:@dense_15/bias*
dtype0

!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:

o
dense_15/MatMul/ReadVariableOpReadVariableOpdense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/MatMulMatMuldropout_7/Identitydense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

i
dense_15/BiasAdd/ReadVariableOpReadVariableOpdense_15/bias*
dtype0*
_output_shapes
:


dense_15/BiasAddBiasAdddense_15/MatMuldense_15/BiasAdd/ReadVariableOp*'
_output_shapes
:˙˙˙˙˙˙˙˙˙
*
T0
_
dense_15/SoftmaxSoftmaxdense_15/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙


dense_15_targetPlaceholder*
dtype0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*%
shape:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
v
total/Initializer/zerosConst*
valueB
 *    *
_class

loc:@total*
dtype0*
_output_shapes
: 
x
totalVarHandleOp*
shape: *
shared_nametotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
[
&total/IsInitialized/VarIsInitializedOpVarIsInitializedOptotal*
_output_shapes
: 
g
total/AssignAssignVariableOptotaltotal/Initializer/zeros*
_class

loc:@total*
dtype0
q
total/Read/ReadVariableOpReadVariableOptotal*
_class

loc:@total*
dtype0*
_output_shapes
: 
v
count/Initializer/zerosConst*
valueB
 *    *
_class

loc:@count*
dtype0*
_output_shapes
: 
x
countVarHandleOp*
shared_namecount*
_class

loc:@count*
dtype0*
_output_shapes
: *
shape: 
[
&count/IsInitialized/VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
g
count/AssignAssignVariableOpcountcount/Initializer/zeros*
_class

loc:@count*
dtype0
q
count/Read/ReadVariableOpReadVariableOpcount*
_class

loc:@count*
dtype0*
_output_shapes
: 
}
metrics/acc/SqueezeSqueezedense_15_target*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
g
metrics/acc/ArgMax/dimensionConst*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
z
metrics/acc/ArgMaxArgMaxdense_15/Softmaxmetrics/acc/ArgMax/dimension*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
i
metrics/acc/CastCastmetrics/acc/ArgMax*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0*

SrcT0	
o
metrics/acc/EqualEqualmetrics/acc/Squeezemetrics/acc/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
j
metrics/acc/Cast_1Castmetrics/acc/Equal*

SrcT0
*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

DstT0
[
metrics/acc/ConstConst*
valueB: *
dtype0*
_output_shapes
:
^
metrics/acc/SumSummetrics/acc/Cast_1metrics/acc/Const*
T0*
_output_shapes
: 
[
metrics/acc/AssignAddVariableOpAssignAddVariableOptotalmetrics/acc/Sum*
dtype0

metrics/acc/ReadVariableOpReadVariableOptotal ^metrics/acc/AssignAddVariableOp^metrics/acc/Sum*
dtype0*
_output_shapes
: 
M
metrics/acc/SizeSizemetrics/acc/Cast_1*
_output_shapes
: *
T0
\
metrics/acc/Cast_2Castmetrics/acc/Size*

SrcT0*
_output_shapes
: *

DstT0

!metrics/acc/AssignAddVariableOp_1AssignAddVariableOpcountmetrics/acc/Cast_2 ^metrics/acc/AssignAddVariableOp*
dtype0
 
metrics/acc/ReadVariableOp_1ReadVariableOpcount ^metrics/acc/AssignAddVariableOp"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

%metrics/acc/div_no_nan/ReadVariableOpReadVariableOptotal"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

'metrics/acc/div_no_nan/ReadVariableOp_1ReadVariableOpcount"^metrics/acc/AssignAddVariableOp_1*
dtype0*
_output_shapes
: 

metrics/acc/div_no_nanDivNoNan%metrics/acc/div_no_nan/ReadVariableOp'metrics/acc/div_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
Y
metrics/acc/IdentityIdentitymetrics/acc/div_no_nan*
_output_shapes
: *
T0
z
loss/dense_15_loss/CastCastdense_15_target*

SrcT0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*

DstT0	
X
loss/dense_15_loss/ShapeShapedense_15/BiasAdd*
T0*
_output_shapes
:
s
 loss/dense_15_loss/Reshape/shapeConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙

loss/dense_15_loss/ReshapeReshapeloss/dense_15_loss/Cast loss/dense_15_loss/Reshape/shape*
T0	*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
y
&loss/dense_15_loss/strided_slice/stackConst*
dtype0*
_output_shapes
:*
valueB:
˙˙˙˙˙˙˙˙˙
r
(loss/dense_15_loss/strided_slice/stack_1Const*
valueB: *
dtype0*
_output_shapes
:
r
(loss/dense_15_loss/strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

 loss/dense_15_loss/strided_sliceStridedSliceloss/dense_15_loss/Shape&loss/dense_15_loss/strided_slice/stack(loss/dense_15_loss/strided_slice/stack_1(loss/dense_15_loss/strided_slice/stack_2*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
o
$loss/dense_15_loss/Reshape_1/shape/0Const*
valueB :
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
: 
 
"loss/dense_15_loss/Reshape_1/shapePack$loss/dense_15_loss/Reshape_1/shape/0 loss/dense_15_loss/strided_slice*
T0*
N*
_output_shapes
:

loss/dense_15_loss/Reshape_1Reshapedense_15/BiasAdd"loss/dense_15_loss/Reshape_1/shape*
T0*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙

<loss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/ShapeShapeloss/dense_15_loss/Reshape*
T0	*
_output_shapes
:

Zloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits#SparseSoftmaxCrossEntropyWithLogitsloss/dense_15_loss/Reshape_1loss/dense_15_loss/Reshape*?
_output_shapes-
+:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0
l
'loss/dense_15_loss/weighted_loss/Cast/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 

Uloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/shapeConst*
valueB *
dtype0*
_output_shapes
: 

Tloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/weights/rankConst*
value	B : *
dtype0*
_output_shapes
: 
Ţ
Tloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/shapeShapeZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits*
T0*
_output_shapes
:

Sloss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/values/rankConst*
dtype0*
_output_shapes
: *
value	B :
k
closs/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_successNoOp
˛
Bloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ShapeShapeZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogitsd^loss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
_output_shapes
:*
T0
í
Bloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ConstConstd^loss/dense_15_loss/weighted_loss/broadcast_weights/assert_broadcastable/static_scalar_check_success*
valueB
 *  ?*
dtype0*
_output_shapes
: 
ú
<loss/dense_15_loss/weighted_loss/broadcast_weights/ones_likeFillBloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/ShapeBloss/dense_15_loss/weighted_loss/broadcast_weights/ones_like/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Î
2loss/dense_15_loss/weighted_loss/broadcast_weightsMul'loss/dense_15_loss/weighted_loss/Cast/x<loss/dense_15_loss/weighted_loss/broadcast_weights/ones_like*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
é
$loss/dense_15_loss/weighted_loss/MulMulZloss/dense_15_loss/SparseSoftmaxCrossEntropyWithLogits/SparseSoftmaxCrossEntropyWithLogits2loss/dense_15_loss/weighted_loss/broadcast_weights*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
b
loss/dense_15_loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
~
loss/dense_15_loss/SumSum$loss/dense_15_loss/weighted_loss/Mulloss/dense_15_loss/Const*
_output_shapes
: *
T0
n
loss/dense_15_loss/num_elementsSize$loss/dense_15_loss/weighted_loss/Mul*
T0*
_output_shapes
: 
}
$loss/dense_15_loss/num_elements/CastCastloss/dense_15_loss/num_elements*
_output_shapes
: *

DstT0*

SrcT0
]
loss/dense_15_loss/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
t
loss/dense_15_loss/Sum_1Sumloss/dense_15_loss/Sumloss/dense_15_loss/Const_1*
T0*
_output_shapes
: 

loss/dense_15_loss/valueDivNoNanloss/dense_15_loss/Sum_1$loss/dense_15_loss/num_elements/Cast*
_output_shapes
: *
T0
O

loss/mul/xConst*
valueB
 *  ?*
dtype0*
_output_shapes
: 
V
loss/mulMul
loss/mul/xloss/dense_15_loss/value*
T0*
_output_shapes
: 
q
iter/Initializer/zerosConst*
value	B	 R *
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
u
iterVarHandleOp*
shape: *
shared_nameiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
Y
%iter/IsInitialized/VarIsInitializedOpVarIsInitializedOpiter*
_output_shapes
: 
c
iter/AssignAssignVariableOpiteriter/Initializer/zeros*
_class
	loc:@iter*
dtype0	
n
iter/Read/ReadVariableOpReadVariableOpiter*
_class
	loc:@iter*
dtype0	*
_output_shapes
: 
(
evaluation/group_depsNoOp	^loss/mul
Z
ConstConst"/device:CPU:0*
dtype0*
_output_shapes
: *
valueB Bmodel
¤
RestoreV2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
L
AssignVariableOpAssignVariableOpdense_14/kernelIdentity*
dtype0
¤
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
N
AssignVariableOp_1AssignVariableOpdense_14/bias
Identity_1*
dtype0
Ś
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
P
AssignVariableOp_2AssignVariableOpdense_15/kernel
Identity_2*
dtype0
¤
RestoreV2_3/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
N
AssignVariableOp_3AssignVariableOpdense_15/bias
Identity_3*
dtype0

RestoreV2_4/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*>
value5B3B)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
t
RestoreV2_4/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_4	RestoreV2ConstRestoreV2_4/tensor_namesRestoreV2_4/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2	
F

Identity_4IdentityRestoreV2_4*
T0	*
_output_shapes
:
E
AssignVariableOp_4AssignVariableOpiter
Identity_4*
dtype0	
G
VarIsInitializedOpVarIsInitializedOpcount*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense_14/bias*
_output_shapes
: 
H
VarIsInitializedOp_2VarIsInitializedOpiter*
_output_shapes
: 
Q
VarIsInitializedOp_3VarIsInitializedOpdense_15/bias*
_output_shapes
: 
S
VarIsInitializedOp_4VarIsInitializedOpdense_14/kernel*
_output_shapes
: 
S
VarIsInitializedOp_5VarIsInitializedOpdense_15/kernel*
_output_shapes
: 
I
VarIsInitializedOp_6VarIsInitializedOptotal*
_output_shapes
: 

initNoOp^count/Assign^dense_14/bias/Assign^dense_14/kernel/Assign^dense_15/bias/Assign^dense_15/kernel/Assign^iter/Assign^total/Assign
W
div_no_nan/ReadVariableOpReadVariableOptotal*
dtype0*
_output_shapes
: 
Y
div_no_nan/ReadVariableOp_1ReadVariableOpcount*
dtype0*
_output_shapes
: 
o

div_no_nanDivNoNandiv_no_nan/ReadVariableOpdiv_no_nan/ReadVariableOp_1*
T0*
_output_shapes
: 
C

Identity_5Identity
div_no_nan*
_output_shapes
: *
T0
x
metric_op_wrapperConst"^metrics/acc/AssignAddVariableOp_1*
valueB *
dtype0*
_output_shapes
: 
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
é
save/SaveV2/tensor_namesConst*
valueBB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
m
save/SaveV2/shape_and_slicesConst*
dtype0*
_output_shapes
:*
valueBB B B B B 

save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_14/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOpiter/Read/ReadVariableOp*
dtypes	
2	
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
ű
save/RestoreV2/tensor_namesConst"/device:CPU:0*
valueBB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:

save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B B *
dtype0*
_output_shapes
:
ł
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*(
_output_shapes
:::::*
dtypes	
2	
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_14/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_14/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpdense_15/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
T0*
_output_shapes
:
Z
save/AssignVariableOp_3AssignVariableOpdense_15/kernelsave/Identity_3*
dtype0
P
save/Identity_4Identitysave/RestoreV2:4*
_output_shapes
:*
T0	
O
save/AssignVariableOp_4AssignVariableOpitersave/Identity_4*
dtype0	

save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3^save/AssignVariableOp_4
,
init_1NoOp^count/Assign^total/Assign"MD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
trainable_variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08"Ĺ
local_variablesąŽ
U
count:0count/Assigncount/Read/ReadVariableOp:0(2count/Initializer/zeros:0@H
U
total:0total/Assigntotal/Read/ReadVariableOp:0(2total/Initializer/zeros:0@H"b
global_stepSQ
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H"Ú
	variablesĚÉ

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08
O
iter:0iter/Assigniter/Read/ReadVariableOp:0(2iter/Initializer/zeros:0H*ă
evalÚ
:
dense_14_input(
dense_14_input:0˙˙˙˙˙˙˙˙˙
D
dense_15_target1
dense_15_target:0˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙A
predictions/dense_15)
dense_15/Softmax:0˙˙˙˙˙˙˙˙˙
4
metrics/acc/update_op
metric_op_wrapper:0 '
metrics/acc/value
Identity_5:0 
loss

loss/mul:0 tensorflow/supervised/eval*@
__saved_model_init_op'%
__saved_model_init_op
init_1őu
Đ
:
Add
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
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
=
Mul
x"T
y"T
z"T"
Ttype:
2	

NoOp
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
X
PlaceholderWithDefault
input"dtype
output"dtype"
dtypetype"
shapeshape
~
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
:
Sub
x"T
y"T
z"T"
Ttype:
2	
q
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape
9
VarIsInitializedOp
resource
is_initialized
"serve*1.15.0-dev201906262v1.12.1-4946-ge02e33d9408_
s
dense_14_inputPlaceholder*
dtype0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
Ľ
0dense_14/kernel/Initializer/random_uniform/shapeConst*
valueB"     *"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
:

.dense_14/kernel/Initializer/random_uniform/minConst*
valueB
 *HY˝*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 

.dense_14/kernel/Initializer/random_uniform/maxConst*
dtype0*
_output_shapes
: *
valueB
 *HY=*"
_class
loc:@dense_14/kernel
×
8dense_14/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_14/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_14/kernel*
dtype0* 
_output_shapes
:

Ú
.dense_14/kernel/Initializer/random_uniform/subSub.dense_14/kernel/Initializer/random_uniform/max.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel*
_output_shapes
: 
î
.dense_14/kernel/Initializer/random_uniform/mulMul8dense_14/kernel/Initializer/random_uniform/RandomUniform.dense_14/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

ŕ
*dense_14/kernel/Initializer/random_uniformAdd.dense_14/kernel/Initializer/random_uniform/mul.dense_14/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_14/kernel* 
_output_shapes
:

 
dense_14/kernelVarHandleOp*
shape:
* 
shared_namedense_14/kernel*"
_class
loc:@dense_14/kernel*
dtype0*
_output_shapes
: 
o
0dense_14/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/kernel*
_output_shapes
: 

dense_14/kernel/AssignAssignVariableOpdense_14/kernel*dense_14/kernel/Initializer/random_uniform*"
_class
loc:@dense_14/kernel*
dtype0

#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:
*"
_class
loc:@dense_14/kernel

dense_14/bias/Initializer/zerosConst*
dtype0*
_output_shapes	
:*
valueB*    * 
_class
loc:@dense_14/bias

dense_14/biasVarHandleOp* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes
: *
shape:*
shared_namedense_14/bias
k
.dense_14/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 

dense_14/bias/AssignAssignVariableOpdense_14/biasdense_14/bias/Initializer/zeros* 
_class
loc:@dense_14/bias*
dtype0

!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias* 
_class
loc:@dense_14/bias*
dtype0*
_output_shapes	
:
p
dense_14/MatMul/ReadVariableOpReadVariableOpdense_14/kernel*
dtype0* 
_output_shapes
:

|
dense_14/MatMulMatMuldense_14_inputdense_14/MatMul/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
j
dense_14/BiasAdd/ReadVariableOpReadVariableOpdense_14/bias*
dtype0*
_output_shapes	
:

dense_14/BiasAddBiasAdddense_14/MatMuldense_14/BiasAdd/ReadVariableOp*(
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Z
dense_14/ReluReludense_14/BiasAdd*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
`
dropout_7/IdentityIdentitydense_14/Relu*
T0*(
_output_shapes
:˙˙˙˙˙˙˙˙˙
Ľ
0dense_15/kernel/Initializer/random_uniform/shapeConst*
dtype0*
_output_shapes
:*
valueB"   
   *"
_class
loc:@dense_15/kernel

.dense_15/kernel/Initializer/random_uniform/minConst*
valueB
 *Ű˝*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 

.dense_15/kernel/Initializer/random_uniform/maxConst*
valueB
 *Ű=*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: 
Ö
8dense_15/kernel/Initializer/random_uniform/RandomUniformRandomUniform0dense_15/kernel/Initializer/random_uniform/shape*
T0*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	

Ú
.dense_15/kernel/Initializer/random_uniform/subSub.dense_15/kernel/Initializer/random_uniform/max.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
: 
í
.dense_15/kernel/Initializer/random_uniform/mulMul8dense_15/kernel/Initializer/random_uniform/RandomUniform.dense_15/kernel/Initializer/random_uniform/sub*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	

ß
*dense_15/kernel/Initializer/random_uniformAdd.dense_15/kernel/Initializer/random_uniform/mul.dense_15/kernel/Initializer/random_uniform/min*
T0*"
_class
loc:@dense_15/kernel*
_output_shapes
:	


dense_15/kernelVarHandleOp* 
shared_namedense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
: *
shape:	

o
0dense_15/kernel/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/kernel*
_output_shapes
: 

dense_15/kernel/AssignAssignVariableOpdense_15/kernel*dense_15/kernel/Initializer/random_uniform*"
_class
loc:@dense_15/kernel*
dtype0

#dense_15/kernel/Read/ReadVariableOpReadVariableOpdense_15/kernel*"
_class
loc:@dense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/bias/Initializer/zerosConst*
valueB
*    * 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
:


dense_15/biasVarHandleOp*
shared_namedense_15/bias* 
_class
loc:@dense_15/bias*
dtype0*
_output_shapes
: *
shape:

k
.dense_15/bias/IsInitialized/VarIsInitializedOpVarIsInitializedOpdense_15/bias*
_output_shapes
: 

dense_15/bias/AssignAssignVariableOpdense_15/biasdense_15/bias/Initializer/zeros* 
_class
loc:@dense_15/bias*
dtype0

!dense_15/bias/Read/ReadVariableOpReadVariableOpdense_15/bias*
dtype0*
_output_shapes
:
* 
_class
loc:@dense_15/bias
o
dense_15/MatMul/ReadVariableOpReadVariableOpdense_15/kernel*
dtype0*
_output_shapes
:	


dense_15/MatMulMatMuldropout_7/Identitydense_15/MatMul/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

i
dense_15/BiasAdd/ReadVariableOpReadVariableOpdense_15/bias*
dtype0*
_output_shapes
:


dense_15/BiasAddBiasAdddense_15/MatMuldense_15/BiasAdd/ReadVariableOp*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

_
dense_15/SoftmaxSoftmaxdense_15/BiasAdd*
T0*'
_output_shapes
:˙˙˙˙˙˙˙˙˙

-
predict/group_depsNoOp^dense_15/Softmax
Z
ConstConst"/device:CPU:0*
valueB Bmodel*
dtype0*
_output_shapes
: 
¤
RestoreV2/tensor_namesConst"/device:CPU:0*
dtype0*
_output_shapes
:*K
valueBB@B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE
r
RestoreV2/shape_and_slicesConst"/device:CPU:0*
dtype0*
_output_shapes
:*
valueB
B 

	RestoreV2	RestoreV2ConstRestoreV2/tensor_namesRestoreV2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
B
IdentityIdentity	RestoreV2*
_output_shapes
:*
T0
L
AssignVariableOpAssignVariableOpdense_14/kernelIdentity*
dtype0
¤
RestoreV2_1/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_1/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_1	RestoreV2ConstRestoreV2_1/tensor_namesRestoreV2_1/shape_and_slices"/device:CPU:0*
dtypes
2*
_output_shapes
:
F

Identity_1IdentityRestoreV2_1*
T0*
_output_shapes
:
N
AssignVariableOp_1AssignVariableOpdense_14/bias
Identity_1*
dtype0
Ś
RestoreV2_2/tensor_namesConst"/device:CPU:0*K
valueBB@B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_2/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_2	RestoreV2ConstRestoreV2_2/tensor_namesRestoreV2_2/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_2IdentityRestoreV2_2*
T0*
_output_shapes
:
P
AssignVariableOp_2AssignVariableOpdense_15/kernel
Identity_2*
dtype0
¤
RestoreV2_3/tensor_namesConst"/device:CPU:0*I
value@B>B4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
t
RestoreV2_3/shape_and_slicesConst"/device:CPU:0*
valueB
B *
dtype0*
_output_shapes
:

RestoreV2_3	RestoreV2ConstRestoreV2_3/tensor_namesRestoreV2_3/shape_and_slices"/device:CPU:0*
_output_shapes
:*
dtypes
2
F

Identity_3IdentityRestoreV2_3*
T0*
_output_shapes
:
N
AssignVariableOp_3AssignVariableOpdense_15/bias
Identity_3*
dtype0
O
VarIsInitializedOpVarIsInitializedOpdense_14/bias*
_output_shapes
: 
Q
VarIsInitializedOp_1VarIsInitializedOpdense_15/bias*
_output_shapes
: 
S
VarIsInitializedOp_2VarIsInitializedOpdense_15/kernel*
_output_shapes
: 
S
VarIsInitializedOp_3VarIsInitializedOpdense_14/kernel*
_output_shapes
: 
l
initNoOp^dense_14/bias/Assign^dense_14/kernel/Assign^dense_15/bias/Assign^dense_15/kernel/Assign
Y
save/filename/inputConst*
valueB Bmodel*
dtype0*
_output_shapes
: 
n
save/filenamePlaceholderWithDefaultsave/filename/input*
dtype0*
_output_shapes
: *
shape: 
e

save/ConstPlaceholderWithDefaultsave/filename*
dtype0*
_output_shapes
: *
shape: 
ž
save/SaveV2/tensor_namesConst*ń
valueçBäB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
k
save/SaveV2/shape_and_slicesConst*
valueBB B B B *
dtype0*
_output_shapes
:
ý
save/SaveV2SaveV2
save/Constsave/SaveV2/tensor_namessave/SaveV2/shape_and_slices!dense_14/bias/Read/ReadVariableOp#dense_14/kernel/Read/ReadVariableOp!dense_15/bias/Read/ReadVariableOp#dense_15/kernel/Read/ReadVariableOp*
dtypes
2
}
save/control_dependencyIdentity
save/Const^save/SaveV2*
T0*
_class
loc:@save/Const*
_output_shapes
: 
Đ
save/RestoreV2/tensor_namesConst"/device:CPU:0*ń
valueçBäB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
dtype0*
_output_shapes
:
}
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B B *
dtype0*
_output_shapes
:
Ž
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2*$
_output_shapes
::::
L
save/IdentityIdentitysave/RestoreV2*
T0*
_output_shapes
:
T
save/AssignVariableOpAssignVariableOpdense_14/biassave/Identity*
dtype0
P
save/Identity_1Identitysave/RestoreV2:1*
T0*
_output_shapes
:
Z
save/AssignVariableOp_1AssignVariableOpdense_14/kernelsave/Identity_1*
dtype0
P
save/Identity_2Identitysave/RestoreV2:2*
T0*
_output_shapes
:
X
save/AssignVariableOp_2AssignVariableOpdense_15/biassave/Identity_2*
dtype0
P
save/Identity_3Identitysave/RestoreV2:3*
_output_shapes
:*
T0
Z
save/AssignVariableOp_3AssignVariableOpdense_15/kernelsave/Identity_3*
dtype0
~
save/restore_allNoOp^save/AssignVariableOp^save/AssignVariableOp_1^save/AssignVariableOp_2^save/AssignVariableOp_3

init_1NoOp"MD
save/Const:0save/control_dependency:0save/restore_all 5 @F8"
	variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08"
trainable_variablesűř

dense_14/kernel:0dense_14/kernel/Assign%dense_14/kernel/Read/ReadVariableOp:0(2,dense_14/kernel/Initializer/random_uniform:08
s
dense_14/bias:0dense_14/bias/Assign#dense_14/bias/Read/ReadVariableOp:0(2!dense_14/bias/Initializer/zeros:08

dense_15/kernel:0dense_15/kernel/Assign%dense_15/kernel/Read/ReadVariableOp:0(2,dense_15/kernel/Initializer/random_uniform:08
s
dense_15/bias:0dense_15/bias/Assign#dense_15/bias/Read/ReadVariableOp:0(2!dense_15/bias/Initializer/zeros:08*Ł
serving_default
:
dense_14_input(
dense_14_input:0˙˙˙˙˙˙˙˙˙5
dense_15)
dense_15/Softmax:0˙˙˙˙˙˙˙˙˙
tensorflow/serving/predict*@
__saved_model_init_op'%
__saved_model_init_op
init_1