ӵ
? ? 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	??
h
Any	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( ?
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
R
Einsum
inputs"T*N
output"T"
equationstring"
Nint(0"	
Ttype
*
Erf
x"T
y"T"
Ttype:
2
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
?
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%??8"&
exponential_avg_factorfloat%  ??";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
?
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
?
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(?
?
Mul
x"T
y"T
z"T"
Ttype:
2	?
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
?
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
e
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2		
@
ReadVariableOp
resource
value"dtype"
dtypetype?
@
RealDiv
x"T
y"T
z"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
?
ResourceGather
resource
indices"Tindices
output"dtype"

batch_dimsint "
validate_indicesbool("
dtypetype"
Tindicestype:
2	?
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0?
?
Select
	condition

t"T
e"T
output"T"	
Ttype
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
?
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
executor_typestring ??
@
StaticRegexFullMatch	
input

output
"
patternstring
?
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
?
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 ?"serve*2.8.02v2.8.0-rc1-32-g3f878cff5b68??
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	?*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
_output_shapes
: *
dtype0
?
1Frame_positional_embedding/embedding_1/embeddingsVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*B
shared_name31Frame_positional_embedding/embedding_1/embeddings
?
EFrame_positional_embedding/embedding_1/embeddings/Read/ReadVariableOpReadVariableOp1Frame_positional_embedding/embedding_1/embeddings*
_output_shapes
:	?*
dtype0
?
6TransformerEncoder/multi_head_attention_1/query/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*G
shared_name86TransformerEncoder/multi_head_attention_1/query/kernel
?
JTransformerEncoder/multi_head_attention_1/query/kernel/Read/ReadVariableOpReadVariableOp6TransformerEncoder/multi_head_attention_1/query/kernel*$
_output_shapes
:??*
dtype0
?
4TransformerEncoder/multi_head_attention_1/query/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*E
shared_name64TransformerEncoder/multi_head_attention_1/query/bias
?
HTransformerEncoder/multi_head_attention_1/query/bias/Read/ReadVariableOpReadVariableOp4TransformerEncoder/multi_head_attention_1/query/bias*
_output_shapes
:	?*
dtype0
?
4TransformerEncoder/multi_head_attention_1/key/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*E
shared_name64TransformerEncoder/multi_head_attention_1/key/kernel
?
HTransformerEncoder/multi_head_attention_1/key/kernel/Read/ReadVariableOpReadVariableOp4TransformerEncoder/multi_head_attention_1/key/kernel*$
_output_shapes
:??*
dtype0
?
2TransformerEncoder/multi_head_attention_1/key/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*C
shared_name42TransformerEncoder/multi_head_attention_1/key/bias
?
FTransformerEncoder/multi_head_attention_1/key/bias/Read/ReadVariableOpReadVariableOp2TransformerEncoder/multi_head_attention_1/key/bias*
_output_shapes
:	?*
dtype0
?
6TransformerEncoder/multi_head_attention_1/value/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*G
shared_name86TransformerEncoder/multi_head_attention_1/value/kernel
?
JTransformerEncoder/multi_head_attention_1/value/kernel/Read/ReadVariableOpReadVariableOp6TransformerEncoder/multi_head_attention_1/value/kernel*$
_output_shapes
:??*
dtype0
?
4TransformerEncoder/multi_head_attention_1/value/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*E
shared_name64TransformerEncoder/multi_head_attention_1/value/bias
?
HTransformerEncoder/multi_head_attention_1/value/bias/Read/ReadVariableOpReadVariableOp4TransformerEncoder/multi_head_attention_1/value/bias*
_output_shapes
:	?*
dtype0
?
ATransformerEncoder/multi_head_attention_1/attention_output/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*R
shared_nameCATransformerEncoder/multi_head_attention_1/attention_output/kernel
?
UTransformerEncoder/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpReadVariableOpATransformerEncoder/multi_head_attention_1/attention_output/kernel*$
_output_shapes
:??*
dtype0
?
?TransformerEncoder/multi_head_attention_1/attention_output/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*P
shared_nameA?TransformerEncoder/multi_head_attention_1/attention_output/bias
?
STransformerEncoder/multi_head_attention_1/attention_output/bias/Read/ReadVariableOpReadVariableOp?TransformerEncoder/multi_head_attention_1/attention_output/bias*
_output_shapes	
:?*
dtype0
y
dense_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_3/kernel
r
"dense_3/kernel/Read/ReadVariableOpReadVariableOpdense_3/kernel*
_output_shapes
:	?*
dtype0
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
dense_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*
shared_namedense_4/kernel
r
"dense_4/kernel/Read/ReadVariableOpReadVariableOpdense_4/kernel*
_output_shapes
:	?*
dtype0
q
dense_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*
shared_namedense_4/bias
j
 dense_4/bias/Read/ReadVariableOpReadVariableOpdense_4/bias*
_output_shapes	
:?*
dtype0
?
.TransformerEncoder/layer_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.TransformerEncoder/layer_normalization_2/gamma
?
BTransformerEncoder/layer_normalization_2/gamma/Read/ReadVariableOpReadVariableOp.TransformerEncoder/layer_normalization_2/gamma*
_output_shapes	
:?*
dtype0
?
-TransformerEncoder/layer_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-TransformerEncoder/layer_normalization_2/beta
?
ATransformerEncoder/layer_normalization_2/beta/Read/ReadVariableOpReadVariableOp-TransformerEncoder/layer_normalization_2/beta*
_output_shapes	
:?*
dtype0
?
.TransformerEncoder/layer_normalization_3/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*?
shared_name0.TransformerEncoder/layer_normalization_3/gamma
?
BTransformerEncoder/layer_normalization_3/gamma/Read/ReadVariableOpReadVariableOp.TransformerEncoder/layer_normalization_3/gamma*
_output_shapes	
:?*
dtype0
?
-TransformerEncoder/layer_normalization_3/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*>
shared_name/-TransformerEncoder/layer_normalization_3/beta
?
ATransformerEncoder/layer_normalization_3/beta/Read/ReadVariableOpReadVariableOp-TransformerEncoder/layer_normalization_3/beta*
_output_shapes	
:?*
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
?
Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_5/kernel/m
?
)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0
?
8Adam/Frame_positional_embedding/embedding_1/embeddings/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*I
shared_name:8Adam/Frame_positional_embedding/embedding_1/embeddings/m
?
LAdam/Frame_positional_embedding/embedding_1/embeddings/m/Read/ReadVariableOpReadVariableOp8Adam/Frame_positional_embedding/embedding_1/embeddings/m*
_output_shapes
:	?*
dtype0
?
=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*N
shared_name?=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/m
?
QAdam/TransformerEncoder/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/m*$
_output_shapes
:??*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/query/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/query/bias/m
?
OAdam/TransformerEncoder/multi_head_attention_1/query/bias/m/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/query/bias/m*
_output_shapes
:	?*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/m
?
OAdam/TransformerEncoder/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/m*$
_output_shapes
:??*
dtype0
?
9Adam/TransformerEncoder/multi_head_attention_1/key/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*J
shared_name;9Adam/TransformerEncoder/multi_head_attention_1/key/bias/m
?
MAdam/TransformerEncoder/multi_head_attention_1/key/bias/m/Read/ReadVariableOpReadVariableOp9Adam/TransformerEncoder/multi_head_attention_1/key/bias/m*
_output_shapes
:	?*
dtype0
?
=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*N
shared_name?=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/m
?
QAdam/TransformerEncoder/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/m*$
_output_shapes
:??*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/value/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/value/bias/m
?
OAdam/TransformerEncoder/multi_head_attention_1/value/bias/m/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/value/bias/m*
_output_shapes
:	?*
dtype0
?
HAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*Y
shared_nameJHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/m
?
\Adam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpReadVariableOpHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/m*$
_output_shapes
:??*
dtype0
?
FAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*W
shared_nameHFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/m
?
ZAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOpReadVariableOpFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/m
?
)Adam/dense_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/m*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/m
w
'Adam/dense_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/m*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_4/kernel/m
?
)Adam/dense_4/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/m*
_output_shapes
:	?*
dtype0

Adam/dense_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/m
x
'Adam/dense_4/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/m*
_output_shapes	
:?*
dtype0
?
5Adam/TransformerEncoder/layer_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/TransformerEncoder/layer_normalization_2/gamma/m
?
IAdam/TransformerEncoder/layer_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/TransformerEncoder/layer_normalization_2/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/TransformerEncoder/layer_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/TransformerEncoder/layer_normalization_2/beta/m
?
HAdam/TransformerEncoder/layer_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp4Adam/TransformerEncoder/layer_normalization_2/beta/m*
_output_shapes	
:?*
dtype0
?
5Adam/TransformerEncoder/layer_normalization_3/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/TransformerEncoder/layer_normalization_3/gamma/m
?
IAdam/TransformerEncoder/layer_normalization_3/gamma/m/Read/ReadVariableOpReadVariableOp5Adam/TransformerEncoder/layer_normalization_3/gamma/m*
_output_shapes	
:?*
dtype0
?
4Adam/TransformerEncoder/layer_normalization_3/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/TransformerEncoder/layer_normalization_3/beta/m
?
HAdam/TransformerEncoder/layer_normalization_3/beta/m/Read/ReadVariableOpReadVariableOp4Adam/TransformerEncoder/layer_normalization_3/beta/m*
_output_shapes	
:?*
dtype0
?
Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_5/kernel/v
?
)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0
?
8Adam/Frame_positional_embedding/embedding_1/embeddings/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*I
shared_name:8Adam/Frame_positional_embedding/embedding_1/embeddings/v
?
LAdam/Frame_positional_embedding/embedding_1/embeddings/v/Read/ReadVariableOpReadVariableOp8Adam/Frame_positional_embedding/embedding_1/embeddings/v*
_output_shapes
:	?*
dtype0
?
=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*N
shared_name?=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/v
?
QAdam/TransformerEncoder/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/v*$
_output_shapes
:??*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/query/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/query/bias/v
?
OAdam/TransformerEncoder/multi_head_attention_1/query/bias/v/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/query/bias/v*
_output_shapes
:	?*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/v
?
OAdam/TransformerEncoder/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/v*$
_output_shapes
:??*
dtype0
?
9Adam/TransformerEncoder/multi_head_attention_1/key/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*J
shared_name;9Adam/TransformerEncoder/multi_head_attention_1/key/bias/v
?
MAdam/TransformerEncoder/multi_head_attention_1/key/bias/v/Read/ReadVariableOpReadVariableOp9Adam/TransformerEncoder/multi_head_attention_1/key/bias/v*
_output_shapes
:	?*
dtype0
?
=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*N
shared_name?=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/v
?
QAdam/TransformerEncoder/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/v*$
_output_shapes
:??*
dtype0
?
;Adam/TransformerEncoder/multi_head_attention_1/value/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*L
shared_name=;Adam/TransformerEncoder/multi_head_attention_1/value/bias/v
?
OAdam/TransformerEncoder/multi_head_attention_1/value/bias/v/Read/ReadVariableOpReadVariableOp;Adam/TransformerEncoder/multi_head_attention_1/value/bias/v*
_output_shapes
:	?*
dtype0
?
HAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:??*Y
shared_nameJHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/v
?
\Adam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpReadVariableOpHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/v*$
_output_shapes
:??*
dtype0
?
FAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*W
shared_nameHFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/v
?
ZAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOpReadVariableOpFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/v*
_output_shapes	
:?*
dtype0
?
Adam/dense_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_3/kernel/v
?
)Adam/dense_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/kernel/v*
_output_shapes
:	?*
dtype0
~
Adam/dense_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_3/bias/v
w
'Adam/dense_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_3/bias/v*
_output_shapes
:*
dtype0
?
Adam/dense_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	?*&
shared_nameAdam/dense_4/kernel/v
?
)Adam/dense_4/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/kernel/v*
_output_shapes
:	?*
dtype0

Adam/dense_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*$
shared_nameAdam/dense_4/bias/v
x
'Adam/dense_4/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_4/bias/v*
_output_shapes	
:?*
dtype0
?
5Adam/TransformerEncoder/layer_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/TransformerEncoder/layer_normalization_2/gamma/v
?
IAdam/TransformerEncoder/layer_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/TransformerEncoder/layer_normalization_2/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/TransformerEncoder/layer_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/TransformerEncoder/layer_normalization_2/beta/v
?
HAdam/TransformerEncoder/layer_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp4Adam/TransformerEncoder/layer_normalization_2/beta/v*
_output_shapes	
:?*
dtype0
?
5Adam/TransformerEncoder/layer_normalization_3/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*F
shared_name75Adam/TransformerEncoder/layer_normalization_3/gamma/v
?
IAdam/TransformerEncoder/layer_normalization_3/gamma/v/Read/ReadVariableOpReadVariableOp5Adam/TransformerEncoder/layer_normalization_3/gamma/v*
_output_shapes	
:?*
dtype0
?
4Adam/TransformerEncoder/layer_normalization_3/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:?*E
shared_name64Adam/TransformerEncoder/layer_normalization_3/beta/v
?
HAdam/TransformerEncoder/layer_normalization_3/beta/v/Read/ReadVariableOpReadVariableOp4Adam/TransformerEncoder/layer_normalization_3/beta/v*
_output_shapes	
:?*
dtype0

NoOpNoOp
??
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*??
value??B?? B??
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures*
* 
?
position_embedding
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses*
?
	attention

dense_proj
layernorm_1
layernorm_2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses*
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses* 
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+_random_generator
,__call__
*-&call_and_return_all_conditional_losses* 
?

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses*
?
6iter

7beta_1

8beta_2
	9decay
:learning_rate.m?/m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?.v?/v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?*
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
.17
/18*
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
.17
/18*
* 
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
* 

Qserving_default* 
?
;
embeddings
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses*

;0*

;0*
* 
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
* 
* 
?
]_query_dense
^
_key_dense
__value_dense
`_softmax
a_dropout_layer
b_output_dense
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses*
?
ilayer_with_weights-0
ilayer-0
jlayer_with_weights-1
jlayer-1
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses*
?
qaxis
	Hgamma
Ibeta
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses*
?
xaxis
	Jgamma
Kbeta
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses*
z
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15*
z
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15*
* 
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 
* 
* 
* 
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

.0
/1*

.0
/1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses*
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1Frame_positional_embedding/embedding_1/embeddings&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6TransformerEncoder/multi_head_attention_1/query/kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4TransformerEncoder/multi_head_attention_1/query/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4TransformerEncoder/multi_head_attention_1/key/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2TransformerEncoder/multi_head_attention_1/key/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6TransformerEncoder/multi_head_attention_1/value/kernel&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4TransformerEncoder/multi_head_attention_1/value/bias&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEATransformerEncoder/multi_head_attention_1/attention_output/kernel&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE?TransformerEncoder/multi_head_attention_1/attention_output/bias&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUEdense_3/kernel&variables/9/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_3/bias'variables/10/.ATTRIBUTES/VARIABLE_VALUE*
OI
VARIABLE_VALUEdense_4/kernel'variables/11/.ATTRIBUTES/VARIABLE_VALUE*
MG
VARIABLE_VALUEdense_4/bias'variables/12/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.TransformerEncoder/layer_normalization_2/gamma'variables/13/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-TransformerEncoder/layer_normalization_2/beta'variables/14/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE.TransformerEncoder/layer_normalization_3/gamma'variables/15/.ATTRIBUTES/VARIABLE_VALUE*
nh
VARIABLE_VALUE-TransformerEncoder/layer_normalization_3/beta'variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
.
0
1
2
3
4
5*

?0
?1*
* 
* 
* 

;0*

;0*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
* 
* 
* 

0*
* 
* 
* 
?
?partial_output_shape
?full_output_shape

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses* 
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses* 
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
<
<0
=1
>2
?3
@4
A5
B6
C7*
<
<0
=1
>2
?3
@4
A5
B6
C7*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses*
* 
* 
?

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
?

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses*
 
D0
E1
F2
G3*
 
D0
E1
F2
G3*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses*
* 
* 
* 

H0
I1*

H0
I1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses*
* 
* 
* 

J0
K1*

J0
K1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses*
* 
* 
* 
 
0
1
2
3*
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
<

?total

?count
?	variables
?	keras_api*
M

?total

?count
?
_fn_kwargs
?	variables
?	keras_api*
* 
* 
* 
* 
* 
* 
* 

<0
=1*

<0
=1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

>0
?1*

>0
?1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 

@0
A1*

@0
A1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses* 
* 
* 
* 
* 
* 

B0
C1*

B0
C1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 
.
]0
^1
_2
`3
a4
b5*
* 
* 
* 

D0
E1*

D0
E1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 

F0
G1*

F0
G1*
* 
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses*
* 
* 
* 

i0
j1*
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
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

?0
?1*

?	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

?0
?1*

?	variables*
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
?{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/Frame_positional_embedding/embedding_1/embeddings/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/query/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE9Adam/TransformerEncoder/multi_head_attention_1/key/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/value/bias/mBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/mBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/mBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/mBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_3/bias/mCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/mCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/mCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/TransformerEncoder/layer_normalization_2/gamma/mCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/TransformerEncoder/layer_normalization_2/beta/mCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/TransformerEncoder/layer_normalization_3/gamma/mCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/TransformerEncoder/layer_normalization_3/beta/mCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
?{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE8Adam/Frame_positional_embedding/embedding_1/embeddings/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/query/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE9Adam/TransformerEncoder/multi_head_attention_1/key/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE;Adam/TransformerEncoder/multi_head_attention_1/value/bias/vBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/vBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUEFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/vBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUEAdam/dense_3/kernel/vBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_3/bias/vCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUEAdam/dense_4/kernel/vCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUEAdam/dense_4/bias/vCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/TransformerEncoder/layer_normalization_2/gamma/vCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/TransformerEncoder/layer_normalization_2/beta/vCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE5Adam/TransformerEncoder/layer_normalization_3/gamma/vCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
??
VARIABLE_VALUE4Adam/TransformerEncoder/layer_normalization_3/beta/vCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
?
serving_default_input_4Placeholder*,
_output_shapes
:??????????*
dtype0*!
shape:??????????
?
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_41Frame_positional_embedding/embedding_1/embeddings6TransformerEncoder/multi_head_attention_1/query/kernel4TransformerEncoder/multi_head_attention_1/query/bias4TransformerEncoder/multi_head_attention_1/key/kernel2TransformerEncoder/multi_head_attention_1/key/bias6TransformerEncoder/multi_head_attention_1/value/kernel4TransformerEncoder/multi_head_attention_1/value/biasATransformerEncoder/multi_head_attention_1/attention_output/kernel?TransformerEncoder/multi_head_attention_1/attention_output/bias.TransformerEncoder/layer_normalization_2/gamma-TransformerEncoder/layer_normalization_2/betadense_3/kerneldense_3/biasdense_4/kerneldense_4/bias.TransformerEncoder/layer_normalization_3/gamma-TransformerEncoder/layer_normalization_3/betadense_5/kerneldense_5/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *-
f(R&
$__inference_signature_wrapper_503006
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
?"
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOpEFrame_positional_embedding/embedding_1/embeddings/Read/ReadVariableOpJTransformerEncoder/multi_head_attention_1/query/kernel/Read/ReadVariableOpHTransformerEncoder/multi_head_attention_1/query/bias/Read/ReadVariableOpHTransformerEncoder/multi_head_attention_1/key/kernel/Read/ReadVariableOpFTransformerEncoder/multi_head_attention_1/key/bias/Read/ReadVariableOpJTransformerEncoder/multi_head_attention_1/value/kernel/Read/ReadVariableOpHTransformerEncoder/multi_head_attention_1/value/bias/Read/ReadVariableOpUTransformerEncoder/multi_head_attention_1/attention_output/kernel/Read/ReadVariableOpSTransformerEncoder/multi_head_attention_1/attention_output/bias/Read/ReadVariableOp"dense_3/kernel/Read/ReadVariableOp dense_3/bias/Read/ReadVariableOp"dense_4/kernel/Read/ReadVariableOp dense_4/bias/Read/ReadVariableOpBTransformerEncoder/layer_normalization_2/gamma/Read/ReadVariableOpATransformerEncoder/layer_normalization_2/beta/Read/ReadVariableOpBTransformerEncoder/layer_normalization_3/gamma/Read/ReadVariableOpATransformerEncoder/layer_normalization_3/beta/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpLAdam/Frame_positional_embedding/embedding_1/embeddings/m/Read/ReadVariableOpQAdam/TransformerEncoder/multi_head_attention_1/query/kernel/m/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/query/bias/m/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/key/kernel/m/Read/ReadVariableOpMAdam/TransformerEncoder/multi_head_attention_1/key/bias/m/Read/ReadVariableOpQAdam/TransformerEncoder/multi_head_attention_1/value/kernel/m/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/value/bias/m/Read/ReadVariableOp\Adam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/m/Read/ReadVariableOpZAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/m/Read/ReadVariableOp)Adam/dense_3/kernel/m/Read/ReadVariableOp'Adam/dense_3/bias/m/Read/ReadVariableOp)Adam/dense_4/kernel/m/Read/ReadVariableOp'Adam/dense_4/bias/m/Read/ReadVariableOpIAdam/TransformerEncoder/layer_normalization_2/gamma/m/Read/ReadVariableOpHAdam/TransformerEncoder/layer_normalization_2/beta/m/Read/ReadVariableOpIAdam/TransformerEncoder/layer_normalization_3/gamma/m/Read/ReadVariableOpHAdam/TransformerEncoder/layer_normalization_3/beta/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpLAdam/Frame_positional_embedding/embedding_1/embeddings/v/Read/ReadVariableOpQAdam/TransformerEncoder/multi_head_attention_1/query/kernel/v/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/query/bias/v/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/key/kernel/v/Read/ReadVariableOpMAdam/TransformerEncoder/multi_head_attention_1/key/bias/v/Read/ReadVariableOpQAdam/TransformerEncoder/multi_head_attention_1/value/kernel/v/Read/ReadVariableOpOAdam/TransformerEncoder/multi_head_attention_1/value/bias/v/Read/ReadVariableOp\Adam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/v/Read/ReadVariableOpZAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/v/Read/ReadVariableOp)Adam/dense_3/kernel/v/Read/ReadVariableOp'Adam/dense_3/bias/v/Read/ReadVariableOp)Adam/dense_4/kernel/v/Read/ReadVariableOp'Adam/dense_4/bias/v/Read/ReadVariableOpIAdam/TransformerEncoder/layer_normalization_2/gamma/v/Read/ReadVariableOpHAdam/TransformerEncoder/layer_normalization_2/beta/v/Read/ReadVariableOpIAdam/TransformerEncoder/layer_normalization_3/gamma/v/Read/ReadVariableOpHAdam/TransformerEncoder/layer_normalization_3/beta/v/Read/ReadVariableOpConst*O
TinH
F2D	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *(
f#R!
__inference__traced_save_504023
?
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_rate1Frame_positional_embedding/embedding_1/embeddings6TransformerEncoder/multi_head_attention_1/query/kernel4TransformerEncoder/multi_head_attention_1/query/bias4TransformerEncoder/multi_head_attention_1/key/kernel2TransformerEncoder/multi_head_attention_1/key/bias6TransformerEncoder/multi_head_attention_1/value/kernel4TransformerEncoder/multi_head_attention_1/value/biasATransformerEncoder/multi_head_attention_1/attention_output/kernel?TransformerEncoder/multi_head_attention_1/attention_output/biasdense_3/kerneldense_3/biasdense_4/kerneldense_4/bias.TransformerEncoder/layer_normalization_2/gamma-TransformerEncoder/layer_normalization_2/beta.TransformerEncoder/layer_normalization_3/gamma-TransformerEncoder/layer_normalization_3/betatotalcounttotal_1count_1Adam/dense_5/kernel/mAdam/dense_5/bias/m8Adam/Frame_positional_embedding/embedding_1/embeddings/m=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/m;Adam/TransformerEncoder/multi_head_attention_1/query/bias/m;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/m9Adam/TransformerEncoder/multi_head_attention_1/key/bias/m=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/m;Adam/TransformerEncoder/multi_head_attention_1/value/bias/mHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/mFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/mAdam/dense_3/kernel/mAdam/dense_3/bias/mAdam/dense_4/kernel/mAdam/dense_4/bias/m5Adam/TransformerEncoder/layer_normalization_2/gamma/m4Adam/TransformerEncoder/layer_normalization_2/beta/m5Adam/TransformerEncoder/layer_normalization_3/gamma/m4Adam/TransformerEncoder/layer_normalization_3/beta/mAdam/dense_5/kernel/vAdam/dense_5/bias/v8Adam/Frame_positional_embedding/embedding_1/embeddings/v=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/v;Adam/TransformerEncoder/multi_head_attention_1/query/bias/v;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/v9Adam/TransformerEncoder/multi_head_attention_1/key/bias/v=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/v;Adam/TransformerEncoder/multi_head_attention_1/value/bias/vHAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/vFAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/vAdam/dense_3/kernel/vAdam/dense_3/bias/vAdam/dense_4/kernel/vAdam/dense_4/bias/v5Adam/TransformerEncoder/layer_normalization_2/gamma/v4Adam/TransformerEncoder/layer_normalization_2/beta/v5Adam/TransformerEncoder/layer_normalization_3/gamma/v4Adam/TransformerEncoder/layer_normalization_3/beta/v*N
TinG
E2C*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *+
f&R$
"__inference__traced_restore_504231??
??
?
!__inference__wrapped_model_501273
input_4U
Bvit_frame_positional_embedding_embedding_1_embedding_lookup_501063:	?q
Yvit_transformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:??b
Ovit_transformerencoder_multi_head_attention_1_query_add_readvariableop_resource:	?o
Wvit_transformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??`
Mvit_transformerencoder_multi_head_attention_1_key_add_readvariableop_resource:	?q
Yvit_transformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:??b
Ovit_transformerencoder_multi_head_attention_1_value_add_readvariableop_resource:	?|
dvit_transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??i
Zvit_transformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?Y
Jvit_transformerencoder_layer_normalization_2_mul_3_readvariableop_resource:	?W
Hvit_transformerencoder_layer_normalization_2_add_readvariableop_resource:	?`
Mvit_transformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource:	?Y
Kvit_transformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource:`
Mvit_transformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource:	?Z
Kvit_transformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource:	?Y
Jvit_transformerencoder_layer_normalization_3_mul_3_readvariableop_resource:	?W
Hvit_transformerencoder_layer_normalization_3_add_readvariableop_resource:	?=
*vit_dense_5_matmul_readvariableop_resource:	?9
+vit_dense_5_biasadd_readvariableop_resource:
identity??;vit/Frame_positional_embedding/embedding_1/embedding_lookup??vit/TransformerEncoder/layer_normalization_2/add/ReadVariableOp?Avit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp??vit/TransformerEncoder/layer_normalization_3/add/ReadVariableOp?Avit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp?Qvit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp?[vit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?Dvit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp?Nvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?Fvit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp?Pvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?Fvit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp?Pvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?Bvit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp?Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp?Bvit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp?Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp?"vit/dense_5/BiasAdd/ReadVariableOp?!vit/dense_5/MatMul/ReadVariableOp[
$vit/Frame_positional_embedding/ShapeShapeinput_4*
T0*
_output_shapes
:|
2vit/Frame_positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:~
4vit/Frame_positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4vit/Frame_positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
,vit/Frame_positional_embedding/strided_sliceStridedSlice-vit/Frame_positional_embedding/Shape:output:0;vit/Frame_positional_embedding/strided_slice/stack:output:0=vit/Frame_positional_embedding/strided_slice/stack_1:output:0=vit/Frame_positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskl
*vit/Frame_positional_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*vit/Frame_positional_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
$vit/Frame_positional_embedding/rangeRange3vit/Frame_positional_embedding/range/start:output:05vit/Frame_positional_embedding/strided_slice:output:03vit/Frame_positional_embedding/range/delta:output:0*
_output_shapes
:?
;vit/Frame_positional_embedding/embedding_1/embedding_lookupResourceGatherBvit_frame_positional_embedding_embedding_1_embedding_lookup_501063-vit/Frame_positional_embedding/range:output:0*
Tindices0*U
_classK
IGloc:@vit/Frame_positional_embedding/embedding_1/embedding_lookup/501063*
_output_shapes
:	?*
dtype0?
Dvit/Frame_positional_embedding/embedding_1/embedding_lookup/IdentityIdentityDvit/Frame_positional_embedding/embedding_1/embedding_lookup:output:0*
T0*U
_classK
IGloc:@vit/Frame_positional_embedding/embedding_1/embedding_lookup/501063*
_output_shapes
:	??
Fvit/Frame_positional_embedding/embedding_1/embedding_lookup/Identity_1IdentityMvit/Frame_positional_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	??
"vit/Frame_positional_embedding/addAddV2input_4Ovit/Frame_positional_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????z
#vit/Frame_positional_embedding/CastCastinput_4*

DstT0
*

SrcT0*,
_output_shapes
:??????????
4vit/Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
"vit/Frame_positional_embedding/AnyAny'vit/Frame_positional_embedding/Cast:y:0=vit/Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:?????????
*vit/TransformerEncoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            ?
,vit/TransformerEncoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            ?
,vit/TransformerEncoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
$vit/TransformerEncoder/strided_sliceStridedSlice+vit/Frame_positional_embedding/Any:output:03vit/TransformerEncoder/strided_slice/stack:output:05vit/TransformerEncoder/strided_slice/stack_1:output:05vit/TransformerEncoder/strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
Pvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpYvit_transformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Avit/TransformerEncoder/multi_head_attention_1/query/einsum/EinsumEinsum&vit/Frame_positional_embedding/add:z:0Xvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Fvit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpOvit_transformerencoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7vit/TransformerEncoder/multi_head_attention_1/query/addAddV2Jvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum:output:0Nvit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Nvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpWvit_transformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
?vit/TransformerEncoder/multi_head_attention_1/key/einsum/EinsumEinsum&vit/Frame_positional_embedding/add:z:0Vvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Dvit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpMvit_transformerencoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
5vit/TransformerEncoder/multi_head_attention_1/key/addAddV2Hvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum:output:0Lvit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
Pvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpYvit_transformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Avit/TransformerEncoder/multi_head_attention_1/value/einsum/EinsumEinsum&vit/Frame_positional_embedding/add:z:0Xvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
Fvit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpOvit_transformerencoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
7vit/TransformerEncoder/multi_head_attention_1/value/addAddV2Jvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum:output:0Nvit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????x
3vit/TransformerEncoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
1vit/TransformerEncoder/multi_head_attention_1/MulMul;vit/TransformerEncoder/multi_head_attention_1/query/add:z:0<vit/TransformerEncoder/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
;vit/TransformerEncoder/multi_head_attention_1/einsum/EinsumEinsum9vit/TransformerEncoder/multi_head_attention_1/key/add:z:05vit/TransformerEncoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
<vit/TransformerEncoder/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
8vit/TransformerEncoder/multi_head_attention_1/ExpandDims
ExpandDims-vit/TransformerEncoder/strided_slice:output:0Evit/TransformerEncoder/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
:vit/TransformerEncoder/multi_head_attention_1/softmax/CastCastAvit/TransformerEncoder/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
;vit/TransformerEncoder/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
9vit/TransformerEncoder/multi_head_attention_1/softmax/subSubDvit/TransformerEncoder/multi_head_attention_1/softmax/sub/x:output:0>vit/TransformerEncoder/multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:??????????
;vit/TransformerEncoder/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
9vit/TransformerEncoder/multi_head_attention_1/softmax/mulMul=vit/TransformerEncoder/multi_head_attention_1/softmax/sub:z:0Dvit/TransformerEncoder/multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
9vit/TransformerEncoder/multi_head_attention_1/softmax/addAddV2Dvit/TransformerEncoder/multi_head_attention_1/einsum/Einsum:output:0=vit/TransformerEncoder/multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
=vit/TransformerEncoder/multi_head_attention_1/softmax/SoftmaxSoftmax=vit/TransformerEncoder/multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:??????????
>vit/TransformerEncoder/multi_head_attention_1/dropout/IdentityIdentityGvit/TransformerEncoder/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
=vit/TransformerEncoder/multi_head_attention_1/einsum_1/EinsumEinsumGvit/TransformerEncoder/multi_head_attention_1/dropout/Identity:output:0;vit/TransformerEncoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
[vit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpdvit_transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
Lvit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumFvit/TransformerEncoder/multi_head_attention_1/einsum_1/Einsum:output:0cvit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
Qvit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpZvit_transformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
Bvit/TransformerEncoder/multi_head_attention_1/attention_output/addAddV2Uvit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0Yvit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
vit/TransformerEncoder/addAddV2&vit/Frame_positional_embedding/add:z:0Fvit/TransformerEncoder/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:???????????
2vit/TransformerEncoder/layer_normalization_2/ShapeShapevit/TransformerEncoder/add:z:0*
T0*
_output_shapes
:?
@vit/TransformerEncoder/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bvit/TransformerEncoder/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bvit/TransformerEncoder/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:vit/TransformerEncoder/layer_normalization_2/strided_sliceStridedSlice;vit/TransformerEncoder/layer_normalization_2/Shape:output:0Ivit/TransformerEncoder/layer_normalization_2/strided_slice/stack:output:0Kvit/TransformerEncoder/layer_normalization_2/strided_slice/stack_1:output:0Kvit/TransformerEncoder/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2vit/TransformerEncoder/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
0vit/TransformerEncoder/layer_normalization_2/mulMul;vit/TransformerEncoder/layer_normalization_2/mul/x:output:0Cvit/TransformerEncoder/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
Bvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<vit/TransformerEncoder/layer_normalization_2/strided_slice_1StridedSlice;vit/TransformerEncoder/layer_normalization_2/Shape:output:0Kvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stack:output:0Mvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stack_1:output:0Mvit/TransformerEncoder/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2vit/TransformerEncoder/layer_normalization_2/mul_1Mul4vit/TransformerEncoder/layer_normalization_2/mul:z:0Evit/TransformerEncoder/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Bvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<vit/TransformerEncoder/layer_normalization_2/strided_slice_2StridedSlice;vit/TransformerEncoder/layer_normalization_2/Shape:output:0Kvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stack:output:0Mvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stack_1:output:0Mvit/TransformerEncoder/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4vit/TransformerEncoder/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
2vit/TransformerEncoder/layer_normalization_2/mul_2Mul=vit/TransformerEncoder/layer_normalization_2/mul_2/x:output:0Evit/TransformerEncoder/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: ~
<vit/TransformerEncoder/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :~
<vit/TransformerEncoder/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:vit/TransformerEncoder/layer_normalization_2/Reshape/shapePackEvit/TransformerEncoder/layer_normalization_2/Reshape/shape/0:output:06vit/TransformerEncoder/layer_normalization_2/mul_1:z:06vit/TransformerEncoder/layer_normalization_2/mul_2:z:0Evit/TransformerEncoder/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
4vit/TransformerEncoder/layer_normalization_2/ReshapeReshapevit/TransformerEncoder/add:z:0Cvit/TransformerEncoder/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
8vit/TransformerEncoder/layer_normalization_2/ones/packedPack6vit/TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:|
7vit/TransformerEncoder/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
1vit/TransformerEncoder/layer_normalization_2/onesFillAvit/TransformerEncoder/layer_normalization_2/ones/packed:output:0@vit/TransformerEncoder/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
9vit/TransformerEncoder/layer_normalization_2/zeros/packedPack6vit/TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:}
8vit/TransformerEncoder/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
2vit/TransformerEncoder/layer_normalization_2/zerosFillBvit/TransformerEncoder/layer_normalization_2/zeros/packed:output:0Avit/TransformerEncoder/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????u
2vit/TransformerEncoder/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB w
4vit/TransformerEncoder/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
=vit/TransformerEncoder/layer_normalization_2/FusedBatchNormV3FusedBatchNormV3=vit/TransformerEncoder/layer_normalization_2/Reshape:output:0:vit/TransformerEncoder/layer_normalization_2/ones:output:0;vit/TransformerEncoder/layer_normalization_2/zeros:output:0;vit/TransformerEncoder/layer_normalization_2/Const:output:0=vit/TransformerEncoder/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
6vit/TransformerEncoder/layer_normalization_2/Reshape_1ReshapeAvit/TransformerEncoder/layer_normalization_2/FusedBatchNormV3:y:0;vit/TransformerEncoder/layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
Avit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpJvit_transformerencoder_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
2vit/TransformerEncoder/layer_normalization_2/mul_3Mul?vit/TransformerEncoder/layer_normalization_2/Reshape_1:output:0Ivit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
?vit/TransformerEncoder/layer_normalization_2/add/ReadVariableOpReadVariableOpHvit_transformerencoder_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
0vit/TransformerEncoder/layer_normalization_2/addAddV26vit/TransformerEncoder/layer_normalization_2/mul_3:z:0Gvit/TransformerEncoder/layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpMvit_transformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
:vit/TransformerEncoder/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
:vit/TransformerEncoder/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
;vit/TransformerEncoder/sequential_1/dense_3/Tensordot/ShapeShape4vit/TransformerEncoder/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>vit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2GatherV2Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0Lvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Evit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
@vit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0Nvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
;vit/TransformerEncoder/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
:vit/TransformerEncoder/sequential_1/dense_3/Tensordot/ProdProdGvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
=vit/TransformerEncoder/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
<vit/TransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1ProdIvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1:output:0Fvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Avit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<vit/TransformerEncoder/sequential_1/dense_3/Tensordot/concatConcatV2Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0Jvit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
;vit/TransformerEncoder/sequential_1/dense_3/Tensordot/stackPackCvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Prod:output:0Evit/TransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
?vit/TransformerEncoder/sequential_1/dense_3/Tensordot/transpose	Transpose4vit/TransformerEncoder/layer_normalization_2/add:z:0Evit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
=vit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReshapeReshapeCvit/TransformerEncoder/sequential_1/dense_3/Tensordot/transpose:y:0Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
<vit/TransformerEncoder/sequential_1/dense_3/Tensordot/MatMulMatMulFvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Reshape:output:0Lvit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
=vit/TransformerEncoder/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
Cvit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>vit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1ConcatV2Gvit/TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0Fvit/TransformerEncoder/sequential_1/dense_3/Tensordot/Const_2:output:0Lvit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
5vit/TransformerEncoder/sequential_1/dense_3/TensordotReshapeFvit/TransformerEncoder/sequential_1/dense_3/Tensordot/MatMul:product:0Gvit/TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
Bvit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpKvit_transformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
3vit/TransformerEncoder/sequential_1/dense_3/BiasAddBiasAdd>vit/TransformerEncoder/sequential_1/dense_3/Tensordot:output:0Jvit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????{
6vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
4vit/TransformerEncoder/sequential_1/dense_3/Gelu/mulMul?vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul/x:output:0<vit/TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????|
7vit/TransformerEncoder/sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
8vit/TransformerEncoder/sequential_1/dense_3/Gelu/truedivRealDiv<vit/TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0@vit/TransformerEncoder/sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
4vit/TransformerEncoder/sequential_1/dense_3/Gelu/ErfErf<vit/TransformerEncoder/sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????{
6vit/TransformerEncoder/sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
4vit/TransformerEncoder/sequential_1/dense_3/Gelu/addAddV2?vit/TransformerEncoder/sequential_1/dense_3/Gelu/add/x:output:08vit/TransformerEncoder/sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
6vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul_1Mul8vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul:z:08vit/TransformerEncoder/sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpMvit_transformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
:vit/TransformerEncoder/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
:vit/TransformerEncoder/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
;vit/TransformerEncoder/sequential_1/dense_4/Tensordot/ShapeShape:vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:?
Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>vit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2GatherV2Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0Lvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
Evit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
@vit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0Nvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
;vit/TransformerEncoder/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
:vit/TransformerEncoder/sequential_1/dense_4/Tensordot/ProdProdGvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
=vit/TransformerEncoder/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
<vit/TransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1ProdIvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1:output:0Fvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: ?
Avit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<vit/TransformerEncoder/sequential_1/dense_4/Tensordot/concatConcatV2Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0Jvit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
;vit/TransformerEncoder/sequential_1/dense_4/Tensordot/stackPackCvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Prod:output:0Evit/TransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
?vit/TransformerEncoder/sequential_1/dense_4/Tensordot/transpose	Transpose:vit/TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0Evit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
=vit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReshapeReshapeCvit/TransformerEncoder/sequential_1/dense_4/Tensordot/transpose:y:0Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
<vit/TransformerEncoder/sequential_1/dense_4/Tensordot/MatMulMatMulFvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Reshape:output:0Lvit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
=vit/TransformerEncoder/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
Cvit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
>vit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1ConcatV2Gvit/TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0Fvit/TransformerEncoder/sequential_1/dense_4/Tensordot/Const_2:output:0Lvit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
5vit/TransformerEncoder/sequential_1/dense_4/TensordotReshapeFvit/TransformerEncoder/sequential_1/dense_4/Tensordot/MatMul:product:0Gvit/TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
Bvit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpKvit_transformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
3vit/TransformerEncoder/sequential_1/dense_4/BiasAddBiasAdd>vit/TransformerEncoder/sequential_1/dense_4/Tensordot:output:0Jvit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
vit/TransformerEncoder/add_1AddV24vit/TransformerEncoder/layer_normalization_2/add:z:0<vit/TransformerEncoder/sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:???????????
2vit/TransformerEncoder/layer_normalization_3/ShapeShape vit/TransformerEncoder/add_1:z:0*
T0*
_output_shapes
:?
@vit/TransformerEncoder/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
Bvit/TransformerEncoder/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Bvit/TransformerEncoder/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
:vit/TransformerEncoder/layer_normalization_3/strided_sliceStridedSlice;vit/TransformerEncoder/layer_normalization_3/Shape:output:0Ivit/TransformerEncoder/layer_normalization_3/strided_slice/stack:output:0Kvit/TransformerEncoder/layer_normalization_3/strided_slice/stack_1:output:0Kvit/TransformerEncoder/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskt
2vit/TransformerEncoder/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
0vit/TransformerEncoder/layer_normalization_3/mulMul;vit/TransformerEncoder/layer_normalization_3/mul/x:output:0Cvit/TransformerEncoder/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
Bvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<vit/TransformerEncoder/layer_normalization_3/strided_slice_1StridedSlice;vit/TransformerEncoder/layer_normalization_3/Shape:output:0Kvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stack:output:0Mvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stack_1:output:0Mvit/TransformerEncoder/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
2vit/TransformerEncoder/layer_normalization_3/mul_1Mul4vit/TransformerEncoder/layer_normalization_3/mul:z:0Evit/TransformerEncoder/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
Bvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
Dvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
<vit/TransformerEncoder/layer_normalization_3/strided_slice_2StridedSlice;vit/TransformerEncoder/layer_normalization_3/Shape:output:0Kvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stack:output:0Mvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stack_1:output:0Mvit/TransformerEncoder/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
4vit/TransformerEncoder/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
2vit/TransformerEncoder/layer_normalization_3/mul_2Mul=vit/TransformerEncoder/layer_normalization_3/mul_2/x:output:0Evit/TransformerEncoder/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: ~
<vit/TransformerEncoder/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :~
<vit/TransformerEncoder/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
:vit/TransformerEncoder/layer_normalization_3/Reshape/shapePackEvit/TransformerEncoder/layer_normalization_3/Reshape/shape/0:output:06vit/TransformerEncoder/layer_normalization_3/mul_1:z:06vit/TransformerEncoder/layer_normalization_3/mul_2:z:0Evit/TransformerEncoder/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
4vit/TransformerEncoder/layer_normalization_3/ReshapeReshape vit/TransformerEncoder/add_1:z:0Cvit/TransformerEncoder/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
8vit/TransformerEncoder/layer_normalization_3/ones/packedPack6vit/TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:|
7vit/TransformerEncoder/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
1vit/TransformerEncoder/layer_normalization_3/onesFillAvit/TransformerEncoder/layer_normalization_3/ones/packed:output:0@vit/TransformerEncoder/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
9vit/TransformerEncoder/layer_normalization_3/zeros/packedPack6vit/TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:}
8vit/TransformerEncoder/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
2vit/TransformerEncoder/layer_normalization_3/zerosFillBvit/TransformerEncoder/layer_normalization_3/zeros/packed:output:0Avit/TransformerEncoder/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????u
2vit/TransformerEncoder/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB w
4vit/TransformerEncoder/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
=vit/TransformerEncoder/layer_normalization_3/FusedBatchNormV3FusedBatchNormV3=vit/TransformerEncoder/layer_normalization_3/Reshape:output:0:vit/TransformerEncoder/layer_normalization_3/ones:output:0;vit/TransformerEncoder/layer_normalization_3/zeros:output:0;vit/TransformerEncoder/layer_normalization_3/Const:output:0=vit/TransformerEncoder/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
6vit/TransformerEncoder/layer_normalization_3/Reshape_1ReshapeAvit/TransformerEncoder/layer_normalization_3/FusedBatchNormV3:y:0;vit/TransformerEncoder/layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
Avit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpJvit_transformerencoder_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
2vit/TransformerEncoder/layer_normalization_3/mul_3Mul?vit/TransformerEncoder/layer_normalization_3/Reshape_1:output:0Ivit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
?vit/TransformerEncoder/layer_normalization_3/add/ReadVariableOpReadVariableOpHvit_transformerencoder_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
0vit/TransformerEncoder/layer_normalization_3/addAddV26vit/TransformerEncoder/layer_normalization_3/mul_3:z:0Gvit/TransformerEncoder/layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????r
0vit/global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
vit/global_max_pooling1d_1/MaxMax4vit/TransformerEncoder/layer_normalization_3/add:z:09vit/global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????~
vit/dropout_1/IdentityIdentity'vit/global_max_pooling1d_1/Max:output:0*
T0*(
_output_shapes
:???????????
!vit/dense_5/MatMul/ReadVariableOpReadVariableOp*vit_dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
vit/dense_5/MatMulMatMulvit/dropout_1/Identity:output:0)vit/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
"vit/dense_5/BiasAdd/ReadVariableOpReadVariableOp+vit_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
vit/dense_5/BiasAddBiasAddvit/dense_5/MatMul:product:0*vit/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????n
vit/dense_5/SoftmaxSoftmaxvit/dense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????l
IdentityIdentityvit/dense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp<^vit/Frame_positional_embedding/embedding_1/embedding_lookup@^vit/TransformerEncoder/layer_normalization_2/add/ReadVariableOpB^vit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp@^vit/TransformerEncoder/layer_normalization_3/add/ReadVariableOpB^vit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpR^vit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp\^vit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpE^vit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpO^vit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpG^vit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpQ^vit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpG^vit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpQ^vit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpC^vit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpE^vit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOpC^vit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpE^vit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp#^vit/dense_5/BiasAdd/ReadVariableOp"^vit/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2z
;vit/Frame_positional_embedding/embedding_1/embedding_lookup;vit/Frame_positional_embedding/embedding_1/embedding_lookup2?
?vit/TransformerEncoder/layer_normalization_2/add/ReadVariableOp?vit/TransformerEncoder/layer_normalization_2/add/ReadVariableOp2?
Avit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOpAvit/TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp2?
?vit/TransformerEncoder/layer_normalization_3/add/ReadVariableOp?vit/TransformerEncoder/layer_normalization_3/add/ReadVariableOp2?
Avit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpAvit/TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp2?
Qvit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpQvit/TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
[vit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp[vit/TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
Dvit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpDvit/TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp2?
Nvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpNvit/TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
Fvit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpFvit/TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp2?
Pvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpPvit/TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
Fvit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpFvit/TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp2?
Pvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpPvit/TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2?
Bvit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpBvit/TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
Dvit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOpDvit/TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp2?
Bvit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpBvit/TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp2?
Dvit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOpDvit/TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp2H
"vit/dense_5/BiasAdd/ReadVariableOp"vit/dense_5/BiasAdd/ReadVariableOp2F
!vit/dense_5/MatMul/ReadVariableOp!vit/dense_5/MatMul/ReadVariableOp:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
?

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_501844

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
S
7__inference_global_max_pooling1d_1_layer_call_fn_503509

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:??????????????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?&
?
?__inference_vit_layer_call_and_return_conditional_losses_502229

inputs4
!frame_positional_embedding_502182:	?1
transformerencoder_502188:??,
transformerencoder_502190:	?1
transformerencoder_502192:??,
transformerencoder_502194:	?1
transformerencoder_502196:??,
transformerencoder_502198:	?1
transformerencoder_502200:??(
transformerencoder_502202:	?(
transformerencoder_502204:	?(
transformerencoder_502206:	?,
transformerencoder_502208:	?'
transformerencoder_502210:,
transformerencoder_502212:	?(
transformerencoder_502214:	?(
transformerencoder_502216:	?(
transformerencoder_502218:	?!
dense_5_502223:	?
dense_5_502225:
identity??2Frame_positional_embedding/StatefulPartitionedCall?*TransformerEncoder/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
2Frame_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs!frame_positional_embedding_502182*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511u
Frame_positional_embedding/CastCastinputs*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:??????????
*TransformerEncoder/StatefulPartitionedCallStatefulPartitionedCall;Frame_positional_embedding/StatefulPartitionedCall:output:0'Frame_positional_embedding/Any:output:0transformerencoder_502188transformerencoder_502190transformerencoder_502192transformerencoder_502194transformerencoder_502196transformerencoder_502198transformerencoder_502200transformerencoder_502202transformerencoder_502204transformerencoder_502206transformerencoder_502208transformerencoder_502210transformerencoder_502212transformerencoder_502214transformerencoder_502216transformerencoder_502218*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_502091?
&global_max_pooling1d_1/PartitionedCallPartitionedCall3TransformerEncoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501844?
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_5_502223dense_5_502225*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_501766w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp3^Frame_positional_embedding/StatefulPartitionedCall+^TransformerEncoder/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2h
2Frame_positional_embedding/StatefulPartitionedCall2Frame_positional_embedding/StatefulPartitionedCall2X
*TransformerEncoder/StatefulPartitionedCall*TransformerEncoder/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_503588

inputs
unknown:	?
	unknown_0:
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_501421t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_503562

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
c
*__inference_dropout_1_layer_call_fn_503525

inputs
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501844p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?4
"__inference__traced_restore_504231
file_prefix2
assignvariableop_dense_5_kernel:	?-
assignvariableop_1_dense_5_bias:&
assignvariableop_2_adam_iter:	 (
assignvariableop_3_adam_beta_1: (
assignvariableop_4_adam_beta_2: '
assignvariableop_5_adam_decay: /
%assignvariableop_6_adam_learning_rate: W
Dassignvariableop_7_frame_positional_embedding_embedding_1_embeddings:	?a
Iassignvariableop_8_transformerencoder_multi_head_attention_1_query_kernel:??Z
Gassignvariableop_9_transformerencoder_multi_head_attention_1_query_bias:	?`
Hassignvariableop_10_transformerencoder_multi_head_attention_1_key_kernel:??Y
Fassignvariableop_11_transformerencoder_multi_head_attention_1_key_bias:	?b
Jassignvariableop_12_transformerencoder_multi_head_attention_1_value_kernel:??[
Hassignvariableop_13_transformerencoder_multi_head_attention_1_value_bias:	?m
Uassignvariableop_14_transformerencoder_multi_head_attention_1_attention_output_kernel:??b
Sassignvariableop_15_transformerencoder_multi_head_attention_1_attention_output_bias:	?5
"assignvariableop_16_dense_3_kernel:	?.
 assignvariableop_17_dense_3_bias:5
"assignvariableop_18_dense_4_kernel:	?/
 assignvariableop_19_dense_4_bias:	?Q
Bassignvariableop_20_transformerencoder_layer_normalization_2_gamma:	?P
Aassignvariableop_21_transformerencoder_layer_normalization_2_beta:	?Q
Bassignvariableop_22_transformerencoder_layer_normalization_3_gamma:	?P
Aassignvariableop_23_transformerencoder_layer_normalization_3_beta:	?#
assignvariableop_24_total: #
assignvariableop_25_count: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: <
)assignvariableop_28_adam_dense_5_kernel_m:	?5
'assignvariableop_29_adam_dense_5_bias_m:_
Lassignvariableop_30_adam_frame_positional_embedding_embedding_1_embeddings_m:	?i
Qassignvariableop_31_adam_transformerencoder_multi_head_attention_1_query_kernel_m:??b
Oassignvariableop_32_adam_transformerencoder_multi_head_attention_1_query_bias_m:	?g
Oassignvariableop_33_adam_transformerencoder_multi_head_attention_1_key_kernel_m:??`
Massignvariableop_34_adam_transformerencoder_multi_head_attention_1_key_bias_m:	?i
Qassignvariableop_35_adam_transformerencoder_multi_head_attention_1_value_kernel_m:??b
Oassignvariableop_36_adam_transformerencoder_multi_head_attention_1_value_bias_m:	?t
\assignvariableop_37_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_m:??i
Zassignvariableop_38_adam_transformerencoder_multi_head_attention_1_attention_output_bias_m:	?<
)assignvariableop_39_adam_dense_3_kernel_m:	?5
'assignvariableop_40_adam_dense_3_bias_m:<
)assignvariableop_41_adam_dense_4_kernel_m:	?6
'assignvariableop_42_adam_dense_4_bias_m:	?X
Iassignvariableop_43_adam_transformerencoder_layer_normalization_2_gamma_m:	?W
Hassignvariableop_44_adam_transformerencoder_layer_normalization_2_beta_m:	?X
Iassignvariableop_45_adam_transformerencoder_layer_normalization_3_gamma_m:	?W
Hassignvariableop_46_adam_transformerencoder_layer_normalization_3_beta_m:	?<
)assignvariableop_47_adam_dense_5_kernel_v:	?5
'assignvariableop_48_adam_dense_5_bias_v:_
Lassignvariableop_49_adam_frame_positional_embedding_embedding_1_embeddings_v:	?i
Qassignvariableop_50_adam_transformerencoder_multi_head_attention_1_query_kernel_v:??b
Oassignvariableop_51_adam_transformerencoder_multi_head_attention_1_query_bias_v:	?g
Oassignvariableop_52_adam_transformerencoder_multi_head_attention_1_key_kernel_v:??`
Massignvariableop_53_adam_transformerencoder_multi_head_attention_1_key_bias_v:	?i
Qassignvariableop_54_adam_transformerencoder_multi_head_attention_1_value_kernel_v:??b
Oassignvariableop_55_adam_transformerencoder_multi_head_attention_1_value_bias_v:	?t
\assignvariableop_56_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_v:??i
Zassignvariableop_57_adam_transformerencoder_multi_head_attention_1_attention_output_bias_v:	?<
)assignvariableop_58_adam_dense_3_kernel_v:	?5
'assignvariableop_59_adam_dense_3_bias_v:<
)assignvariableop_60_adam_dense_4_kernel_v:	?6
'assignvariableop_61_adam_dense_4_bias_v:	?X
Iassignvariableop_62_adam_transformerencoder_layer_normalization_2_gamma_v:	?W
Hassignvariableop_63_adam_transformerencoder_layer_normalization_2_beta_v:	?X
Iassignvariableop_64_adam_transformerencoder_layer_normalization_3_gamma_v:	?W
Hassignvariableop_65_adam_transformerencoder_layer_normalization_3_beta_v:	?
identity_67??AssignVariableOp?AssignVariableOp_1?AssignVariableOp_10?AssignVariableOp_11?AssignVariableOp_12?AssignVariableOp_13?AssignVariableOp_14?AssignVariableOp_15?AssignVariableOp_16?AssignVariableOp_17?AssignVariableOp_18?AssignVariableOp_19?AssignVariableOp_2?AssignVariableOp_20?AssignVariableOp_21?AssignVariableOp_22?AssignVariableOp_23?AssignVariableOp_24?AssignVariableOp_25?AssignVariableOp_26?AssignVariableOp_27?AssignVariableOp_28?AssignVariableOp_29?AssignVariableOp_3?AssignVariableOp_30?AssignVariableOp_31?AssignVariableOp_32?AssignVariableOp_33?AssignVariableOp_34?AssignVariableOp_35?AssignVariableOp_36?AssignVariableOp_37?AssignVariableOp_38?AssignVariableOp_39?AssignVariableOp_4?AssignVariableOp_40?AssignVariableOp_41?AssignVariableOp_42?AssignVariableOp_43?AssignVariableOp_44?AssignVariableOp_45?AssignVariableOp_46?AssignVariableOp_47?AssignVariableOp_48?AssignVariableOp_49?AssignVariableOp_5?AssignVariableOp_50?AssignVariableOp_51?AssignVariableOp_52?AssignVariableOp_53?AssignVariableOp_54?AssignVariableOp_55?AssignVariableOp_56?AssignVariableOp_57?AssignVariableOp_58?AssignVariableOp_59?AssignVariableOp_6?AssignVariableOp_60?AssignVariableOp_61?AssignVariableOp_62?AssignVariableOp_63?AssignVariableOp_64?AssignVariableOp_65?AssignVariableOp_7?AssignVariableOp_8?AssignVariableOp_9?
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?
value?B?CB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?
value?B?CB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*?
_output_shapes?
?:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*Q
dtypesG
E2C	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0	*
_output_shapes
:?
AssignVariableOp_2AssignVariableOpassignvariableop_2_adam_iterIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_3AssignVariableOpassignvariableop_3_adam_beta_1Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_4AssignVariableOpassignvariableop_4_adam_beta_2Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_5AssignVariableOpassignvariableop_5_adam_decayIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_6AssignVariableOp%assignvariableop_6_adam_learning_rateIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_7AssignVariableOpDassignvariableop_7_frame_positional_embedding_embedding_1_embeddingsIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_8AssignVariableOpIassignvariableop_8_transformerencoder_multi_head_attention_1_query_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_9AssignVariableOpGassignvariableop_9_transformerencoder_multi_head_attention_1_query_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_10AssignVariableOpHassignvariableop_10_transformerencoder_multi_head_attention_1_key_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_11AssignVariableOpFassignvariableop_11_transformerencoder_multi_head_attention_1_key_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_12AssignVariableOpJassignvariableop_12_transformerencoder_multi_head_attention_1_value_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_13AssignVariableOpHassignvariableop_13_transformerencoder_multi_head_attention_1_value_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_14AssignVariableOpUassignvariableop_14_transformerencoder_multi_head_attention_1_attention_output_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_15AssignVariableOpSassignvariableop_15_transformerencoder_multi_head_attention_1_attention_output_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_16AssignVariableOp"assignvariableop_16_dense_3_kernelIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_17AssignVariableOp assignvariableop_17_dense_3_biasIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_18AssignVariableOp"assignvariableop_18_dense_4_kernelIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_19AssignVariableOp assignvariableop_19_dense_4_biasIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_20AssignVariableOpBassignvariableop_20_transformerencoder_layer_normalization_2_gammaIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_21AssignVariableOpAassignvariableop_21_transformerencoder_layer_normalization_2_betaIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_22AssignVariableOpBassignvariableop_22_transformerencoder_layer_normalization_3_gammaIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_23AssignVariableOpAassignvariableop_23_transformerencoder_layer_normalization_3_betaIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_24AssignVariableOpassignvariableop_24_totalIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_25AssignVariableOpassignvariableop_25_countIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_28AssignVariableOp)assignvariableop_28_adam_dense_5_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_29AssignVariableOp'assignvariableop_29_adam_dense_5_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_30AssignVariableOpLassignvariableop_30_adam_frame_positional_embedding_embedding_1_embeddings_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_31AssignVariableOpQassignvariableop_31_adam_transformerencoder_multi_head_attention_1_query_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_32AssignVariableOpOassignvariableop_32_adam_transformerencoder_multi_head_attention_1_query_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_33AssignVariableOpOassignvariableop_33_adam_transformerencoder_multi_head_attention_1_key_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_34AssignVariableOpMassignvariableop_34_adam_transformerencoder_multi_head_attention_1_key_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_35AssignVariableOpQassignvariableop_35_adam_transformerencoder_multi_head_attention_1_value_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_36AssignVariableOpOassignvariableop_36_adam_transformerencoder_multi_head_attention_1_value_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_37AssignVariableOp\assignvariableop_37_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_38AssignVariableOpZassignvariableop_38_adam_transformerencoder_multi_head_attention_1_attention_output_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_39AssignVariableOp)assignvariableop_39_adam_dense_3_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_40AssignVariableOp'assignvariableop_40_adam_dense_3_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_41AssignVariableOp)assignvariableop_41_adam_dense_4_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_42AssignVariableOp'assignvariableop_42_adam_dense_4_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_43AssignVariableOpIassignvariableop_43_adam_transformerencoder_layer_normalization_2_gamma_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_44AssignVariableOpHassignvariableop_44_adam_transformerencoder_layer_normalization_2_beta_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_45AssignVariableOpIassignvariableop_45_adam_transformerencoder_layer_normalization_3_gamma_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_46AssignVariableOpHassignvariableop_46_adam_transformerencoder_layer_normalization_3_beta_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_5_kernel_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_48AssignVariableOp'assignvariableop_48_adam_dense_5_bias_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_49AssignVariableOpLassignvariableop_49_adam_frame_positional_embedding_embedding_1_embeddings_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_50AssignVariableOpQassignvariableop_50_adam_transformerencoder_multi_head_attention_1_query_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_51AssignVariableOpOassignvariableop_51_adam_transformerencoder_multi_head_attention_1_query_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_52AssignVariableOpOassignvariableop_52_adam_transformerencoder_multi_head_attention_1_key_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_53AssignVariableOpMassignvariableop_53_adam_transformerencoder_multi_head_attention_1_key_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_54AssignVariableOpQassignvariableop_54_adam_transformerencoder_multi_head_attention_1_value_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_55AssignVariableOpOassignvariableop_55_adam_transformerencoder_multi_head_attention_1_value_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_56AssignVariableOp\assignvariableop_56_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_57AssignVariableOpZassignvariableop_57_adam_transformerencoder_multi_head_attention_1_attention_output_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_58AssignVariableOp)assignvariableop_58_adam_dense_3_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_59AssignVariableOp'assignvariableop_59_adam_dense_3_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_60AssignVariableOp)assignvariableop_60_adam_dense_4_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_61AssignVariableOp'assignvariableop_61_adam_dense_4_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_62AssignVariableOpIassignvariableop_62_adam_transformerencoder_layer_normalization_2_gamma_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_63AssignVariableOpHassignvariableop_63_adam_transformerencoder_layer_normalization_2_beta_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_64AssignVariableOpIassignvariableop_64_adam_transformerencoder_layer_normalization_3_gamma_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:?
AssignVariableOp_65AssignVariableOpHassignvariableop_65_adam_transformerencoder_layer_normalization_3_beta_vIdentity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ?
Identity_66Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_67IdentityIdentity_66:output:0^NoOp_1*
T0*
_output_shapes
: ?
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_67Identity_67:output:0*?
_input_shapes?
?: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
?
?
-__inference_sequential_1_layer_call_fn_501445
dense_3_input
unknown:	?
	unknown_0:
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_501421t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_3_input
?
?
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_503031

inputs6
#embedding_1_embedding_lookup_503024:	?
identity??embedding_1/embedding_lookup;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_503024range:output:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/503024*
_output_shapes
:	?*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/503024*
_output_shapes
:	??
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?}
addAddV2inputs0embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:??????????e
NoOpNoOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
$__inference_vit_layer_call_fn_501814
input_4
unknown:	?!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_vit_layer_call_and_return_conditional_losses_501773o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
??
?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503302

inputs
mask
Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_query_add_readvariableop_resource:	?X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??I
6multi_head_attention_1_key_add_readvariableop_resource:	?Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_value_add_readvariableop_resource:	?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
6sequential_1_dense_4_tensordot_readvariableop_resource:	?C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?-sequential_1/dense_4/Tensordot/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSlicemaskstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!multi_head_attention_1/ExpandDims
ExpandDimsstrided_slice:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:??????????
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
addAddV2inputs/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
$sequential_1/dense_3/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transposelayer_normalization_2/add:z:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
sequential_1/dense_3/Gelu/mulMul(sequential_1/dense_3/Gelu/mul/x:output:0%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????e
 sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
!sequential_1/dense_3/Gelu/truedivRealDiv%sequential_1/dense_3/BiasAdd:output:0)sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/ErfErf%sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
sequential_1/dense_3/Gelu/addAddV2(sequential_1/dense_3/Gelu/add/x:output:0!sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/mul_1Mul!sequential_1/dense_3/Gelu/mul:z:0!sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
$sequential_1/dense_4/Tensordot/ShapeShape#sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_4/Tensordot/transpose	Transpose#sequential_1/dense_3/Gelu/mul_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
add_1AddV2layer_normalization_2/add:z:0%sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????q
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
??
?
?__inference_vit_layer_call_and_return_conditional_losses_502961

inputsQ
>frame_positional_embedding_embedding_1_embedding_lookup_502737:	?m
Utransformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:??^
Ktransformerencoder_multi_head_attention_1_query_add_readvariableop_resource:	?k
Stransformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??\
Itransformerencoder_multi_head_attention_1_key_add_readvariableop_resource:	?m
Utransformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:??^
Ktransformerencoder_multi_head_attention_1_value_add_readvariableop_resource:	?x
`transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??e
Vtransformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?U
Ftransformerencoder_layer_normalization_2_mul_3_readvariableop_resource:	?S
Dtransformerencoder_layer_normalization_2_add_readvariableop_resource:	?\
Itransformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource:	?U
Gtransformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource:\
Itransformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource:	?V
Gtransformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource:	?U
Ftransformerencoder_layer_normalization_3_mul_3_readvariableop_resource:	?S
Dtransformerencoder_layer_normalization_3_add_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?5
'dense_5_biasadd_readvariableop_resource:
identity??7Frame_positional_embedding/embedding_1/embedding_lookup?;TransformerEncoder/layer_normalization_2/add/ReadVariableOp?=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp?;TransformerEncoder/layer_normalization_3/add/ReadVariableOp?=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp?MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp?WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp?JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp?LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp?LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp?@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp?>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp?@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpV
 Frame_positional_embedding/ShapeShapeinputs*
T0*
_output_shapes
:x
.Frame_positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0Frame_positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0Frame_positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(Frame_positional_embedding/strided_sliceStridedSlice)Frame_positional_embedding/Shape:output:07Frame_positional_embedding/strided_slice/stack:output:09Frame_positional_embedding/strided_slice/stack_1:output:09Frame_positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Frame_positional_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : h
&Frame_positional_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
 Frame_positional_embedding/rangeRange/Frame_positional_embedding/range/start:output:01Frame_positional_embedding/strided_slice:output:0/Frame_positional_embedding/range/delta:output:0*
_output_shapes
:?
7Frame_positional_embedding/embedding_1/embedding_lookupResourceGather>frame_positional_embedding_embedding_1_embedding_lookup_502737)Frame_positional_embedding/range:output:0*
Tindices0*Q
_classG
ECloc:@Frame_positional_embedding/embedding_1/embedding_lookup/502737*
_output_shapes
:	?*
dtype0?
@Frame_positional_embedding/embedding_1/embedding_lookup/IdentityIdentity@Frame_positional_embedding/embedding_1/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@Frame_positional_embedding/embedding_1/embedding_lookup/502737*
_output_shapes
:	??
BFrame_positional_embedding/embedding_1/embedding_lookup/Identity_1IdentityIFrame_positional_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	??
Frame_positional_embedding/addAddV2inputsKFrame_positional_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????u
Frame_positional_embedding/CastCastinputs*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:?????????{
&TransformerEncoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            }
(TransformerEncoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            }
(TransformerEncoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
 TransformerEncoder/strided_sliceStridedSlice'Frame_positional_embedding/Any:output:0/TransformerEncoder/strided_slice/stack:output:01TransformerEncoder/strided_slice/stack_1:output:01TransformerEncoder/strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpUtransformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
=TransformerEncoder/multi_head_attention_1/query/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0TTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpKtransformerencoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3TransformerEncoder/multi_head_attention_1/query/addAddV2FTransformerEncoder/multi_head_attention_1/query/einsum/Einsum:output:0JTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpStransformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
;TransformerEncoder/multi_head_attention_1/key/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0RTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpItransformerencoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
1TransformerEncoder/multi_head_attention_1/key/addAddV2DTransformerEncoder/multi_head_attention_1/key/einsum/Einsum:output:0HTransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpUtransformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
=TransformerEncoder/multi_head_attention_1/value/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0TTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpKtransformerencoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3TransformerEncoder/multi_head_attention_1/value/addAddV2FTransformerEncoder/multi_head_attention_1/value/einsum/Einsum:output:0JTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????t
/TransformerEncoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
-TransformerEncoder/multi_head_attention_1/MulMul7TransformerEncoder/multi_head_attention_1/query/add:z:08TransformerEncoder/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
7TransformerEncoder/multi_head_attention_1/einsum/EinsumEinsum5TransformerEncoder/multi_head_attention_1/key/add:z:01TransformerEncoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
8TransformerEncoder/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4TransformerEncoder/multi_head_attention_1/ExpandDims
ExpandDims)TransformerEncoder/strided_slice:output:0ATransformerEncoder/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
6TransformerEncoder/multi_head_attention_1/softmax/CastCast=TransformerEncoder/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????|
7TransformerEncoder/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
5TransformerEncoder/multi_head_attention_1/softmax/subSub@TransformerEncoder/multi_head_attention_1/softmax/sub/x:output:0:TransformerEncoder/multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????|
7TransformerEncoder/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
5TransformerEncoder/multi_head_attention_1/softmax/mulMul9TransformerEncoder/multi_head_attention_1/softmax/sub:z:0@TransformerEncoder/multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
5TransformerEncoder/multi_head_attention_1/softmax/addAddV2@TransformerEncoder/multi_head_attention_1/einsum/Einsum:output:09TransformerEncoder/multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
9TransformerEncoder/multi_head_attention_1/softmax/SoftmaxSoftmax9TransformerEncoder/multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:??????????
?TransformerEncoder/multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
=TransformerEncoder/multi_head_attention_1/dropout/dropout/MulMulCTransformerEncoder/multi_head_attention_1/softmax/Softmax:softmax:0HTransformerEncoder/multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:??????????
?TransformerEncoder/multi_head_attention_1/dropout/dropout/ShapeShapeCTransformerEncoder/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
VTransformerEncoder/multi_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniformHTransformerEncoder/multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0*

seed2?
HTransformerEncoder/multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
FTransformerEncoder/multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqual_TransformerEncoder/multi_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0QTransformerEncoder/multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:??????????
>TransformerEncoder/multi_head_attention_1/dropout/dropout/CastCastJTransformerEncoder/multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
?TransformerEncoder/multi_head_attention_1/dropout/dropout/Mul_1MulATransformerEncoder/multi_head_attention_1/dropout/dropout/Mul:z:0BTransformerEncoder/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:??????????
9TransformerEncoder/multi_head_attention_1/einsum_1/EinsumEinsumCTransformerEncoder/multi_head_attention_1/dropout/dropout/Mul_1:z:07TransformerEncoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp`transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
HTransformerEncoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumBTransformerEncoder/multi_head_attention_1/einsum_1/Einsum:output:0_TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpVtransformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
>TransformerEncoder/multi_head_attention_1/attention_output/addAddV2QTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0UTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
TransformerEncoder/addAddV2"Frame_positional_embedding/add:z:0BTransformerEncoder/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????x
.TransformerEncoder/layer_normalization_2/ShapeShapeTransformerEncoder/add:z:0*
T0*
_output_shapes
:?
<TransformerEncoder/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>TransformerEncoder/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>TransformerEncoder/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/layer_normalization_2/strided_sliceStridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0ETransformerEncoder/layer_normalization_2/strided_slice/stack:output:0GTransformerEncoder/layer_normalization_2/strided_slice/stack_1:output:0GTransformerEncoder/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.TransformerEncoder/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
,TransformerEncoder/layer_normalization_2/mulMul7TransformerEncoder/layer_normalization_2/mul/x:output:0?TransformerEncoder/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_2/strided_slice_1StridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0GTransformerEncoder/layer_normalization_2/strided_slice_1/stack:output:0ITransformerEncoder/layer_normalization_2/strided_slice_1/stack_1:output:0ITransformerEncoder/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.TransformerEncoder/layer_normalization_2/mul_1Mul0TransformerEncoder/layer_normalization_2/mul:z:0ATransformerEncoder/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_2/strided_slice_2StridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0GTransformerEncoder/layer_normalization_2/strided_slice_2/stack:output:0ITransformerEncoder/layer_normalization_2/strided_slice_2/stack_1:output:0ITransformerEncoder/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0TransformerEncoder/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
.TransformerEncoder/layer_normalization_2/mul_2Mul9TransformerEncoder/layer_normalization_2/mul_2/x:output:0ATransformerEncoder/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: z
8TransformerEncoder/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :z
8TransformerEncoder/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
6TransformerEncoder/layer_normalization_2/Reshape/shapePackATransformerEncoder/layer_normalization_2/Reshape/shape/0:output:02TransformerEncoder/layer_normalization_2/mul_1:z:02TransformerEncoder/layer_normalization_2/mul_2:z:0ATransformerEncoder/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
0TransformerEncoder/layer_normalization_2/ReshapeReshapeTransformerEncoder/add:z:0?TransformerEncoder/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
4TransformerEncoder/layer_normalization_2/ones/packedPack2TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:x
3TransformerEncoder/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
-TransformerEncoder/layer_normalization_2/onesFill=TransformerEncoder/layer_normalization_2/ones/packed:output:0<TransformerEncoder/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
5TransformerEncoder/layer_normalization_2/zeros/packedPack2TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:y
4TransformerEncoder/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.TransformerEncoder/layer_normalization_2/zerosFill>TransformerEncoder/layer_normalization_2/zeros/packed:output:0=TransformerEncoder/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????q
.TransformerEncoder/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB s
0TransformerEncoder/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
9TransformerEncoder/layer_normalization_2/FusedBatchNormV3FusedBatchNormV39TransformerEncoder/layer_normalization_2/Reshape:output:06TransformerEncoder/layer_normalization_2/ones:output:07TransformerEncoder/layer_normalization_2/zeros:output:07TransformerEncoder/layer_normalization_2/Const:output:09TransformerEncoder/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
2TransformerEncoder/layer_normalization_2/Reshape_1Reshape=TransformerEncoder/layer_normalization_2/FusedBatchNormV3:y:07TransformerEncoder/layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpFtransformerencoder_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.TransformerEncoder/layer_normalization_2/mul_3Mul;TransformerEncoder/layer_normalization_2/Reshape_1:output:0ETransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
;TransformerEncoder/layer_normalization_2/add/ReadVariableOpReadVariableOpDtransformerencoder_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,TransformerEncoder/layer_normalization_2/addAddV22TransformerEncoder/layer_normalization_2/mul_3:z:0CTransformerEncoder/layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpItransformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
6TransformerEncoder/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
7TransformerEncoder/sequential_1/dense_3/Tensordot/ShapeShape0TransformerEncoder/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
?TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2GatherV2@TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
ATransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2@TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0JTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
6TransformerEncoder/sequential_1/dense_3/Tensordot/ProdProdCTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0@TransformerEncoder/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
9TransformerEncoder/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
8TransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1ProdETransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1:output:0BTransformerEncoder/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=TransformerEncoder/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
8TransformerEncoder/sequential_1/dense_3/Tensordot/concatConcatV2?TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0FTransformerEncoder/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_3/Tensordot/stackPack?TransformerEncoder/sequential_1/dense_3/Tensordot/Prod:output:0ATransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
;TransformerEncoder/sequential_1/dense_3/Tensordot/transpose	Transpose0TransformerEncoder/layer_normalization_2/add:z:0ATransformerEncoder/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
9TransformerEncoder/sequential_1/dense_3/Tensordot/ReshapeReshape?TransformerEncoder/sequential_1/dense_3/Tensordot/transpose:y:0@TransformerEncoder/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
8TransformerEncoder/sequential_1/dense_3/Tensordot/MatMulMatMulBTransformerEncoder/sequential_1/dense_3/Tensordot/Reshape:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9TransformerEncoder/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
?TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1ConcatV2CTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0BTransformerEncoder/sequential_1/dense_3/Tensordot/Const_2:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
1TransformerEncoder/sequential_1/dense_3/TensordotReshapeBTransformerEncoder/sequential_1/dense_3/Tensordot/MatMul:product:0CTransformerEncoder/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpGtransformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
/TransformerEncoder/sequential_1/dense_3/BiasAddBiasAdd:TransformerEncoder/sequential_1/dense_3/Tensordot:output:0FTransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????w
2TransformerEncoder/sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
0TransformerEncoder/sequential_1/dense_3/Gelu/mulMul;TransformerEncoder/sequential_1/dense_3/Gelu/mul/x:output:08TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????x
3TransformerEncoder/sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
4TransformerEncoder/sequential_1/dense_3/Gelu/truedivRealDiv8TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0<TransformerEncoder/sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
0TransformerEncoder/sequential_1/dense_3/Gelu/ErfErf8TransformerEncoder/sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????w
2TransformerEncoder/sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
0TransformerEncoder/sequential_1/dense_3/Gelu/addAddV2;TransformerEncoder/sequential_1/dense_3/Gelu/add/x:output:04TransformerEncoder/sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
2TransformerEncoder/sequential_1/dense_3/Gelu/mul_1Mul4TransformerEncoder/sequential_1/dense_3/Gelu/mul:z:04TransformerEncoder/sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpItransformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
6TransformerEncoder/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
7TransformerEncoder/sequential_1/dense_4/Tensordot/ShapeShape6TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:?
?TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2GatherV2@TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
ATransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2@TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0JTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
6TransformerEncoder/sequential_1/dense_4/Tensordot/ProdProdCTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0@TransformerEncoder/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
9TransformerEncoder/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
8TransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1ProdETransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1:output:0BTransformerEncoder/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=TransformerEncoder/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
8TransformerEncoder/sequential_1/dense_4/Tensordot/concatConcatV2?TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0FTransformerEncoder/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_4/Tensordot/stackPack?TransformerEncoder/sequential_1/dense_4/Tensordot/Prod:output:0ATransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
;TransformerEncoder/sequential_1/dense_4/Tensordot/transpose	Transpose6TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0ATransformerEncoder/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
9TransformerEncoder/sequential_1/dense_4/Tensordot/ReshapeReshape?TransformerEncoder/sequential_1/dense_4/Tensordot/transpose:y:0@TransformerEncoder/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
8TransformerEncoder/sequential_1/dense_4/Tensordot/MatMulMatMulBTransformerEncoder/sequential_1/dense_4/Tensordot/Reshape:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9TransformerEncoder/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
?TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1ConcatV2CTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0BTransformerEncoder/sequential_1/dense_4/Tensordot/Const_2:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
1TransformerEncoder/sequential_1/dense_4/TensordotReshapeBTransformerEncoder/sequential_1/dense_4/Tensordot/MatMul:product:0CTransformerEncoder/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpGtransformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/TransformerEncoder/sequential_1/dense_4/BiasAddBiasAdd:TransformerEncoder/sequential_1/dense_4/Tensordot:output:0FTransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
TransformerEncoder/add_1AddV20TransformerEncoder/layer_normalization_2/add:z:08TransformerEncoder/sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????z
.TransformerEncoder/layer_normalization_3/ShapeShapeTransformerEncoder/add_1:z:0*
T0*
_output_shapes
:?
<TransformerEncoder/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>TransformerEncoder/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>TransformerEncoder/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/layer_normalization_3/strided_sliceStridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0ETransformerEncoder/layer_normalization_3/strided_slice/stack:output:0GTransformerEncoder/layer_normalization_3/strided_slice/stack_1:output:0GTransformerEncoder/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.TransformerEncoder/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
,TransformerEncoder/layer_normalization_3/mulMul7TransformerEncoder/layer_normalization_3/mul/x:output:0?TransformerEncoder/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_3/strided_slice_1StridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0GTransformerEncoder/layer_normalization_3/strided_slice_1/stack:output:0ITransformerEncoder/layer_normalization_3/strided_slice_1/stack_1:output:0ITransformerEncoder/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.TransformerEncoder/layer_normalization_3/mul_1Mul0TransformerEncoder/layer_normalization_3/mul:z:0ATransformerEncoder/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_3/strided_slice_2StridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0GTransformerEncoder/layer_normalization_3/strided_slice_2/stack:output:0ITransformerEncoder/layer_normalization_3/strided_slice_2/stack_1:output:0ITransformerEncoder/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0TransformerEncoder/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
.TransformerEncoder/layer_normalization_3/mul_2Mul9TransformerEncoder/layer_normalization_3/mul_2/x:output:0ATransformerEncoder/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: z
8TransformerEncoder/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :z
8TransformerEncoder/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
6TransformerEncoder/layer_normalization_3/Reshape/shapePackATransformerEncoder/layer_normalization_3/Reshape/shape/0:output:02TransformerEncoder/layer_normalization_3/mul_1:z:02TransformerEncoder/layer_normalization_3/mul_2:z:0ATransformerEncoder/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
0TransformerEncoder/layer_normalization_3/ReshapeReshapeTransformerEncoder/add_1:z:0?TransformerEncoder/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
4TransformerEncoder/layer_normalization_3/ones/packedPack2TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:x
3TransformerEncoder/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
-TransformerEncoder/layer_normalization_3/onesFill=TransformerEncoder/layer_normalization_3/ones/packed:output:0<TransformerEncoder/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
5TransformerEncoder/layer_normalization_3/zeros/packedPack2TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:y
4TransformerEncoder/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.TransformerEncoder/layer_normalization_3/zerosFill>TransformerEncoder/layer_normalization_3/zeros/packed:output:0=TransformerEncoder/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????q
.TransformerEncoder/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB s
0TransformerEncoder/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
9TransformerEncoder/layer_normalization_3/FusedBatchNormV3FusedBatchNormV39TransformerEncoder/layer_normalization_3/Reshape:output:06TransformerEncoder/layer_normalization_3/ones:output:07TransformerEncoder/layer_normalization_3/zeros:output:07TransformerEncoder/layer_normalization_3/Const:output:09TransformerEncoder/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
2TransformerEncoder/layer_normalization_3/Reshape_1Reshape=TransformerEncoder/layer_normalization_3/FusedBatchNormV3:y:07TransformerEncoder/layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpFtransformerencoder_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.TransformerEncoder/layer_normalization_3/mul_3Mul;TransformerEncoder/layer_normalization_3/Reshape_1:output:0ETransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
;TransformerEncoder/layer_normalization_3/add/ReadVariableOpReadVariableOpDtransformerencoder_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,TransformerEncoder/layer_normalization_3/addAddV22TransformerEncoder/layer_normalization_3/mul_3:z:0CTransformerEncoder/layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????n
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_1/MaxMax0TransformerEncoder/layer_normalization_3/add:z:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????\
dropout_1/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @?
dropout_1/dropout/MulMul#global_max_pooling1d_1/Max:output:0 dropout_1/dropout/Const:output:0*
T0*(
_output_shapes
:??????????j
dropout_1/dropout/ShapeShape#global_max_pooling1d_1/Max:output:0*
T0*
_output_shapes
:?
.dropout_1/dropout/random_uniform/RandomUniformRandomUniform dropout_1/dropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2*
seed2e
 dropout_1/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout_1/dropout/GreaterEqualGreaterEqual7dropout_1/dropout/random_uniform/RandomUniform:output:0)dropout_1/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:???????????
dropout_1/dropout/CastCast"dropout_1/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:???????????
dropout_1/dropout/Mul_1Muldropout_1/dropout/Mul:z:0dropout_1/dropout/Cast:y:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_5/MatMulMatMuldropout_1/dropout/Mul_1:z:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp8^Frame_positional_embedding/embedding_1/embedding_lookup<^TransformerEncoder/layer_normalization_2/add/ReadVariableOp>^TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp<^TransformerEncoder/layer_normalization_3/add/ReadVariableOp>^TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpN^TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpX^TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpA^TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpK^TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpC^TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpM^TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpC^TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpM^TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?^TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpA^TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp?^TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpA^TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2r
7Frame_positional_embedding/embedding_1/embedding_lookup7Frame_positional_embedding/embedding_1/embedding_lookup2z
;TransformerEncoder/layer_normalization_2/add/ReadVariableOp;TransformerEncoder/layer_normalization_2/add/ReadVariableOp2~
=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp2z
;TransformerEncoder/layer_normalization_3/add/ReadVariableOp;TransformerEncoder/layer_normalization_3/add/ReadVariableOp2~
=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp2?
MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpMTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpWTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp2?
JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpJTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpBTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp2?
LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpLTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpBTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp2?
LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpLTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2?
>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp2?
>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp2?
@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_5_layer_call_fn_503551

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_501766o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_503652

inputs<
)dense_3_tensordot_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:<
)dense_4_tensordot_readvariableop_resource:	?6
'dense_4_biasadd_readvariableop_resource:	?
identity??dense_3/BiasAdd/ReadVariableOp? dense_3/Tensordot/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp? dense_4/Tensordot/ReadVariableOp?
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/transpose	Transposeinputs!dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:?????????g
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:?????????{
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_503575

inputs
unknown:	?
	unknown_0:
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_501361t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
ّ
?&
__inference__traced_save_504023
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableopP
Lsavev2_frame_positional_embedding_embedding_1_embeddings_read_readvariableopU
Qsavev2_transformerencoder_multi_head_attention_1_query_kernel_read_readvariableopS
Osavev2_transformerencoder_multi_head_attention_1_query_bias_read_readvariableopS
Osavev2_transformerencoder_multi_head_attention_1_key_kernel_read_readvariableopQ
Msavev2_transformerencoder_multi_head_attention_1_key_bias_read_readvariableopU
Qsavev2_transformerencoder_multi_head_attention_1_value_kernel_read_readvariableopS
Osavev2_transformerencoder_multi_head_attention_1_value_bias_read_readvariableop`
\savev2_transformerencoder_multi_head_attention_1_attention_output_kernel_read_readvariableop^
Zsavev2_transformerencoder_multi_head_attention_1_attention_output_bias_read_readvariableop-
)savev2_dense_3_kernel_read_readvariableop+
'savev2_dense_3_bias_read_readvariableop-
)savev2_dense_4_kernel_read_readvariableop+
'savev2_dense_4_bias_read_readvariableopM
Isavev2_transformerencoder_layer_normalization_2_gamma_read_readvariableopL
Hsavev2_transformerencoder_layer_normalization_2_beta_read_readvariableopM
Isavev2_transformerencoder_layer_normalization_3_gamma_read_readvariableopL
Hsavev2_transformerencoder_layer_normalization_3_beta_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopW
Ssavev2_adam_frame_positional_embedding_embedding_1_embeddings_m_read_readvariableop\
Xsavev2_adam_transformerencoder_multi_head_attention_1_query_kernel_m_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_query_bias_m_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_key_kernel_m_read_readvariableopX
Tsavev2_adam_transformerencoder_multi_head_attention_1_key_bias_m_read_readvariableop\
Xsavev2_adam_transformerencoder_multi_head_attention_1_value_kernel_m_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_value_bias_m_read_readvariableopg
csavev2_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_m_read_readvariableope
asavev2_adam_transformerencoder_multi_head_attention_1_attention_output_bias_m_read_readvariableop4
0savev2_adam_dense_3_kernel_m_read_readvariableop2
.savev2_adam_dense_3_bias_m_read_readvariableop4
0savev2_adam_dense_4_kernel_m_read_readvariableop2
.savev2_adam_dense_4_bias_m_read_readvariableopT
Psavev2_adam_transformerencoder_layer_normalization_2_gamma_m_read_readvariableopS
Osavev2_adam_transformerencoder_layer_normalization_2_beta_m_read_readvariableopT
Psavev2_adam_transformerencoder_layer_normalization_3_gamma_m_read_readvariableopS
Osavev2_adam_transformerencoder_layer_normalization_3_beta_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopW
Ssavev2_adam_frame_positional_embedding_embedding_1_embeddings_v_read_readvariableop\
Xsavev2_adam_transformerencoder_multi_head_attention_1_query_kernel_v_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_query_bias_v_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_key_kernel_v_read_readvariableopX
Tsavev2_adam_transformerencoder_multi_head_attention_1_key_bias_v_read_readvariableop\
Xsavev2_adam_transformerencoder_multi_head_attention_1_value_kernel_v_read_readvariableopZ
Vsavev2_adam_transformerencoder_multi_head_attention_1_value_bias_v_read_readvariableopg
csavev2_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_v_read_readvariableope
asavev2_adam_transformerencoder_multi_head_attention_1_attention_output_bias_v_read_readvariableop4
0savev2_adam_dense_3_kernel_v_read_readvariableop2
.savev2_adam_dense_3_bias_v_read_readvariableop4
0savev2_adam_dense_4_kernel_v_read_readvariableop2
.savev2_adam_dense_4_bias_v_read_readvariableopT
Psavev2_adam_transformerencoder_layer_normalization_2_gamma_v_read_readvariableopS
Osavev2_adam_transformerencoder_layer_normalization_2_beta_v_read_readvariableopT
Psavev2_adam_transformerencoder_layer_normalization_3_gamma_v_read_readvariableopS
Osavev2_adam_transformerencoder_layer_normalization_3_beta_v_read_readvariableop
savev2_const

identity_1??MergeV2Checkpointsw
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
_temp/part?
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
value	B : ?
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ?
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?
value?B?CB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB&variables/9/.ATTRIBUTES/VARIABLE_VALUEB'variables/10/.ATTRIBUTES/VARIABLE_VALUEB'variables/11/.ATTRIBUTES/VARIABLE_VALUEB'variables/12/.ATTRIBUTES/VARIABLE_VALUEB'variables/13/.ATTRIBUTES/VARIABLE_VALUEB'variables/14/.ATTRIBUTES/VARIABLE_VALUEB'variables/15/.ATTRIBUTES/VARIABLE_VALUEB'variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/9/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/10/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/11/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/12/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/13/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/14/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/15/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBCvariables/16/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH?
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:C*
dtype0*?
value?B?CB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ?%
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableopLsavev2_frame_positional_embedding_embedding_1_embeddings_read_readvariableopQsavev2_transformerencoder_multi_head_attention_1_query_kernel_read_readvariableopOsavev2_transformerencoder_multi_head_attention_1_query_bias_read_readvariableopOsavev2_transformerencoder_multi_head_attention_1_key_kernel_read_readvariableopMsavev2_transformerencoder_multi_head_attention_1_key_bias_read_readvariableopQsavev2_transformerencoder_multi_head_attention_1_value_kernel_read_readvariableopOsavev2_transformerencoder_multi_head_attention_1_value_bias_read_readvariableop\savev2_transformerencoder_multi_head_attention_1_attention_output_kernel_read_readvariableopZsavev2_transformerencoder_multi_head_attention_1_attention_output_bias_read_readvariableop)savev2_dense_3_kernel_read_readvariableop'savev2_dense_3_bias_read_readvariableop)savev2_dense_4_kernel_read_readvariableop'savev2_dense_4_bias_read_readvariableopIsavev2_transformerencoder_layer_normalization_2_gamma_read_readvariableopHsavev2_transformerencoder_layer_normalization_2_beta_read_readvariableopIsavev2_transformerencoder_layer_normalization_3_gamma_read_readvariableopHsavev2_transformerencoder_layer_normalization_3_beta_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopSsavev2_adam_frame_positional_embedding_embedding_1_embeddings_m_read_readvariableopXsavev2_adam_transformerencoder_multi_head_attention_1_query_kernel_m_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_query_bias_m_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_key_kernel_m_read_readvariableopTsavev2_adam_transformerencoder_multi_head_attention_1_key_bias_m_read_readvariableopXsavev2_adam_transformerencoder_multi_head_attention_1_value_kernel_m_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_value_bias_m_read_readvariableopcsavev2_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_m_read_readvariableopasavev2_adam_transformerencoder_multi_head_attention_1_attention_output_bias_m_read_readvariableop0savev2_adam_dense_3_kernel_m_read_readvariableop.savev2_adam_dense_3_bias_m_read_readvariableop0savev2_adam_dense_4_kernel_m_read_readvariableop.savev2_adam_dense_4_bias_m_read_readvariableopPsavev2_adam_transformerencoder_layer_normalization_2_gamma_m_read_readvariableopOsavev2_adam_transformerencoder_layer_normalization_2_beta_m_read_readvariableopPsavev2_adam_transformerencoder_layer_normalization_3_gamma_m_read_readvariableopOsavev2_adam_transformerencoder_layer_normalization_3_beta_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopSsavev2_adam_frame_positional_embedding_embedding_1_embeddings_v_read_readvariableopXsavev2_adam_transformerencoder_multi_head_attention_1_query_kernel_v_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_query_bias_v_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_key_kernel_v_read_readvariableopTsavev2_adam_transformerencoder_multi_head_attention_1_key_bias_v_read_readvariableopXsavev2_adam_transformerencoder_multi_head_attention_1_value_kernel_v_read_readvariableopVsavev2_adam_transformerencoder_multi_head_attention_1_value_bias_v_read_readvariableopcsavev2_adam_transformerencoder_multi_head_attention_1_attention_output_kernel_v_read_readvariableopasavev2_adam_transformerencoder_multi_head_attention_1_attention_output_bias_v_read_readvariableop0savev2_adam_dense_3_kernel_v_read_readvariableop.savev2_adam_dense_3_bias_v_read_readvariableop0savev2_adam_dense_4_kernel_v_read_readvariableop.savev2_adam_dense_4_bias_v_read_readvariableopPsavev2_adam_transformerencoder_layer_normalization_2_gamma_v_read_readvariableopOsavev2_adam_transformerencoder_layer_normalization_2_beta_v_read_readvariableopPsavev2_adam_transformerencoder_layer_normalization_3_gamma_v_read_readvariableopOsavev2_adam_transformerencoder_layer_normalization_3_beta_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *Q
dtypesG
E2C	?
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:?
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

identity_1Identity_1:output:0*?
_input_shapes?
?: :	?:: : : : : :	?:??:	?:??:	?:??:	?:??:?:	?::	?:?:?:?:?:?: : : : :	?::	?:??:	?:??:	?:??:	?:??:?:	?::	?:?:?:?:?:?:	?::	?:??:	?:??:	?:??:	?:??:?:	?::	?:?:?:?:?:?: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	?: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?:*	&
$
_output_shapes
:??:%
!

_output_shapes
:	?:*&
$
_output_shapes
:??:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:%!

_output_shapes
:	?:*&
$
_output_shapes
:??:!

_output_shapes	
:?:%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:!

_output_shapes	
:?:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	?: 

_output_shapes
::%!

_output_shapes
:	?:* &
$
_output_shapes
:??:%!!

_output_shapes
:	?:*"&
$
_output_shapes
:??:%#!

_output_shapes
:	?:*$&
$
_output_shapes
:??:%%!

_output_shapes
:	?:*&&
$
_output_shapes
:??:!'

_output_shapes	
:?:%(!

_output_shapes
:	?: )

_output_shapes
::%*!

_output_shapes
:	?:!+

_output_shapes	
:?:!,

_output_shapes	
:?:!-

_output_shapes	
:?:!.

_output_shapes	
:?:!/

_output_shapes	
:?:%0!

_output_shapes
:	?: 1

_output_shapes
::%2!

_output_shapes
:	?:*3&
$
_output_shapes
:??:%4!

_output_shapes
:	?:*5&
$
_output_shapes
:??:%6!

_output_shapes
:	?:*7&
$
_output_shapes
:??:%8!

_output_shapes
:	?:*9&
$
_output_shapes
:??:!:

_output_shapes	
:?:%;!

_output_shapes
:	?: <

_output_shapes
::%=!

_output_shapes
:	?:!>

_output_shapes	
:?:!?

_output_shapes	
:?:!@

_output_shapes	
:?:!A

_output_shapes	
:?:!B

_output_shapes	
:?:C

_output_shapes
: 
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_501421

inputs!
dense_3_501410:	?
dense_3_501412:!
dense_4_501415:	?
dense_4_501417:	?
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_501410dense_3_501412*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_501318?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_501415dense_4_501417*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_501354|
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503504

inputs
mask
Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_query_add_readvariableop_resource:	?X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??I
6multi_head_attention_1_key_add_readvariableop_resource:	?Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_value_add_readvariableop_resource:	?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
6sequential_1_dense_4_tensordot_readvariableop_resource:	?C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?-sequential_1/dense_4/Tensordot/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSlicemaskstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!multi_head_attention_1/ExpandDims
ExpandDimsstrided_slice:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:?????????q
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:??????????
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0*

seed2z
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:??????????
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
addAddV2inputs/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
$sequential_1/dense_3/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transposelayer_normalization_2/add:z:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
sequential_1/dense_3/Gelu/mulMul(sequential_1/dense_3/Gelu/mul/x:output:0%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????e
 sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
!sequential_1/dense_3/Gelu/truedivRealDiv%sequential_1/dense_3/BiasAdd:output:0)sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/ErfErf%sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
sequential_1/dense_3/Gelu/addAddV2(sequential_1/dense_3/Gelu/add/x:output:0!sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/mul_1Mul!sequential_1/dense_3/Gelu/mul:z:0!sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
$sequential_1/dense_4/Tensordot/ShapeShape#sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_4/Tensordot/transpose	Transpose#sequential_1/dense_3/Gelu/mul_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
add_1AddV2layer_normalization_2/add:z:0%sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????q
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
??
?
?__inference_vit_layer_call_and_return_conditional_losses_502726

inputsQ
>frame_positional_embedding_embedding_1_embedding_lookup_502516:	?m
Utransformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource:??^
Ktransformerencoder_multi_head_attention_1_query_add_readvariableop_resource:	?k
Stransformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??\
Itransformerencoder_multi_head_attention_1_key_add_readvariableop_resource:	?m
Utransformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource:??^
Ktransformerencoder_multi_head_attention_1_value_add_readvariableop_resource:	?x
`transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??e
Vtransformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource:	?U
Ftransformerencoder_layer_normalization_2_mul_3_readvariableop_resource:	?S
Dtransformerencoder_layer_normalization_2_add_readvariableop_resource:	?\
Itransformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource:	?U
Gtransformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource:\
Itransformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource:	?V
Gtransformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource:	?U
Ftransformerencoder_layer_normalization_3_mul_3_readvariableop_resource:	?S
Dtransformerencoder_layer_normalization_3_add_readvariableop_resource:	?9
&dense_5_matmul_readvariableop_resource:	?5
'dense_5_biasadd_readvariableop_resource:
identity??7Frame_positional_embedding/embedding_1/embedding_lookup?;TransformerEncoder/layer_normalization_2/add/ReadVariableOp?=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp?;TransformerEncoder/layer_normalization_3/add/ReadVariableOp?=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp?MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp?WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp?JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp?LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp?LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp?@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp?>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp?@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp?dense_5/BiasAdd/ReadVariableOp?dense_5/MatMul/ReadVariableOpV
 Frame_positional_embedding/ShapeShapeinputs*
T0*
_output_shapes
:x
.Frame_positional_embedding/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:z
0Frame_positional_embedding/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:z
0Frame_positional_embedding/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
(Frame_positional_embedding/strided_sliceStridedSlice)Frame_positional_embedding/Shape:output:07Frame_positional_embedding/strided_slice/stack:output:09Frame_positional_embedding/strided_slice/stack_1:output:09Frame_positional_embedding/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskh
&Frame_positional_embedding/range/startConst*
_output_shapes
: *
dtype0*
value	B : h
&Frame_positional_embedding/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :?
 Frame_positional_embedding/rangeRange/Frame_positional_embedding/range/start:output:01Frame_positional_embedding/strided_slice:output:0/Frame_positional_embedding/range/delta:output:0*
_output_shapes
:?
7Frame_positional_embedding/embedding_1/embedding_lookupResourceGather>frame_positional_embedding_embedding_1_embedding_lookup_502516)Frame_positional_embedding/range:output:0*
Tindices0*Q
_classG
ECloc:@Frame_positional_embedding/embedding_1/embedding_lookup/502516*
_output_shapes
:	?*
dtype0?
@Frame_positional_embedding/embedding_1/embedding_lookup/IdentityIdentity@Frame_positional_embedding/embedding_1/embedding_lookup:output:0*
T0*Q
_classG
ECloc:@Frame_positional_embedding/embedding_1/embedding_lookup/502516*
_output_shapes
:	??
BFrame_positional_embedding/embedding_1/embedding_lookup/Identity_1IdentityIFrame_positional_embedding/embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	??
Frame_positional_embedding/addAddV2inputsKFrame_positional_embedding/embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????u
Frame_positional_embedding/CastCastinputs*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:?????????{
&TransformerEncoder/strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            }
(TransformerEncoder/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            }
(TransformerEncoder/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
 TransformerEncoder/strided_sliceStridedSlice'Frame_positional_embedding/Any:output:0/TransformerEncoder/strided_slice/stack:output:01TransformerEncoder/strided_slice/stack_1:output:01TransformerEncoder/strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpUtransformerencoder_multi_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
=TransformerEncoder/multi_head_attention_1/query/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0TTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpReadVariableOpKtransformerencoder_multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3TransformerEncoder/multi_head_attention_1/query/addAddV2FTransformerEncoder/multi_head_attention_1/query/einsum/Einsum:output:0JTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOpStransformerencoder_multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
;TransformerEncoder/multi_head_attention_1/key/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0RTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpReadVariableOpItransformerencoder_multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
1TransformerEncoder/multi_head_attention_1/key/addAddV2DTransformerEncoder/multi_head_attention_1/key/einsum/Einsum:output:0HTransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpUtransformerencoder_multi_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
=TransformerEncoder/multi_head_attention_1/value/einsum/EinsumEinsum"Frame_positional_embedding/add:z:0TTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpReadVariableOpKtransformerencoder_multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
3TransformerEncoder/multi_head_attention_1/value/addAddV2FTransformerEncoder/multi_head_attention_1/value/einsum/Einsum:output:0JTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????t
/TransformerEncoder/multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
-TransformerEncoder/multi_head_attention_1/MulMul7TransformerEncoder/multi_head_attention_1/query/add:z:08TransformerEncoder/multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
7TransformerEncoder/multi_head_attention_1/einsum/EinsumEinsum5TransformerEncoder/multi_head_attention_1/key/add:z:01TransformerEncoder/multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbe?
8TransformerEncoder/multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
4TransformerEncoder/multi_head_attention_1/ExpandDims
ExpandDims)TransformerEncoder/strided_slice:output:0ATransformerEncoder/multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
6TransformerEncoder/multi_head_attention_1/softmax/CastCast=TransformerEncoder/multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????|
7TransformerEncoder/multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
5TransformerEncoder/multi_head_attention_1/softmax/subSub@TransformerEncoder/multi_head_attention_1/softmax/sub/x:output:0:TransformerEncoder/multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????|
7TransformerEncoder/multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
5TransformerEncoder/multi_head_attention_1/softmax/mulMul9TransformerEncoder/multi_head_attention_1/softmax/sub:z:0@TransformerEncoder/multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
5TransformerEncoder/multi_head_attention_1/softmax/addAddV2@TransformerEncoder/multi_head_attention_1/einsum/Einsum:output:09TransformerEncoder/multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
9TransformerEncoder/multi_head_attention_1/softmax/SoftmaxSoftmax9TransformerEncoder/multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:??????????
:TransformerEncoder/multi_head_attention_1/dropout/IdentityIdentityCTransformerEncoder/multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
9TransformerEncoder/multi_head_attention_1/einsum_1/EinsumEinsumCTransformerEncoder/multi_head_attention_1/dropout/Identity:output:07TransformerEncoder/multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOp`transformerencoder_multi_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
HTransformerEncoder/multi_head_attention_1/attention_output/einsum/EinsumEinsumBTransformerEncoder/multi_head_attention_1/einsum_1/Einsum:output:0_TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpVtransformerencoder_multi_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
>TransformerEncoder/multi_head_attention_1/attention_output/addAddV2QTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum:output:0UTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
TransformerEncoder/addAddV2"Frame_positional_embedding/add:z:0BTransformerEncoder/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????x
.TransformerEncoder/layer_normalization_2/ShapeShapeTransformerEncoder/add:z:0*
T0*
_output_shapes
:?
<TransformerEncoder/layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>TransformerEncoder/layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>TransformerEncoder/layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/layer_normalization_2/strided_sliceStridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0ETransformerEncoder/layer_normalization_2/strided_slice/stack:output:0GTransformerEncoder/layer_normalization_2/strided_slice/stack_1:output:0GTransformerEncoder/layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.TransformerEncoder/layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
,TransformerEncoder/layer_normalization_2/mulMul7TransformerEncoder/layer_normalization_2/mul/x:output:0?TransformerEncoder/layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_2/strided_slice_1StridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0GTransformerEncoder/layer_normalization_2/strided_slice_1/stack:output:0ITransformerEncoder/layer_normalization_2/strided_slice_1/stack_1:output:0ITransformerEncoder/layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.TransformerEncoder/layer_normalization_2/mul_1Mul0TransformerEncoder/layer_normalization_2/mul:z:0ATransformerEncoder/layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_2/strided_slice_2StridedSlice7TransformerEncoder/layer_normalization_2/Shape:output:0GTransformerEncoder/layer_normalization_2/strided_slice_2/stack:output:0ITransformerEncoder/layer_normalization_2/strided_slice_2/stack_1:output:0ITransformerEncoder/layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0TransformerEncoder/layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
.TransformerEncoder/layer_normalization_2/mul_2Mul9TransformerEncoder/layer_normalization_2/mul_2/x:output:0ATransformerEncoder/layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: z
8TransformerEncoder/layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :z
8TransformerEncoder/layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
6TransformerEncoder/layer_normalization_2/Reshape/shapePackATransformerEncoder/layer_normalization_2/Reshape/shape/0:output:02TransformerEncoder/layer_normalization_2/mul_1:z:02TransformerEncoder/layer_normalization_2/mul_2:z:0ATransformerEncoder/layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
0TransformerEncoder/layer_normalization_2/ReshapeReshapeTransformerEncoder/add:z:0?TransformerEncoder/layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
4TransformerEncoder/layer_normalization_2/ones/packedPack2TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:x
3TransformerEncoder/layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
-TransformerEncoder/layer_normalization_2/onesFill=TransformerEncoder/layer_normalization_2/ones/packed:output:0<TransformerEncoder/layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:??????????
5TransformerEncoder/layer_normalization_2/zeros/packedPack2TransformerEncoder/layer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:y
4TransformerEncoder/layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.TransformerEncoder/layer_normalization_2/zerosFill>TransformerEncoder/layer_normalization_2/zeros/packed:output:0=TransformerEncoder/layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????q
.TransformerEncoder/layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB s
0TransformerEncoder/layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
9TransformerEncoder/layer_normalization_2/FusedBatchNormV3FusedBatchNormV39TransformerEncoder/layer_normalization_2/Reshape:output:06TransformerEncoder/layer_normalization_2/ones:output:07TransformerEncoder/layer_normalization_2/zeros:output:07TransformerEncoder/layer_normalization_2/Const:output:09TransformerEncoder/layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
2TransformerEncoder/layer_normalization_2/Reshape_1Reshape=TransformerEncoder/layer_normalization_2/FusedBatchNormV3:y:07TransformerEncoder/layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOpReadVariableOpFtransformerencoder_layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.TransformerEncoder/layer_normalization_2/mul_3Mul;TransformerEncoder/layer_normalization_2/Reshape_1:output:0ETransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
;TransformerEncoder/layer_normalization_2/add/ReadVariableOpReadVariableOpDtransformerencoder_layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,TransformerEncoder/layer_normalization_2/addAddV22TransformerEncoder/layer_normalization_2/mul_3:z:0CTransformerEncoder/layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOpItransformerencoder_sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
6TransformerEncoder/sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
7TransformerEncoder/sequential_1/dense_3/Tensordot/ShapeShape0TransformerEncoder/layer_normalization_2/add:z:0*
T0*
_output_shapes
:?
?TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2GatherV2@TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
ATransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<TransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1GatherV2@TransformerEncoder/sequential_1/dense_3/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0JTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
6TransformerEncoder/sequential_1/dense_3/Tensordot/ProdProdCTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0@TransformerEncoder/sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
9TransformerEncoder/sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
8TransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1ProdETransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2_1:output:0BTransformerEncoder/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=TransformerEncoder/sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
8TransformerEncoder/sequential_1/dense_3/Tensordot/concatConcatV2?TransformerEncoder/sequential_1/dense_3/Tensordot/free:output:0?TransformerEncoder/sequential_1/dense_3/Tensordot/axes:output:0FTransformerEncoder/sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_3/Tensordot/stackPack?TransformerEncoder/sequential_1/dense_3/Tensordot/Prod:output:0ATransformerEncoder/sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
;TransformerEncoder/sequential_1/dense_3/Tensordot/transpose	Transpose0TransformerEncoder/layer_normalization_2/add:z:0ATransformerEncoder/sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
9TransformerEncoder/sequential_1/dense_3/Tensordot/ReshapeReshape?TransformerEncoder/sequential_1/dense_3/Tensordot/transpose:y:0@TransformerEncoder/sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
8TransformerEncoder/sequential_1/dense_3/Tensordot/MatMulMatMulBTransformerEncoder/sequential_1/dense_3/Tensordot/Reshape:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
9TransformerEncoder/sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?
?TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_3/Tensordot/concat_1ConcatV2CTransformerEncoder/sequential_1/dense_3/Tensordot/GatherV2:output:0BTransformerEncoder/sequential_1/dense_3/Tensordot/Const_2:output:0HTransformerEncoder/sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
1TransformerEncoder/sequential_1/dense_3/TensordotReshapeBTransformerEncoder/sequential_1/dense_3/Tensordot/MatMul:product:0CTransformerEncoder/sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOpGtransformerencoder_sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
/TransformerEncoder/sequential_1/dense_3/BiasAddBiasAdd:TransformerEncoder/sequential_1/dense_3/Tensordot:output:0FTransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????w
2TransformerEncoder/sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
0TransformerEncoder/sequential_1/dense_3/Gelu/mulMul;TransformerEncoder/sequential_1/dense_3/Gelu/mul/x:output:08TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????x
3TransformerEncoder/sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
4TransformerEncoder/sequential_1/dense_3/Gelu/truedivRealDiv8TransformerEncoder/sequential_1/dense_3/BiasAdd:output:0<TransformerEncoder/sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
0TransformerEncoder/sequential_1/dense_3/Gelu/ErfErf8TransformerEncoder/sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????w
2TransformerEncoder/sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
0TransformerEncoder/sequential_1/dense_3/Gelu/addAddV2;TransformerEncoder/sequential_1/dense_3/Gelu/add/x:output:04TransformerEncoder/sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
2TransformerEncoder/sequential_1/dense_3/Gelu/mul_1Mul4TransformerEncoder/sequential_1/dense_3/Gelu/mul:z:04TransformerEncoder/sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOpItransformerencoder_sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0?
6TransformerEncoder/sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ?
7TransformerEncoder/sequential_1/dense_4/Tensordot/ShapeShape6TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:?
?TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2GatherV2@TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
ATransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
<TransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1GatherV2@TransformerEncoder/sequential_1/dense_4/Tensordot/Shape:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0JTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
6TransformerEncoder/sequential_1/dense_4/Tensordot/ProdProdCTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0@TransformerEncoder/sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: ?
9TransformerEncoder/sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
8TransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1ProdETransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2_1:output:0BTransformerEncoder/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: 
=TransformerEncoder/sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
8TransformerEncoder/sequential_1/dense_4/Tensordot/concatConcatV2?TransformerEncoder/sequential_1/dense_4/Tensordot/free:output:0?TransformerEncoder/sequential_1/dense_4/Tensordot/axes:output:0FTransformerEncoder/sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
7TransformerEncoder/sequential_1/dense_4/Tensordot/stackPack?TransformerEncoder/sequential_1/dense_4/Tensordot/Prod:output:0ATransformerEncoder/sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
;TransformerEncoder/sequential_1/dense_4/Tensordot/transpose	Transpose6TransformerEncoder/sequential_1/dense_3/Gelu/mul_1:z:0ATransformerEncoder/sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
9TransformerEncoder/sequential_1/dense_4/Tensordot/ReshapeReshape?TransformerEncoder/sequential_1/dense_4/Tensordot/transpose:y:0@TransformerEncoder/sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
8TransformerEncoder/sequential_1/dense_4/Tensordot/MatMulMatMulBTransformerEncoder/sequential_1/dense_4/Tensordot/Reshape:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:???????????
9TransformerEncoder/sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:??
?TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
:TransformerEncoder/sequential_1/dense_4/Tensordot/concat_1ConcatV2CTransformerEncoder/sequential_1/dense_4/Tensordot/GatherV2:output:0BTransformerEncoder/sequential_1/dense_4/Tensordot/Const_2:output:0HTransformerEncoder/sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
1TransformerEncoder/sequential_1/dense_4/TensordotReshapeBTransformerEncoder/sequential_1/dense_4/Tensordot/MatMul:product:0CTransformerEncoder/sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOpGtransformerencoder_sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
/TransformerEncoder/sequential_1/dense_4/BiasAddBiasAdd:TransformerEncoder/sequential_1/dense_4/Tensordot:output:0FTransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
TransformerEncoder/add_1AddV20TransformerEncoder/layer_normalization_2/add:z:08TransformerEncoder/sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????z
.TransformerEncoder/layer_normalization_3/ShapeShapeTransformerEncoder/add_1:z:0*
T0*
_output_shapes
:?
<TransformerEncoder/layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ?
>TransformerEncoder/layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
>TransformerEncoder/layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
6TransformerEncoder/layer_normalization_3/strided_sliceStridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0ETransformerEncoder/layer_normalization_3/strided_slice/stack:output:0GTransformerEncoder/layer_normalization_3/strided_slice/stack_1:output:0GTransformerEncoder/layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
.TransformerEncoder/layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
,TransformerEncoder/layer_normalization_3/mulMul7TransformerEncoder/layer_normalization_3/mul/x:output:0?TransformerEncoder/layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_3/strided_slice_1StridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0GTransformerEncoder/layer_normalization_3/strided_slice_1/stack:output:0ITransformerEncoder/layer_normalization_3/strided_slice_1/stack_1:output:0ITransformerEncoder/layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
.TransformerEncoder/layer_normalization_3/mul_1Mul0TransformerEncoder/layer_normalization_3/mul:z:0ATransformerEncoder/layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: ?
>TransformerEncoder/layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:?
@TransformerEncoder/layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
8TransformerEncoder/layer_normalization_3/strided_slice_2StridedSlice7TransformerEncoder/layer_normalization_3/Shape:output:0GTransformerEncoder/layer_normalization_3/strided_slice_2/stack:output:0ITransformerEncoder/layer_normalization_3/strided_slice_2/stack_1:output:0ITransformerEncoder/layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
0TransformerEncoder/layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
.TransformerEncoder/layer_normalization_3/mul_2Mul9TransformerEncoder/layer_normalization_3/mul_2/x:output:0ATransformerEncoder/layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: z
8TransformerEncoder/layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :z
8TransformerEncoder/layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
6TransformerEncoder/layer_normalization_3/Reshape/shapePackATransformerEncoder/layer_normalization_3/Reshape/shape/0:output:02TransformerEncoder/layer_normalization_3/mul_1:z:02TransformerEncoder/layer_normalization_3/mul_2:z:0ATransformerEncoder/layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
0TransformerEncoder/layer_normalization_3/ReshapeReshapeTransformerEncoder/add_1:z:0?TransformerEncoder/layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:???????????
4TransformerEncoder/layer_normalization_3/ones/packedPack2TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:x
3TransformerEncoder/layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
-TransformerEncoder/layer_normalization_3/onesFill=TransformerEncoder/layer_normalization_3/ones/packed:output:0<TransformerEncoder/layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:??????????
5TransformerEncoder/layer_normalization_3/zeros/packedPack2TransformerEncoder/layer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:y
4TransformerEncoder/layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
.TransformerEncoder/layer_normalization_3/zerosFill>TransformerEncoder/layer_normalization_3/zeros/packed:output:0=TransformerEncoder/layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????q
.TransformerEncoder/layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB s
0TransformerEncoder/layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
9TransformerEncoder/layer_normalization_3/FusedBatchNormV3FusedBatchNormV39TransformerEncoder/layer_normalization_3/Reshape:output:06TransformerEncoder/layer_normalization_3/ones:output:07TransformerEncoder/layer_normalization_3/zeros:output:07TransformerEncoder/layer_normalization_3/Const:output:09TransformerEncoder/layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
2TransformerEncoder/layer_normalization_3/Reshape_1Reshape=TransformerEncoder/layer_normalization_3/FusedBatchNormV3:y:07TransformerEncoder/layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpReadVariableOpFtransformerencoder_layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
.TransformerEncoder/layer_normalization_3/mul_3Mul;TransformerEncoder/layer_normalization_3/Reshape_1:output:0ETransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
;TransformerEncoder/layer_normalization_3/add/ReadVariableOpReadVariableOpDtransformerencoder_layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
,TransformerEncoder/layer_normalization_3/addAddV22TransformerEncoder/layer_normalization_3/mul_3:z:0CTransformerEncoder/layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????n
,global_max_pooling1d_1/Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :?
global_max_pooling1d_1/MaxMax0TransformerEncoder/layer_normalization_3/add:z:05global_max_pooling1d_1/Max/reduction_indices:output:0*
T0*(
_output_shapes
:??????????v
dropout_1/IdentityIdentity#global_max_pooling1d_1/Max:output:0*
T0*(
_output_shapes
:???????????
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	?*
dtype0?
dense_5/MatMulMatMuldropout_1/Identity:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:??????????
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????f
dense_5/SoftmaxSoftmaxdense_5/BiasAdd:output:0*
T0*'
_output_shapes
:?????????h
IdentityIdentitydense_5/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:??????????

NoOpNoOp8^Frame_positional_embedding/embedding_1/embedding_lookup<^TransformerEncoder/layer_normalization_2/add/ReadVariableOp>^TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp<^TransformerEncoder/layer_normalization_3/add/ReadVariableOp>^TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOpN^TransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpX^TransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpA^TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOpK^TransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpC^TransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpM^TransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpC^TransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpM^TransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?^TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOpA^TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp?^TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOpA^TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2r
7Frame_positional_embedding/embedding_1/embedding_lookup7Frame_positional_embedding/embedding_1/embedding_lookup2z
;TransformerEncoder/layer_normalization_2/add/ReadVariableOp;TransformerEncoder/layer_normalization_2/add/ReadVariableOp2~
=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp=TransformerEncoder/layer_normalization_2/mul_3/ReadVariableOp2z
;TransformerEncoder/layer_normalization_3/add/ReadVariableOp;TransformerEncoder/layer_normalization_3/add/ReadVariableOp2~
=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp=TransformerEncoder/layer_normalization_3/mul_3/ReadVariableOp2?
MTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOpMTransformerEncoder/multi_head_attention_1/attention_output/add/ReadVariableOp2?
WTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpWTransformerEncoder/multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2?
@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp@TransformerEncoder/multi_head_attention_1/key/add/ReadVariableOp2?
JTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOpJTransformerEncoder/multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2?
BTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOpBTransformerEncoder/multi_head_attention_1/query/add/ReadVariableOp2?
LTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOpLTransformerEncoder/multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2?
BTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOpBTransformerEncoder/multi_head_attention_1/value/add/ReadVariableOp2?
LTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOpLTransformerEncoder/multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2?
>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp>TransformerEncoder/sequential_1/dense_3/BiasAdd/ReadVariableOp2?
@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp@TransformerEncoder/sequential_1/dense_3/Tensordot/ReadVariableOp2?
>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp>TransformerEncoder/sequential_1/dense_4/BiasAdd/ReadVariableOp2?
@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp@TransformerEncoder/sequential_1/dense_4/Tensordot/ReadVariableOp2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
3__inference_TransformerEncoder_layer_call_fn_503107

inputs
mask

unknown:??
	unknown_0:	?!
	unknown_1:??
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?!
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_502091t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_501354

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
3__inference_TransformerEncoder_layer_call_fn_503069

inputs
mask

unknown:??
	unknown_0:	?!
	unknown_1:??
	unknown_2:	?!
	unknown_3:??
	unknown_4:	?!
	unknown_5:??
	unknown_6:	?
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:

unknown_11:	?

unknown_12:	?

unknown_13:	?

unknown_14:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsmaskunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_501713t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
?
?
;__inference_Frame_positional_embedding_layer_call_fn_503013

inputs
unknown:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_501473
dense_3_input!
dense_3_501462:	?
dense_3_501464:!
dense_4_501467:	?
dense_4_501469:	?
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_501462dense_3_501464*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_501318?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_501467dense_4_501469*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_501354|
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_3_input
?
?
$__inference_signature_wrapper_503006
input_4
unknown:	?!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? **
f%R#
!__inference__wrapped_model_501273o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_501753

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
?__inference_vit_layer_call_and_return_conditional_losses_502363
input_44
!frame_positional_embedding_502316:	?1
transformerencoder_502322:??,
transformerencoder_502324:	?1
transformerencoder_502326:??,
transformerencoder_502328:	?1
transformerencoder_502330:??,
transformerencoder_502332:	?1
transformerencoder_502334:??(
transformerencoder_502336:	?(
transformerencoder_502338:	?(
transformerencoder_502340:	?,
transformerencoder_502342:	?'
transformerencoder_502344:,
transformerencoder_502346:	?(
transformerencoder_502348:	?(
transformerencoder_502350:	?(
transformerencoder_502352:	?!
dense_5_502357:	?
dense_5_502359:
identity??2Frame_positional_embedding/StatefulPartitionedCall?*TransformerEncoder/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
2Frame_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_4!frame_positional_embedding_502316*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511v
Frame_positional_embedding/CastCastinput_4*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:??????????
*TransformerEncoder/StatefulPartitionedCallStatefulPartitionedCall;Frame_positional_embedding/StatefulPartitionedCall:output:0'Frame_positional_embedding/Any:output:0transformerencoder_502322transformerencoder_502324transformerencoder_502326transformerencoder_502328transformerencoder_502330transformerencoder_502332transformerencoder_502334transformerencoder_502336transformerencoder_502338transformerencoder_502340transformerencoder_502342transformerencoder_502344transformerencoder_502346transformerencoder_502348transformerencoder_502350transformerencoder_502352*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_501713?
&global_max_pooling1d_1/PartitionedCallPartitionedCall3TransformerEncoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483?
dropout_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501753?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_5_502357dense_5_502359*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_501766w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp3^Frame_positional_embedding/StatefulPartitionedCall+^TransformerEncoder/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2h
2Frame_positional_embedding/StatefulPartitionedCall2Frame_positional_embedding/StatefulPartitionedCall2X
*TransformerEncoder/StatefulPartitionedCall*TransformerEncoder/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
?
c
E__inference_dropout_1_layer_call_and_return_conditional_losses_503530

inputs

identity_1O
IdentityIdentityinputs*
T0*(
_output_shapes
:??????????\

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:??????????"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_501713

inputs
mask
Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_query_add_readvariableop_resource:	?X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??I
6multi_head_attention_1_key_add_readvariableop_resource:	?Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_value_add_readvariableop_resource:	?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
6sequential_1_dense_4_tensordot_readvariableop_resource:	?C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?-sequential_1/dense_4/Tensordot/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSlicemaskstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!multi_head_attention_1/ExpandDims
ExpandDimsstrided_slice:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:??????????
'multi_head_attention_1/dropout/IdentityIdentity0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/Identity:output:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
addAddV2inputs/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
$sequential_1/dense_3/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transposelayer_normalization_2/add:z:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
sequential_1/dense_3/Gelu/mulMul(sequential_1/dense_3/Gelu/mul/x:output:0%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????e
 sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
!sequential_1/dense_3/Gelu/truedivRealDiv%sequential_1/dense_3/BiasAdd:output:0)sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/ErfErf%sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
sequential_1/dense_3/Gelu/addAddV2(sequential_1/dense_3/Gelu/add/x:output:0!sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/mul_1Mul!sequential_1/dense_3/Gelu/mul:z:0!sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
$sequential_1/dense_4/Tensordot/ShapeShape#sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_4/Tensordot/transpose	Transpose#sequential_1/dense_3/Gelu/mul_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
add_1AddV2layer_normalization_2/add:z:0%sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????q
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
?
?
$__inference_vit_layer_call_fn_502505

inputs
unknown:	?!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_vit_layer_call_and_return_conditional_losses_502229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
C__inference_dense_4_layer_call_and_return_conditional_losses_503802

inputs4
!tensordot_readvariableop_resource:	?.
biasadd_readvariableop_resource:	?
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:??????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????\
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*,
_output_shapes
:??????????s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0}
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????d
IdentityIdentityBiasAdd:output:0^NoOp*
T0*,
_output_shapes
:??????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
?
-__inference_sequential_1_layer_call_fn_501372
dense_3_input
unknown:	?
	unknown_0:
	unknown_1:	?
	unknown_2:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCalldense_3_inputunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*&
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *Q
fLRJ
H__inference_sequential_1_layer_call_and_return_conditional_losses_501361t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_3_input
?
?
$__inference_vit_layer_call_fn_502313
input_4
unknown:	?!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinput_4unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_vit_layer_call_and_return_conditional_losses_502229o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_501459
dense_3_input!
dense_3_501448:	?
dense_3_501450:!
dense_4_501453:	?
dense_4_501455:	?
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCalldense_3_inputdense_3_501448dense_3_501450*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_501318?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_501453dense_4_501455*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_501354|
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:[ W
,
_output_shapes
:??????????
'
_user_specified_namedense_3_input
?
?
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511

inputs6
#embedding_1_embedding_lookup_501504:	?
identity??embedding_1/embedding_lookup;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskM
range/startConst*
_output_shapes
: *
dtype0*
value	B : M
range/deltaConst*
_output_shapes
: *
dtype0*
value	B :n
rangeRangerange/start:output:0strided_slice:output:0range/delta:output:0*
_output_shapes
:?
embedding_1/embedding_lookupResourceGather#embedding_1_embedding_lookup_501504range:output:0*
Tindices0*6
_class,
*(loc:@embedding_1/embedding_lookup/501504*
_output_shapes
:	?*
dtype0?
%embedding_1/embedding_lookup/IdentityIdentity%embedding_1/embedding_lookup:output:0*
T0*6
_class,
*(loc:@embedding_1/embedding_lookup/501504*
_output_shapes
:	??
'embedding_1/embedding_lookup/Identity_1Identity.embedding_1/embedding_lookup/Identity:output:0*
T0*
_output_shapes
:	?}
addAddV2inputs0embedding_1/embedding_lookup/Identity_1:output:0*
T0*,
_output_shapes
:??????????[
IdentityIdentityadd:z:0^NoOp*
T0*,
_output_shapes
:??????????e
NoOpNoOp^embedding_1/embedding_lookup*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*-
_input_shapes
:??????????: 2<
embedding_1/embedding_lookupembedding_1/embedding_lookup:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?%
?
?__inference_vit_layer_call_and_return_conditional_losses_501773

inputs4
!frame_positional_embedding_501512:	?1
transformerencoder_501714:??,
transformerencoder_501716:	?1
transformerencoder_501718:??,
transformerencoder_501720:	?1
transformerencoder_501722:??,
transformerencoder_501724:	?1
transformerencoder_501726:??(
transformerencoder_501728:	?(
transformerencoder_501730:	?(
transformerencoder_501732:	?,
transformerencoder_501734:	?'
transformerencoder_501736:,
transformerencoder_501738:	?(
transformerencoder_501740:	?(
transformerencoder_501742:	?(
transformerencoder_501744:	?!
dense_5_501767:	?
dense_5_501769:
identity??2Frame_positional_embedding/StatefulPartitionedCall?*TransformerEncoder/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?
2Frame_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinputs!frame_positional_embedding_501512*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511u
Frame_positional_embedding/CastCastinputs*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:??????????
*TransformerEncoder/StatefulPartitionedCallStatefulPartitionedCall;Frame_positional_embedding/StatefulPartitionedCall:output:0'Frame_positional_embedding/Any:output:0transformerencoder_501714transformerencoder_501716transformerencoder_501718transformerencoder_501720transformerencoder_501722transformerencoder_501724transformerencoder_501726transformerencoder_501728transformerencoder_501730transformerencoder_501732transformerencoder_501734transformerencoder_501736transformerencoder_501738transformerencoder_501740transformerencoder_501742transformerencoder_501744*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_501713?
&global_max_pooling1d_1/PartitionedCallPartitionedCall3TransformerEncoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483?
dropout_1/PartitionedCallPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501753?
dense_5/StatefulPartitionedCallStatefulPartitionedCall"dropout_1/PartitionedCall:output:0dense_5_501767dense_5_501769*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_501766w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp3^Frame_positional_embedding/StatefulPartitionedCall+^TransformerEncoder/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2h
2Frame_positional_embedding/StatefulPartitionedCall2Frame_positional_embedding/StatefulPartitionedCall2X
*TransformerEncoder/StatefulPartitionedCall*TransformerEncoder/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?"
?
C__inference_dense_3_layer_call_and_return_conditional_losses_503763

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*+
_output_shapes
:?????????P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???u
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*+
_output_shapes
:?????????W
Gelu/ErfErfGelu/truediv:z:0*
T0*+
_output_shapes
:?????????O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??j
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*+
_output_shapes
:?????????c

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*+
_output_shapes
:?????????a
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?E
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_503716

inputs<
)dense_3_tensordot_readvariableop_resource:	?5
'dense_3_biasadd_readvariableop_resource:<
)dense_4_tensordot_readvariableop_resource:	?6
'dense_4_biasadd_readvariableop_resource:	?
identity??dense_3/BiasAdd/ReadVariableOp? dense_3/Tensordot/ReadVariableOp?dense_4/BiasAdd/ReadVariableOp? dense_4/Tensordot/ReadVariableOp?
 dense_3/Tensordot/ReadVariableOpReadVariableOp)dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       M
dense_3/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:a
dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/free:output:0(dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/GatherV2_1GatherV2 dense_3/Tensordot/Shape:output:0dense_3/Tensordot/axes:output:0*dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/ProdProd#dense_3/Tensordot/GatherV2:output:0 dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_3/Tensordot/Prod_1Prod%dense_3/Tensordot/GatherV2_1:output:0"dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concatConcatV2dense_3/Tensordot/free:output:0dense_3/Tensordot/axes:output:0&dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/stackPackdense_3/Tensordot/Prod:output:0!dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_3/Tensordot/transpose	Transposeinputs!dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
dense_3/Tensordot/ReshapeReshapedense_3/Tensordot/transpose:y:0 dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_3/Tensordot/MatMulMatMul"dense_3/Tensordot/Reshape:output:0(dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????c
dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:a
dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_3/Tensordot/concat_1ConcatV2#dense_3/Tensordot/GatherV2:output:0"dense_3/Tensordot/Const_2:output:0(dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_3/TensordotReshape"dense_3/Tensordot/MatMul:product:0#dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
dense_3/BiasAdd/ReadVariableOpReadVariableOp'dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
dense_3/BiasAddBiasAdddense_3/Tensordot:output:0&dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????W
dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dense_3/Gelu/mulMuldense_3/Gelu/mul/x:output:0dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????X
dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
dense_3/Gelu/truedivRealDivdense_3/BiasAdd:output:0dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:?????????g
dense_3/Gelu/ErfErfdense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????W
dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
dense_3/Gelu/addAddV2dense_3/Gelu/add/x:output:0dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:?????????{
dense_3/Gelu/mul_1Muldense_3/Gelu/mul:z:0dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
 dense_4/Tensordot/ReadVariableOpReadVariableOp)dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0`
dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:g
dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       ]
dense_4/Tensordot/ShapeShapedense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:a
dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/GatherV2GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/free:output:0(dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:c
!dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/GatherV2_1GatherV2 dense_4/Tensordot/Shape:output:0dense_4/Tensordot/axes:output:0*dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:a
dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/Tensordot/ProdProd#dense_4/Tensordot/GatherV2:output:0 dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: c
dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
dense_4/Tensordot/Prod_1Prod%dense_4/Tensordot/GatherV2_1:output:0"dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: _
dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/concatConcatV2dense_4/Tensordot/free:output:0dense_4/Tensordot/axes:output:0&dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
dense_4/Tensordot/stackPackdense_4/Tensordot/Prod:output:0!dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
dense_4/Tensordot/transpose	Transposedense_3/Gelu/mul_1:z:0!dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
dense_4/Tensordot/ReshapeReshapedense_4/Tensordot/transpose:y:0 dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
dense_4/Tensordot/MatMulMatMul"dense_4/Tensordot/Reshape:output:0(dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????d
dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?a
dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
dense_4/Tensordot/concat_1ConcatV2#dense_4/Tensordot/GatherV2:output:0"dense_4/Tensordot/Const_2:output:0(dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
dense_4/TensordotReshape"dense_4/Tensordot/MatMul:product:0#dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
dense_4/BiasAdd/ReadVariableOpReadVariableOp'dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
dense_4/BiasAddBiasAdddense_4/Tensordot:output:0&dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????l
IdentityIdentitydense_4/BiasAdd:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp^dense_3/BiasAdd/ReadVariableOp!^dense_3/Tensordot/ReadVariableOp^dense_4/BiasAdd/ReadVariableOp!^dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2@
dense_3/BiasAdd/ReadVariableOpdense_3/BiasAdd/ReadVariableOp2D
 dense_3/Tensordot/ReadVariableOp dense_3/Tensordot/ReadVariableOp2@
dense_4/BiasAdd/ReadVariableOpdense_4/BiasAdd/ReadVariableOp2D
 dense_4/Tensordot/ReadVariableOp dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
(__inference_dense_3_layer_call_fn_503725

inputs
unknown:	?
	unknown_0:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_501318s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?

?
C__inference_dense_5_layer_call_and_return_conditional_losses_501766

inputs1
matmul_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	?*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:?????????`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:?????????w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?
?
H__inference_sequential_1_layer_call_and_return_conditional_losses_501361

inputs!
dense_3_501319:	?
dense_3_501321:!
dense_4_501355:	?
dense_4_501357:	?
identity??dense_3/StatefulPartitionedCall?dense_4/StatefulPartitionedCall?
dense_3/StatefulPartitionedCallStatefulPartitionedCallinputsdense_3_501319dense_3_501321*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_3_layer_call_and_return_conditional_losses_501318?
dense_4/StatefulPartitionedCallStatefulPartitionedCall(dense_3/StatefulPartitionedCall:output:0dense_4_501355dense_4_501357*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_501354|
IdentityIdentity(dense_4/StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp ^dense_3/StatefulPartitionedCall ^dense_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :??????????: : : : 2B
dense_3/StatefulPartitionedCalldense_3/StatefulPartitionedCall2B
dense_4/StatefulPartitionedCalldense_4/StatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
??
?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_502091

inputs
mask
Z
Bmulti_head_attention_1_query_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_query_add_readvariableop_resource:	?X
@multi_head_attention_1_key_einsum_einsum_readvariableop_resource:??I
6multi_head_attention_1_key_add_readvariableop_resource:	?Z
Bmulti_head_attention_1_value_einsum_einsum_readvariableop_resource:??K
8multi_head_attention_1_value_add_readvariableop_resource:	?e
Mmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource:??R
Cmulti_head_attention_1_attention_output_add_readvariableop_resource:	?B
3layer_normalization_2_mul_3_readvariableop_resource:	?@
1layer_normalization_2_add_readvariableop_resource:	?I
6sequential_1_dense_3_tensordot_readvariableop_resource:	?B
4sequential_1_dense_3_biasadd_readvariableop_resource:I
6sequential_1_dense_4_tensordot_readvariableop_resource:	?C
4sequential_1_dense_4_biasadd_readvariableop_resource:	?B
3layer_normalization_3_mul_3_readvariableop_resource:	?@
1layer_normalization_3_add_readvariableop_resource:	?
identity??(layer_normalization_2/add/ReadVariableOp?*layer_normalization_2/mul_3/ReadVariableOp?(layer_normalization_3/add/ReadVariableOp?*layer_normalization_3/mul_3/ReadVariableOp?:multi_head_attention_1/attention_output/add/ReadVariableOp?Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp?-multi_head_attention_1/key/add/ReadVariableOp?7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/query/add/ReadVariableOp?9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp?/multi_head_attention_1/value/add/ReadVariableOp?9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp?+sequential_1/dense_3/BiasAdd/ReadVariableOp?-sequential_1/dense_3/Tensordot/ReadVariableOp?+sequential_1/dense_4/BiasAdd/ReadVariableOp?-sequential_1/dense_4/Tensordot/ReadVariableOph
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"            j
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         ?
strided_sliceStridedSlicemaskstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0
*+
_output_shapes
:?????????*

begin_mask*
end_mask*
new_axis_mask?
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_query_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/query/einsum/EinsumEinsuminputsAmulti_head_attention_1/query/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/query/add/ReadVariableOpReadVariableOp8multi_head_attention_1_query_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/query/addAddV23multi_head_attention_1/query/einsum/Einsum:output:07multi_head_attention_1/query/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOpReadVariableOp@multi_head_attention_1_key_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
(multi_head_attention_1/key/einsum/EinsumEinsuminputs?multi_head_attention_1/key/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
-multi_head_attention_1/key/add/ReadVariableOpReadVariableOp6multi_head_attention_1_key_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
multi_head_attention_1/key/addAddV21multi_head_attention_1/key/einsum/Einsum:output:05multi_head_attention_1/key/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:???????????
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOpReadVariableOpBmulti_head_attention_1_value_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
*multi_head_attention_1/value/einsum/EinsumEinsuminputsAmulti_head_attention_1/value/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*0
_output_shapes
:??????????*
equationabc,cde->abde?
/multi_head_attention_1/value/add/ReadVariableOpReadVariableOp8multi_head_attention_1_value_add_readvariableop_resource*
_output_shapes
:	?*
dtype0?
 multi_head_attention_1/value/addAddV23multi_head_attention_1/value/einsum/Einsum:output:07multi_head_attention_1/value/add/ReadVariableOp:value:0*
T0*0
_output_shapes
:??????????a
multi_head_attention_1/Mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *   =?
multi_head_attention_1/MulMul$multi_head_attention_1/query/add:z:0%multi_head_attention_1/Mul/y:output:0*
T0*0
_output_shapes
:???????????
$multi_head_attention_1/einsum/EinsumEinsum"multi_head_attention_1/key/add:z:0multi_head_attention_1/Mul:z:0*
N*
T0*/
_output_shapes
:?????????*
equationaecd,abcd->acbep
%multi_head_attention_1/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
??????????
!multi_head_attention_1/ExpandDims
ExpandDimsstrided_slice:output:0.multi_head_attention_1/ExpandDims/dim:output:0*
T0
*/
_output_shapes
:??????????
#multi_head_attention_1/softmax/CastCast*multi_head_attention_1/ExpandDims:output:0*

DstT0*

SrcT0
*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
"multi_head_attention_1/softmax/subSub-multi_head_attention_1/softmax/sub/x:output:0'multi_head_attention_1/softmax/Cast:y:0*
T0*/
_output_shapes
:?????????i
$multi_head_attention_1/softmax/mul/yConst*
_output_shapes
: *
dtype0*
valueB
 *(kn??
"multi_head_attention_1/softmax/mulMul&multi_head_attention_1/softmax/sub:z:0-multi_head_attention_1/softmax/mul/y:output:0*
T0*/
_output_shapes
:??????????
"multi_head_attention_1/softmax/addAddV2-multi_head_attention_1/einsum/Einsum:output:0&multi_head_attention_1/softmax/mul:z:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/softmax/SoftmaxSoftmax&multi_head_attention_1/softmax/add:z:0*
T0*/
_output_shapes
:?????????q
,multi_head_attention_1/dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *UU???
*multi_head_attention_1/dropout/dropout/MulMul0multi_head_attention_1/softmax/Softmax:softmax:05multi_head_attention_1/dropout/dropout/Const:output:0*
T0*/
_output_shapes
:??????????
,multi_head_attention_1/dropout/dropout/ShapeShape0multi_head_attention_1/softmax/Softmax:softmax:0*
T0*
_output_shapes
:?
Cmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniformRandomUniform5multi_head_attention_1/dropout/dropout/Shape:output:0*
T0*/
_output_shapes
:?????????*
dtype0*

seed2z
5multi_head_attention_1/dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *???>?
3multi_head_attention_1/dropout/dropout/GreaterEqualGreaterEqualLmulti_head_attention_1/dropout/dropout/random_uniform/RandomUniform:output:0>multi_head_attention_1/dropout/dropout/GreaterEqual/y:output:0*
T0*/
_output_shapes
:??????????
+multi_head_attention_1/dropout/dropout/CastCast7multi_head_attention_1/dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*/
_output_shapes
:??????????
,multi_head_attention_1/dropout/dropout/Mul_1Mul.multi_head_attention_1/dropout/dropout/Mul:z:0/multi_head_attention_1/dropout/dropout/Cast:y:0*
T0*/
_output_shapes
:??????????
&multi_head_attention_1/einsum_1/EinsumEinsum0multi_head_attention_1/dropout/dropout/Mul_1:z:0$multi_head_attention_1/value/add:z:0*
N*
T0*0
_output_shapes
:??????????*
equationacbe,aecd->abcd?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpReadVariableOpMmulti_head_attention_1_attention_output_einsum_einsum_readvariableop_resource*$
_output_shapes
:??*
dtype0?
5multi_head_attention_1/attention_output/einsum/EinsumEinsum/multi_head_attention_1/einsum_1/Einsum:output:0Lmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp:value:0*
N*
T0*,
_output_shapes
:??????????*
equationabcd,cde->abe?
:multi_head_attention_1/attention_output/add/ReadVariableOpReadVariableOpCmulti_head_attention_1_attention_output_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
+multi_head_attention_1/attention_output/addAddV2>multi_head_attention_1/attention_output/einsum/Einsum:output:0Bmulti_head_attention_1/attention_output/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????|
addAddV2inputs/multi_head_attention_1/attention_output/add:z:0*
T0*,
_output_shapes
:??????????R
layer_normalization_2/ShapeShapeadd:z:0*
T0*
_output_shapes
:s
)layer_normalization_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_2/strided_sliceStridedSlice$layer_normalization_2/Shape:output:02layer_normalization_2/strided_slice/stack:output:04layer_normalization_2/strided_slice/stack_1:output:04layer_normalization_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_2/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mulMul$layer_normalization_2/mul/x:output:0,layer_normalization_2/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_1StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_1/stack:output:06layer_normalization_2/strided_slice_1/stack_1:output:06layer_normalization_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_2/mul_1Mullayer_normalization_2/mul:z:0.layer_normalization_2/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_2/strided_slice_2StridedSlice$layer_normalization_2/Shape:output:04layer_normalization_2/strided_slice_2/stack:output:06layer_normalization_2/strided_slice_2/stack_1:output:06layer_normalization_2/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_2/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_2/mul_2Mul&layer_normalization_2/mul_2/x:output:0.layer_normalization_2/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_2/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_2/Reshape/shapePack.layer_normalization_2/Reshape/shape/0:output:0layer_normalization_2/mul_1:z:0layer_normalization_2/mul_2:z:0.layer_normalization_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_2/ReshapeReshapeadd:z:0,layer_normalization_2/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_2/ones/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_2/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_2/onesFill*layer_normalization_2/ones/packed:output:0)layer_normalization_2/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_2/zeros/packedPacklayer_normalization_2/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_2/zerosFill+layer_normalization_2/zeros/packed:output:0*layer_normalization_2/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_2/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_2/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_2/FusedBatchNormV3FusedBatchNormV3&layer_normalization_2/Reshape:output:0#layer_normalization_2/ones:output:0$layer_normalization_2/zeros:output:0$layer_normalization_2/Const:output:0&layer_normalization_2/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_2/Reshape_1Reshape*layer_normalization_2/FusedBatchNormV3:y:0$layer_normalization_2/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_2/mul_3/ReadVariableOpReadVariableOp3layer_normalization_2_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/mul_3Mul(layer_normalization_2/Reshape_1:output:02layer_normalization_2/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_2/add/ReadVariableOpReadVariableOp1layer_normalization_2_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_2/addAddV2layer_normalization_2/mul_3:z:00layer_normalization_2/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
-sequential_1/dense_3/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_3_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_3/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_3/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       q
$sequential_1/dense_3/Tensordot/ShapeShapelayer_normalization_2/add:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_3/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/GatherV2GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/free:output:05sequential_1/dense_3/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_3/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_3/Tensordot/GatherV2_1GatherV2-sequential_1/dense_3/Tensordot/Shape:output:0,sequential_1/dense_3/Tensordot/axes:output:07sequential_1/dense_3/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_3/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_3/Tensordot/ProdProd0sequential_1/dense_3/Tensordot/GatherV2:output:0-sequential_1/dense_3/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_3/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_3/Tensordot/Prod_1Prod2sequential_1/dense_3/Tensordot/GatherV2_1:output:0/sequential_1/dense_3/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_3/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_3/Tensordot/concatConcatV2,sequential_1/dense_3/Tensordot/free:output:0,sequential_1/dense_3/Tensordot/axes:output:03sequential_1/dense_3/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_3/Tensordot/stackPack,sequential_1/dense_3/Tensordot/Prod:output:0.sequential_1/dense_3/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_3/Tensordot/transpose	Transposelayer_normalization_2/add:z:0.sequential_1/dense_3/Tensordot/concat:output:0*
T0*,
_output_shapes
:???????????
&sequential_1/dense_3/Tensordot/ReshapeReshape,sequential_1/dense_3/Tensordot/transpose:y:0-sequential_1/dense_3/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_3/Tensordot/MatMulMatMul/sequential_1/dense_3/Tensordot/Reshape:output:05sequential_1/dense_3/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????p
&sequential_1/dense_3/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:n
,sequential_1/dense_3/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_3/Tensordot/concat_1ConcatV20sequential_1/dense_3/Tensordot/GatherV2:output:0/sequential_1/dense_3/Tensordot/Const_2:output:05sequential_1/dense_3/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_3/TensordotReshape/sequential_1/dense_3/Tensordot/MatMul:product:00sequential_1/dense_3/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:??????????
+sequential_1/dense_3/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_3_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0?
sequential_1/dense_3/BiasAddBiasAdd'sequential_1/dense_3/Tensordot:output:03sequential_1/dense_3/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
sequential_1/dense_3/Gelu/mulMul(sequential_1/dense_3/Gelu/mul/x:output:0%sequential_1/dense_3/BiasAdd:output:0*
T0*+
_output_shapes
:?????????e
 sequential_1/dense_3/Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *????
!sequential_1/dense_3/Gelu/truedivRealDiv%sequential_1/dense_3/BiasAdd:output:0)sequential_1/dense_3/Gelu/Cast/x:output:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/ErfErf%sequential_1/dense_3/Gelu/truediv:z:0*
T0*+
_output_shapes
:?????????d
sequential_1/dense_3/Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
sequential_1/dense_3/Gelu/addAddV2(sequential_1/dense_3/Gelu/add/x:output:0!sequential_1/dense_3/Gelu/Erf:y:0*
T0*+
_output_shapes
:??????????
sequential_1/dense_3/Gelu/mul_1Mul!sequential_1/dense_3/Gelu/mul:z:0!sequential_1/dense_3/Gelu/add:z:0*
T0*+
_output_shapes
:??????????
-sequential_1/dense_4/Tensordot/ReadVariableOpReadVariableOp6sequential_1_dense_4_tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0m
#sequential_1/dense_4/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:t
#sequential_1/dense_4/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       w
$sequential_1/dense_4/Tensordot/ShapeShape#sequential_1/dense_3/Gelu/mul_1:z:0*
T0*
_output_shapes
:n
,sequential_1/dense_4/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/GatherV2GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/free:output:05sequential_1/dense_4/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:p
.sequential_1/dense_4/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
)sequential_1/dense_4/Tensordot/GatherV2_1GatherV2-sequential_1/dense_4/Tensordot/Shape:output:0,sequential_1/dense_4/Tensordot/axes:output:07sequential_1/dense_4/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:n
$sequential_1/dense_4/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: ?
#sequential_1/dense_4/Tensordot/ProdProd0sequential_1/dense_4/Tensordot/GatherV2:output:0-sequential_1/dense_4/Tensordot/Const:output:0*
T0*
_output_shapes
: p
&sequential_1/dense_4/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: ?
%sequential_1/dense_4/Tensordot/Prod_1Prod2sequential_1/dense_4/Tensordot/GatherV2_1:output:0/sequential_1/dense_4/Tensordot/Const_1:output:0*
T0*
_output_shapes
: l
*sequential_1/dense_4/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
%sequential_1/dense_4/Tensordot/concatConcatV2,sequential_1/dense_4/Tensordot/free:output:0,sequential_1/dense_4/Tensordot/axes:output:03sequential_1/dense_4/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:?
$sequential_1/dense_4/Tensordot/stackPack,sequential_1/dense_4/Tensordot/Prod:output:0.sequential_1/dense_4/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:?
(sequential_1/dense_4/Tensordot/transpose	Transpose#sequential_1/dense_3/Gelu/mul_1:z:0.sequential_1/dense_4/Tensordot/concat:output:0*
T0*+
_output_shapes
:??????????
&sequential_1/dense_4/Tensordot/ReshapeReshape,sequential_1/dense_4/Tensordot/transpose:y:0-sequential_1/dense_4/Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
%sequential_1/dense_4/Tensordot/MatMulMatMul/sequential_1/dense_4/Tensordot/Reshape:output:05sequential_1/dense_4/Tensordot/ReadVariableOp:value:0*
T0*(
_output_shapes
:??????????q
&sequential_1/dense_4/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:?n
,sequential_1/dense_4/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
'sequential_1/dense_4/Tensordot/concat_1ConcatV20sequential_1/dense_4/Tensordot/GatherV2:output:0/sequential_1/dense_4/Tensordot/Const_2:output:05sequential_1/dense_4/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
sequential_1/dense_4/TensordotReshape/sequential_1/dense_4/Tensordot/MatMul:product:00sequential_1/dense_4/Tensordot/concat_1:output:0*
T0*,
_output_shapes
:???????????
+sequential_1/dense_4/BiasAdd/ReadVariableOpReadVariableOp4sequential_1_dense_4_biasadd_readvariableop_resource*
_output_shapes	
:?*
dtype0?
sequential_1/dense_4/BiasAddBiasAdd'sequential_1/dense_4/Tensordot:output:03sequential_1/dense_4/BiasAdd/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
add_1AddV2layer_normalization_2/add:z:0%sequential_1/dense_4/BiasAdd:output:0*
T0*,
_output_shapes
:??????????T
layer_normalization_3/ShapeShape	add_1:z:0*
T0*
_output_shapes
:s
)layer_normalization_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+layer_normalization_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+layer_normalization_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
#layer_normalization_3/strided_sliceStridedSlice$layer_normalization_3/Shape:output:02layer_normalization_3/strided_slice/stack:output:04layer_normalization_3/strided_slice/stack_1:output:04layer_normalization_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
layer_normalization_3/mul/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mulMul$layer_normalization_3/mul/x:output:0,layer_normalization_3/strided_slice:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_1StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_1/stack:output:06layer_normalization_3/strided_slice_1/stack_1:output:06layer_normalization_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask?
layer_normalization_3/mul_1Mullayer_normalization_3/mul:z:0.layer_normalization_3/strided_slice_1:output:0*
T0*
_output_shapes
: u
+layer_normalization_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-layer_normalization_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:?
%layer_normalization_3/strided_slice_2StridedSlice$layer_normalization_3/Shape:output:04layer_normalization_3/strided_slice_2/stack:output:06layer_normalization_3/strided_slice_2/stack_1:output:06layer_normalization_3/strided_slice_2/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
layer_normalization_3/mul_2/xConst*
_output_shapes
: *
dtype0*
value	B :?
layer_normalization_3/mul_2Mul&layer_normalization_3/mul_2/x:output:0.layer_normalization_3/strided_slice_2:output:0*
T0*
_output_shapes
: g
%layer_normalization_3/Reshape/shape/0Const*
_output_shapes
: *
dtype0*
value	B :g
%layer_normalization_3/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :?
#layer_normalization_3/Reshape/shapePack.layer_normalization_3/Reshape/shape/0:output:0layer_normalization_3/mul_1:z:0layer_normalization_3/mul_2:z:0.layer_normalization_3/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:?
layer_normalization_3/ReshapeReshape	add_1:z:0,layer_normalization_3/Reshape/shape:output:0*
T0*0
_output_shapes
:??????????x
!layer_normalization_3/ones/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:e
 layer_normalization_3/ones/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  ???
layer_normalization_3/onesFill*layer_normalization_3/ones/packed:output:0)layer_normalization_3/ones/Const:output:0*
T0*#
_output_shapes
:?????????y
"layer_normalization_3/zeros/packedPacklayer_normalization_3/mul_1:z:0*
N*
T0*
_output_shapes
:f
!layer_normalization_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ?
layer_normalization_3/zerosFill+layer_normalization_3/zeros/packed:output:0*layer_normalization_3/zeros/Const:output:0*
T0*#
_output_shapes
:?????????^
layer_normalization_3/ConstConst*
_output_shapes
: *
dtype0*
valueB `
layer_normalization_3/Const_1Const*
_output_shapes
: *
dtype0*
valueB ?
&layer_normalization_3/FusedBatchNormV3FusedBatchNormV3&layer_normalization_3/Reshape:output:0#layer_normalization_3/ones:output:0$layer_normalization_3/zeros:output:0$layer_normalization_3/Const:output:0&layer_normalization_3/Const_1:output:0*
T0*
U0*p
_output_shapes^
\:??????????:?????????:?????????:?????????:?????????:*
data_formatNCHW*
epsilon%o?:?
layer_normalization_3/Reshape_1Reshape*layer_normalization_3/FusedBatchNormV3:y:0$layer_normalization_3/Shape:output:0*
T0*,
_output_shapes
:???????????
*layer_normalization_3/mul_3/ReadVariableOpReadVariableOp3layer_normalization_3_mul_3_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/mul_3Mul(layer_normalization_3/Reshape_1:output:02layer_normalization_3/mul_3/ReadVariableOp:value:0*
T0*,
_output_shapes
:???????????
(layer_normalization_3/add/ReadVariableOpReadVariableOp1layer_normalization_3_add_readvariableop_resource*
_output_shapes	
:?*
dtype0?
layer_normalization_3/addAddV2layer_normalization_3/mul_3:z:00layer_normalization_3/add/ReadVariableOp:value:0*
T0*,
_output_shapes
:??????????q
IdentityIdentitylayer_normalization_3/add:z:0^NoOp*
T0*,
_output_shapes
:???????????
NoOpNoOp)^layer_normalization_2/add/ReadVariableOp+^layer_normalization_2/mul_3/ReadVariableOp)^layer_normalization_3/add/ReadVariableOp+^layer_normalization_3/mul_3/ReadVariableOp;^multi_head_attention_1/attention_output/add/ReadVariableOpE^multi_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp.^multi_head_attention_1/key/add/ReadVariableOp8^multi_head_attention_1/key/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/query/add/ReadVariableOp:^multi_head_attention_1/query/einsum/Einsum/ReadVariableOp0^multi_head_attention_1/value/add/ReadVariableOp:^multi_head_attention_1/value/einsum/Einsum/ReadVariableOp,^sequential_1/dense_3/BiasAdd/ReadVariableOp.^sequential_1/dense_3/Tensordot/ReadVariableOp,^sequential_1/dense_4/BiasAdd/ReadVariableOp.^sequential_1/dense_4/Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*^
_input_shapesM
K:??????????:?????????: : : : : : : : : : : : : : : : 2T
(layer_normalization_2/add/ReadVariableOp(layer_normalization_2/add/ReadVariableOp2X
*layer_normalization_2/mul_3/ReadVariableOp*layer_normalization_2/mul_3/ReadVariableOp2T
(layer_normalization_3/add/ReadVariableOp(layer_normalization_3/add/ReadVariableOp2X
*layer_normalization_3/mul_3/ReadVariableOp*layer_normalization_3/mul_3/ReadVariableOp2x
:multi_head_attention_1/attention_output/add/ReadVariableOp:multi_head_attention_1/attention_output/add/ReadVariableOp2?
Dmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOpDmulti_head_attention_1/attention_output/einsum/Einsum/ReadVariableOp2^
-multi_head_attention_1/key/add/ReadVariableOp-multi_head_attention_1/key/add/ReadVariableOp2r
7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp7multi_head_attention_1/key/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/query/add/ReadVariableOp/multi_head_attention_1/query/add/ReadVariableOp2v
9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp9multi_head_attention_1/query/einsum/Einsum/ReadVariableOp2b
/multi_head_attention_1/value/add/ReadVariableOp/multi_head_attention_1/value/add/ReadVariableOp2v
9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp9multi_head_attention_1/value/einsum/Einsum/ReadVariableOp2Z
+sequential_1/dense_3/BiasAdd/ReadVariableOp+sequential_1/dense_3/BiasAdd/ReadVariableOp2^
-sequential_1/dense_3/Tensordot/ReadVariableOp-sequential_1/dense_3/Tensordot/ReadVariableOp2Z
+sequential_1/dense_4/BiasAdd/ReadVariableOp+sequential_1/dense_4/BiasAdd/ReadVariableOp2^
-sequential_1/dense_4/Tensordot/ReadVariableOp-sequential_1/dense_4/Tensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs:MI
'
_output_shapes
:?????????

_user_specified_namemask
?
?
(__inference_dense_4_layer_call_fn_503772

inputs
unknown:	?
	unknown_0:	?
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_4_layer_call_and_return_conditional_losses_501354t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:??????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:?????????: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:?????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_503515

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?

d
E__inference_dropout_1_layer_call_and_return_conditional_losses_503542

inputs
identity?R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @e
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:??????????C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:?
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:??????????*
dtype0*

seed2[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ??
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:??????????p
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:??????????j
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:??????????Z
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs
?&
?
?__inference_vit_layer_call_and_return_conditional_losses_502413
input_44
!frame_positional_embedding_502366:	?1
transformerencoder_502372:??,
transformerencoder_502374:	?1
transformerencoder_502376:??,
transformerencoder_502378:	?1
transformerencoder_502380:??,
transformerencoder_502382:	?1
transformerencoder_502384:??(
transformerencoder_502386:	?(
transformerencoder_502388:	?(
transformerencoder_502390:	?,
transformerencoder_502392:	?'
transformerencoder_502394:,
transformerencoder_502396:	?(
transformerencoder_502398:	?(
transformerencoder_502400:	?(
transformerencoder_502402:	?!
dense_5_502407:	?
dense_5_502409:
identity??2Frame_positional_embedding/StatefulPartitionedCall?*TransformerEncoder/StatefulPartitionedCall?dense_5/StatefulPartitionedCall?!dropout_1/StatefulPartitionedCall?
2Frame_positional_embedding/StatefulPartitionedCallStatefulPartitionedCallinput_4!frame_positional_embedding_502366*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*#
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *_
fZRX
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_501511v
Frame_positional_embedding/CastCastinput_4*

DstT0
*

SrcT0*,
_output_shapes
:??????????{
0Frame_positional_embedding/Any/reduction_indicesConst*
_output_shapes
: *
dtype0*
valueB :
??????????
Frame_positional_embedding/AnyAny#Frame_positional_embedding/Cast:y:09Frame_positional_embedding/Any/reduction_indices:output:0*'
_output_shapes
:??????????
*TransformerEncoder/StatefulPartitionedCallStatefulPartitionedCall;Frame_positional_embedding/StatefulPartitionedCall:output:0'Frame_positional_embedding/Any:output:0transformerencoder_502372transformerencoder_502374transformerencoder_502376transformerencoder_502378transformerencoder_502380transformerencoder_502382transformerencoder_502384transformerencoder_502386transformerencoder_502388transformerencoder_502390transformerencoder_502392transformerencoder_502394transformerencoder_502396transformerencoder_502398transformerencoder_502400transformerencoder_502402*
Tin
2
*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:??????????*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *W
fRRP
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_502091?
&global_max_pooling1d_1/PartitionedCallPartitionedCall3TransformerEncoder/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *[
fVRT
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483?
!dropout_1/StatefulPartitionedCallStatefulPartitionedCall/global_max_pooling1d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501844?
dense_5/StatefulPartitionedCallStatefulPartitionedCall*dropout_1/StatefulPartitionedCall:output:0dense_5_502407dense_5_502409*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8? *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_501766w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:??????????
NoOpNoOp3^Frame_positional_embedding/StatefulPartitionedCall+^TransformerEncoder/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall"^dropout_1/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 2h
2Frame_positional_embedding/StatefulPartitionedCall2Frame_positional_embedding/StatefulPartitionedCall2X
*TransformerEncoder/StatefulPartitionedCall*TransformerEncoder/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall2F
!dropout_1/StatefulPartitionedCall!dropout_1/StatefulPartitionedCall:U Q
,
_output_shapes
:??????????
!
_user_specified_name	input_4
?"
?
C__inference_dense_3_layer_call_and_return_conditional_losses_501318

inputs4
!tensordot_readvariableop_resource:	?-
biasadd_readvariableop_resource:
identity??BiasAdd/ReadVariableOp?Tensordot/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	?*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:???????????
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:???????????????????
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:?????????[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:Y
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : ?
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:?
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:?????????r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:?????????O

Gelu/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *   ?l
Gelu/mulMulGelu/mul/x:output:0BiasAdd:output:0*
T0*+
_output_shapes
:?????????P
Gelu/Cast/xConst*
_output_shapes
: *
dtype0*
valueB
 *???u
Gelu/truedivRealDivBiasAdd:output:0Gelu/Cast/x:output:0*
T0*+
_output_shapes
:?????????W
Gelu/ErfErfGelu/truediv:z:0*
T0*+
_output_shapes
:?????????O

Gelu/add/xConst*
_output_shapes
: *
dtype0*
valueB
 *  ??j
Gelu/addAddV2Gelu/add/x:output:0Gelu/Erf:y:0*
T0*+
_output_shapes
:?????????c

Gelu/mul_1MulGelu/mul:z:0Gelu/add:z:0*
T0*+
_output_shapes
:?????????a
IdentityIdentityGelu/mul_1:z:0^NoOp*
T0*+
_output_shapes
:?????????z
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:??????????: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
n
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_501483

inputs
identityW
Max/reduction_indicesConst*
_output_shapes
: *
dtype0*
value	B :m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:??????????????????]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:??????????????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*<
_input_shapes+
):'???????????????????????????:e a
=
_output_shapes+
):'???????????????????????????
 
_user_specified_nameinputs
?
?
$__inference_vit_layer_call_fn_502462

inputs
unknown:	?!
	unknown_0:??
	unknown_1:	?!
	unknown_2:??
	unknown_3:	?!
	unknown_4:??
	unknown_5:	?!
	unknown_6:??
	unknown_7:	?
	unknown_8:	?
	unknown_9:	?

unknown_10:	?

unknown_11:

unknown_12:	?

unknown_13:	?

unknown_14:	?

unknown_15:	?

unknown_16:	?

unknown_17:
identity??StatefulPartitionedCall?
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:?????????*5
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8? *H
fCRA
?__inference_vit_layer_call_and_return_conditional_losses_501773o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:?????????`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*Q
_input_shapes@
>:??????????: : : : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:??????????
 
_user_specified_nameinputs
?
F
*__inference_dropout_1_layer_call_fn_503520

inputs
identity?
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:??????????* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8? *N
fIRG
E__inference_dropout_1_layer_call_and_return_conditional_losses_501753a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:??????????"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*'
_input_shapes
:??????????:P L
(
_output_shapes
:??????????
 
_user_specified_nameinputs"?L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*?
serving_default?
@
input_45
serving_default_input_4:0??????????;
dense_50
StatefulPartitionedCall:0?????????tensorflow/serving/predict:ߢ
?
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
layer-4
layer_with_weights-2
layer-5
	optimizer
	variables
	trainable_variables

regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature

signatures"
_tf_keras_network
"
_tf_keras_input_layer
?
position_embedding
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
?
	attention

dense_proj
layernorm_1
layernorm_2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses"
_tf_keras_layer
?
!	variables
"trainable_variables
#regularization_losses
$	keras_api
%__call__
*&&call_and_return_all_conditional_losses"
_tf_keras_layer
?
'	variables
(trainable_variables
)regularization_losses
*	keras_api
+_random_generator
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
?

.kernel
/bias
0	variables
1trainable_variables
2regularization_losses
3	keras_api
4__call__
*5&call_and_return_all_conditional_losses"
_tf_keras_layer
?
6iter

7beta_1

8beta_2
	9decay
:learning_rate.m?/m?;m?<m?=m?>m??m?@m?Am?Bm?Cm?Dm?Em?Fm?Gm?Hm?Im?Jm?Km?.v?/v?;v?<v?=v?>v??v?@v?Av?Bv?Cv?Dv?Ev?Fv?Gv?Hv?Iv?Jv?Kv?"
	optimizer
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
.17
/18"
trackable_list_wrapper
?
;0
<1
=2
>3
?4
@5
A6
B7
C8
D9
E10
F11
G12
H13
I14
J15
K16
.17
/18"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Lnon_trainable_variables

Mlayers
Nmetrics
Olayer_regularization_losses
Player_metrics
	variables
	trainable_variables

regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
$__inference_vit_layer_call_fn_501814
$__inference_vit_layer_call_fn_502462
$__inference_vit_layer_call_fn_502505
$__inference_vit_layer_call_fn_502313?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
?__inference_vit_layer_call_and_return_conditional_losses_502726
?__inference_vit_layer_call_and_return_conditional_losses_502961
?__inference_vit_layer_call_and_return_conditional_losses_502363
?__inference_vit_layer_call_and_return_conditional_losses_502413?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?B?
!__inference__wrapped_model_501273input_4"?
???
FullArgSpec
args? 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
,
Qserving_default"
signature_map
?
;
embeddings
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses"
_tf_keras_layer
'
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
?2?
;__inference_Frame_positional_embedding_layer_call_fn_503013?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_503031?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?
]_query_dense
^
_key_dense
__value_dense
`_softmax
a_dropout_layer
b_output_dense
c	variables
dtrainable_variables
eregularization_losses
f	keras_api
g__call__
*h&call_and_return_all_conditional_losses"
_tf_keras_layer
?
ilayer_with_weights-0
ilayer-0
jlayer_with_weights-1
jlayer-1
k	variables
ltrainable_variables
mregularization_losses
n	keras_api
o__call__
*p&call_and_return_all_conditional_losses"
_tf_keras_sequential
?
qaxis
	Hgamma
Ibeta
r	variables
strainable_variables
tregularization_losses
u	keras_api
v__call__
*w&call_and_return_all_conditional_losses"
_tf_keras_layer
?
xaxis
	Jgamma
Kbeta
y	variables
ztrainable_variables
{regularization_losses
|	keras_api
}__call__
*~&call_and_return_all_conditional_losses"
_tf_keras_layer
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15"
trackable_list_wrapper
?
<0
=1
>2
?3
@4
A5
B6
C7
D8
E9
F10
G11
H12
I13
J14
K15"
trackable_list_wrapper
 "
trackable_list_wrapper
?
non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
?2?
3__inference_TransformerEncoder_layer_call_fn_503069
3__inference_TransformerEncoder_layer_call_fn_503107?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503302
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503504?
???
FullArgSpec1
args)?&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults?

 
p 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
!	variables
"trainable_variables
#regularization_losses
%__call__
*&&call_and_return_all_conditional_losses
&&"call_and_return_conditional_losses"
_generic_user_object
?2?
7__inference_global_max_pooling1d_1_layer_call_fn_503509?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_503515?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
'	variables
(trainable_variables
)regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2?
*__inference_dropout_1_layer_call_fn_503520
*__inference_dropout_1_layer_call_fn_503525?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
E__inference_dropout_1_layer_call_and_return_conditional_losses_503530
E__inference_dropout_1_layer_call_and_return_conditional_losses_503542?
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
!:	?2dense_5/kernel
:2dense_5/bias
.
.0
/1"
trackable_list_wrapper
.
.0
/1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
0	variables
1trainable_variables
2regularization_losses
4__call__
*5&call_and_return_all_conditional_losses
&5"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_5_layer_call_fn_503551?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_5_layer_call_and_return_conditional_losses_503562?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
D:B	?21Frame_positional_embedding/embedding_1/embeddings
N:L??26TransformerEncoder/multi_head_attention_1/query/kernel
G:E	?24TransformerEncoder/multi_head_attention_1/query/bias
L:J??24TransformerEncoder/multi_head_attention_1/key/kernel
E:C	?22TransformerEncoder/multi_head_attention_1/key/bias
N:L??26TransformerEncoder/multi_head_attention_1/value/kernel
G:E	?24TransformerEncoder/multi_head_attention_1/value/bias
Y:W??2ATransformerEncoder/multi_head_attention_1/attention_output/kernel
N:L?2?TransformerEncoder/multi_head_attention_1/attention_output/bias
!:	?2dense_3/kernel
:2dense_3/bias
!:	?2dense_4/kernel
:?2dense_4/bias
=:;?2.TransformerEncoder/layer_normalization_2/gamma
<::?2-TransformerEncoder/layer_normalization_2/beta
=:;?2.TransformerEncoder/layer_normalization_3/gamma
<::?2-TransformerEncoder/layer_normalization_3/beta
 "
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
0
?0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?B?
$__inference_signature_wrapper_503006input_4"?
???
FullArgSpec
args? 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
'
;0"
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
?
?partial_output_shape
?full_output_shape

<kernel
=bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

>kernel
?bias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

@kernel
Abias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?_random_generator
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?
?partial_output_shape
?full_output_shape

Bkernel
Cbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
X
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
X
<0
=1
>2
?3
@4
A5
B6
C7"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
c	variables
dtrainable_variables
eregularization_losses
g__call__
*h&call_and_return_all_conditional_losses
&h"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpece
args]?Z
jself
jquery
jvalue
jkey
jattention_mask
jreturn_attention_scores

jtraining
varargs
 
varkw
 
defaults?

 

 
p 
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?

Dkernel
Ebias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
?

Fkernel
Gbias
?	variables
?trainable_variables
?regularization_losses
?	keras_api
?__call__
+?&call_and_return_all_conditional_losses"
_tf_keras_layer
<
D0
E1
F2
G3"
trackable_list_wrapper
<
D0
E1
F2
G3"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
k	variables
ltrainable_variables
mregularization_losses
o__call__
*p&call_and_return_all_conditional_losses
&p"call_and_return_conditional_losses"
_generic_user_object
?2?
-__inference_sequential_1_layer_call_fn_501372
-__inference_sequential_1_layer_call_fn_503575
-__inference_sequential_1_layer_call_fn_503588
-__inference_sequential_1_layer_call_fn_501445?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2?
H__inference_sequential_1_layer_call_and_return_conditional_losses_503652
H__inference_sequential_1_layer_call_and_return_conditional_losses_503716
H__inference_sequential_1_layer_call_and_return_conditional_losses_501459
H__inference_sequential_1_layer_call_and_return_conditional_losses_501473?
???
FullArgSpec1
args)?&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults?
p 

 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
r	variables
strainable_variables
tregularization_losses
v__call__
*w&call_and_return_all_conditional_losses
&w"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
y	variables
ztrainable_variables
{regularization_losses
}__call__
*~&call_and_return_all_conditional_losses
&~"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
<
0
1
2
3"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
R

?total

?count
?	variables
?	keras_api"
_tf_keras_metric
c

?total

?count
?
_fn_kwargs
?	variables
?	keras_api"
_tf_keras_metric
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
 "
trackable_list_wrapper
 "
trackable_list_wrapper
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
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
.
>0
?1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec%
args?
jself
jinputs
jmask
varargs
 
varkw
 
defaults?

 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
"
_generic_user_object
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
?2??
???
FullArgSpec)
args!?
jself
jinputs

jtraining
varargs
 
varkw
 
defaults?
p 

kwonlyargs? 
kwonlydefaults? 
annotations? *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2??
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
J
]0
^1
_2
`3
a4
b5"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
.
D0
E1"
trackable_list_wrapper
.
D0
E1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_3_layer_call_fn_503725?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_3_layer_call_and_return_conditional_losses_503763?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
.
F0
G1"
trackable_list_wrapper
.
F0
G1"
trackable_list_wrapper
 "
trackable_list_wrapper
?
?non_trainable_variables
?layers
?metrics
 ?layer_regularization_losses
?layer_metrics
?	variables
?trainable_variables
?regularization_losses
?__call__
+?&call_and_return_all_conditional_losses
'?"call_and_return_conditional_losses"
_generic_user_object
?2?
(__inference_dense_4_layer_call_fn_503772?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
?2?
C__inference_dense_4_layer_call_and_return_conditional_losses_503802?
???
FullArgSpec
args?
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs? 
kwonlydefaults
 
annotations? *
 
 "
trackable_list_wrapper
.
i0
j1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
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
:  (2total
:  (2count
0
?0
?1"
trackable_list_wrapper
.
?	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
?0
?1"
trackable_list_wrapper
.
?	variables"
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
&:$	?2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
I:G	?28Adam/Frame_positional_embedding/embedding_1/embeddings/m
S:Q??2=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/m
L:J	?2;Adam/TransformerEncoder/multi_head_attention_1/query/bias/m
Q:O??2;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/m
J:H	?29Adam/TransformerEncoder/multi_head_attention_1/key/bias/m
S:Q??2=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/m
L:J	?2;Adam/TransformerEncoder/multi_head_attention_1/value/bias/m
^:\??2HAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/m
S:Q?2FAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/m
&:$	?2Adam/dense_3/kernel/m
:2Adam/dense_3/bias/m
&:$	?2Adam/dense_4/kernel/m
 :?2Adam/dense_4/bias/m
B:@?25Adam/TransformerEncoder/layer_normalization_2/gamma/m
A:??24Adam/TransformerEncoder/layer_normalization_2/beta/m
B:@?25Adam/TransformerEncoder/layer_normalization_3/gamma/m
A:??24Adam/TransformerEncoder/layer_normalization_3/beta/m
&:$	?2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
I:G	?28Adam/Frame_positional_embedding/embedding_1/embeddings/v
S:Q??2=Adam/TransformerEncoder/multi_head_attention_1/query/kernel/v
L:J	?2;Adam/TransformerEncoder/multi_head_attention_1/query/bias/v
Q:O??2;Adam/TransformerEncoder/multi_head_attention_1/key/kernel/v
J:H	?29Adam/TransformerEncoder/multi_head_attention_1/key/bias/v
S:Q??2=Adam/TransformerEncoder/multi_head_attention_1/value/kernel/v
L:J	?2;Adam/TransformerEncoder/multi_head_attention_1/value/bias/v
^:\??2HAdam/TransformerEncoder/multi_head_attention_1/attention_output/kernel/v
S:Q?2FAdam/TransformerEncoder/multi_head_attention_1/attention_output/bias/v
&:$	?2Adam/dense_3/kernel/v
:2Adam/dense_3/bias/v
&:$	?2Adam/dense_4/kernel/v
 :?2Adam/dense_4/bias/v
B:@?25Adam/TransformerEncoder/layer_normalization_2/gamma/v
A:??24Adam/TransformerEncoder/layer_normalization_2/beta/v
B:@?25Adam/TransformerEncoder/layer_normalization_3/gamma/v
A:??24Adam/TransformerEncoder/layer_normalization_3/beta/v?
V__inference_Frame_positional_embedding_layer_call_and_return_conditional_losses_503031e;4?1
*?'
%?"
inputs??????????
? "*?'
 ?
0??????????
? ?
;__inference_Frame_positional_embedding_layer_call_fn_503013X;4?1
*?'
%?"
inputs??????????
? "????????????
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503302?<=>?@ABCHIDEFGJKX?U
N?K
%?"
inputs??????????
?
mask?????????

p 
? "*?'
 ?
0??????????
? ?
N__inference_TransformerEncoder_layer_call_and_return_conditional_losses_503504?<=>?@ABCHIDEFGJKX?U
N?K
%?"
inputs??????????
?
mask?????????

p
? "*?'
 ?
0??????????
? ?
3__inference_TransformerEncoder_layer_call_fn_503069?<=>?@ABCHIDEFGJKX?U
N?K
%?"
inputs??????????
?
mask?????????

p 
? "????????????
3__inference_TransformerEncoder_layer_call_fn_503107?<=>?@ABCHIDEFGJKX?U
N?K
%?"
inputs??????????
?
mask?????????

p
? "????????????
!__inference__wrapped_model_501273;<=>?@ABCHIDEFGJK./5?2
+?(
&?#
input_4??????????
? "1?.
,
dense_5!?
dense_5??????????
C__inference_dense_3_layer_call_and_return_conditional_losses_503763eDE4?1
*?'
%?"
inputs??????????
? ")?&
?
0?????????
? ?
(__inference_dense_3_layer_call_fn_503725XDE4?1
*?'
%?"
inputs??????????
? "???????????
C__inference_dense_4_layer_call_and_return_conditional_losses_503802eFG3?0
)?&
$?!
inputs?????????
? "*?'
 ?
0??????????
? ?
(__inference_dense_4_layer_call_fn_503772XFG3?0
)?&
$?!
inputs?????????
? "????????????
C__inference_dense_5_layer_call_and_return_conditional_losses_503562]./0?-
&?#
!?
inputs??????????
? "%?"
?
0?????????
? |
(__inference_dense_5_layer_call_fn_503551P./0?-
&?#
!?
inputs??????????
? "???????????
E__inference_dropout_1_layer_call_and_return_conditional_losses_503530^4?1
*?'
!?
inputs??????????
p 
? "&?#
?
0??????????
? ?
E__inference_dropout_1_layer_call_and_return_conditional_losses_503542^4?1
*?'
!?
inputs??????????
p
? "&?#
?
0??????????
? 
*__inference_dropout_1_layer_call_fn_503520Q4?1
*?'
!?
inputs??????????
p 
? "???????????
*__inference_dropout_1_layer_call_fn_503525Q4?1
*?'
!?
inputs??????????
p
? "????????????
R__inference_global_max_pooling1d_1_layer_call_and_return_conditional_losses_503515wE?B
;?8
6?3
inputs'???????????????????????????
? ".?+
$?!
0??????????????????
? ?
7__inference_global_max_pooling1d_1_layer_call_fn_503509jE?B
;?8
6?3
inputs'???????????????????????????
? "!????????????????????
H__inference_sequential_1_layer_call_and_return_conditional_losses_501459wDEFGC?@
9?6
,?)
dense_3_input??????????
p 

 
? "*?'
 ?
0??????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_501473wDEFGC?@
9?6
,?)
dense_3_input??????????
p

 
? "*?'
 ?
0??????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_503652pDEFG<?9
2?/
%?"
inputs??????????
p 

 
? "*?'
 ?
0??????????
? ?
H__inference_sequential_1_layer_call_and_return_conditional_losses_503716pDEFG<?9
2?/
%?"
inputs??????????
p

 
? "*?'
 ?
0??????????
? ?
-__inference_sequential_1_layer_call_fn_501372jDEFGC?@
9?6
,?)
dense_3_input??????????
p 

 
? "????????????
-__inference_sequential_1_layer_call_fn_501445jDEFGC?@
9?6
,?)
dense_3_input??????????
p

 
? "????????????
-__inference_sequential_1_layer_call_fn_503575cDEFG<?9
2?/
%?"
inputs??????????
p 

 
? "????????????
-__inference_sequential_1_layer_call_fn_503588cDEFG<?9
2?/
%?"
inputs??????????
p

 
? "????????????
$__inference_signature_wrapper_503006?;<=>?@ABCHIDEFGJK./@?=
? 
6?3
1
input_4&?#
input_4??????????"1?.
,
dense_5!?
dense_5??????????
?__inference_vit_layer_call_and_return_conditional_losses_502363{;<=>?@ABCHIDEFGJK./=?:
3?0
&?#
input_4??????????
p 

 
? "%?"
?
0?????????
? ?
?__inference_vit_layer_call_and_return_conditional_losses_502413{;<=>?@ABCHIDEFGJK./=?:
3?0
&?#
input_4??????????
p

 
? "%?"
?
0?????????
? ?
?__inference_vit_layer_call_and_return_conditional_losses_502726z;<=>?@ABCHIDEFGJK./<?9
2?/
%?"
inputs??????????
p 

 
? "%?"
?
0?????????
? ?
?__inference_vit_layer_call_and_return_conditional_losses_502961z;<=>?@ABCHIDEFGJK./<?9
2?/
%?"
inputs??????????
p

 
? "%?"
?
0?????????
? ?
$__inference_vit_layer_call_fn_501814n;<=>?@ABCHIDEFGJK./=?:
3?0
&?#
input_4??????????
p 

 
? "???????????
$__inference_vit_layer_call_fn_502313n;<=>?@ABCHIDEFGJK./=?:
3?0
&?#
input_4??????????
p

 
? "???????????
$__inference_vit_layer_call_fn_502462m;<=>?@ABCHIDEFGJK./<?9
2?/
%?"
inputs??????????
p 

 
? "???????????
$__inference_vit_layer_call_fn_502505m;<=>?@ABCHIDEFGJK./<?9
2?/
%?"
inputs??????????
p

 
? "??????????