űŕ
¨#ú"
:
Add
x"T
y"T
z"T"
Ttype:
2	
h
All	
input

reduction_indices"Tidx

output
"
	keep_dimsbool( "
Tidxtype0:
2	
P
Assert
	condition
	
data2T"
T
list(type)(0"
	summarizeint
x
Assign
ref"T

value"T

output_ref"T"	
Ttype"
validate_shapebool("
use_lockingbool(
s
	AssignAdd
ref"T

value"T

output_ref"T" 
Ttype:
2	"
use_lockingbool( 
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
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

GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
=
Greater
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
:
Less
x"T
y"T
z
"
Ttype:
2	
?
	LessEqual
x"T
y"T
z
"
Ttype:
2	
p
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
	2
N
Merge
inputs"T*N
output"T
value_index"	
Ttype"
Nint(0
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
l
NearestNeighbors

points
centers
k	
nearest_center_indices	
nearest_center_distances

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
ď
ParseExample

serialized	
names
sparse_keys*Nsparse

dense_keys*Ndense
dense_defaults2Tdense
sparse_indices	*Nsparse
sparse_values2sparse_types
sparse_shapes	*Nsparse
dense_values2Tdense"
Nsparseint("
Ndenseint("%
sparse_types
list(type)(:
2	"
Tdense
list(type)(:
2	"
dense_shapeslist(shape)(
C
Placeholder
output"dtype"
dtypetype"
shapeshape:

RandomUniformInt

shape"T
minval"Tout
maxval"Tout
output"Tout"
seedint "
seed2int "
Touttype:
2	"
Ttype:
2	
a
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:	
2	
)
Rank

input"T

output"	
Ttype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
\
	RefSwitch
data"T
pred

output_false"T
output_true"T"	
Ttype
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
ScalarSummary
tags
values"T
summary"
Ttype:
2	
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
1
Square
x"T
y"T"
Ttype:

2	
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
M
Switch	
data"T
pred

output_false"T
output_true"T"	
Ttype
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
Á
UnsortedSegmentSum	
data"T
segment_ids"Tindices
num_segments"Tnumsegments
output"T" 
Ttype:
2	"
Tindicestype:
2	" 
Tnumsegmentstype0:
2	
s

VariableV2
ref"dtype"
shapeshape"
dtypetype"
	containerstring "
shared_namestring "serve*1.10.02v1.10.0-rc1-19-g656e7a2b34´ő

global_step/Initializer/zerosConst*
_class
loc:@global_step*
value	B	 R *
dtype0	*
_output_shapes
: 

global_step
VariableV2*
shared_name *
_class
loc:@global_step*
	container *
shape: *
dtype0	*
_output_shapes
: 
˛
global_step/AssignAssignglobal_stepglobal_step/Initializer/zeros*
validate_shape(*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step
j
global_step/readIdentityglobal_step*
T0	*
_class
loc:@global_step*
_output_shapes
: 
`
inputPlaceholder*
dtype0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
shape:˙˙˙˙˙˙˙˙˙
U
ParseExample/ConstConst*
dtype0*
_output_shapes
: *
valueB 
b
ParseExample/ParseExample/namesConst*
valueB *
dtype0*
_output_shapes
: 
h
&ParseExample/ParseExample/dense_keys_0Const*
dtype0*
_output_shapes
: *
value	B Bx

ParseExample/ParseExampleParseExampleinputParseExample/ParseExample/names&ParseExample/ParseExample/dense_keys_0ParseExample/Const*
Tdense
2*
Ndense*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Nsparse *
dense_shapes
:*
sparse_types
 

concat/concat_dimConst*,
_class"
 loc:@ParseExample/ParseExample*
value	B :*
dtype0*
_output_shapes
: 

concatIdentityParseExample/ParseExample*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample
G
ConstConst*
value	B :
*
dtype0*
_output_shapes
: 
J
Const_1Const*
valueB *
dtype0*
_output_shapes
: 
p
clusters
VariableV2*
shape:*
shared_name *
dtype0*
_output_shapes
:*
	container 

clusters/AssignAssignclustersConst_1*
_class
loc:@clusters*
validate_shape( *
_output_shapes
: *
use_locking(*
T0
c
clusters/readIdentityclusters*
T0*
_class
loc:@clusters*
_output_shapes
:
[
initialized/initial_valueConst*
value	B
 Z *
dtype0
*
_output_shapes
: 
o
initialized
VariableV2*
shape: *
shared_name *
dtype0
*
_output_shapes
: *
	container 
Ž
initialized/AssignAssigninitializedinitialized/initial_value*
use_locking(*
T0
*
_class
loc:@initialized*
validate_shape(*
_output_shapes
: 
j
initialized/readIdentityinitialized*
_output_shapes
: *
T0
*
_class
loc:@initialized
[
ShapeShapeclusters/read*
T0*
out_type0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙
]
strided_slice/stackConst*
valueB: *
dtype0*
_output_shapes
:
_
strided_slice/stack_1Const*
_output_shapes
:*
valueB:*
dtype0
_
strided_slice/stack_2Const*
valueB:*
dtype0*
_output_shapes
:
ů
strided_sliceStridedSliceShapestrided_slice/stackstrided_slice/stack_1strided_slice/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
T0*
Index0
A
subSubConststrided_slice*
_output_shapes
: *
T0
M
Shape_1Shapeconcat*
T0*
out_type0*
_output_shapes
:
_
strided_slice_1/stackConst*
valueB: *
dtype0*
_output_shapes
:
a
strided_slice_1/stack_1Const*
valueB:*
dtype0*
_output_shapes
:
a
strided_slice_1/stack_2Const*
valueB:*
dtype0*
_output_shapes
:

strided_slice_1StridedSliceShape_1strided_slice_1/stackstrided_slice_1/stack_1strided_slice_1/stack_2*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: *
Index0*
T0
I
Equal/yConst*
value	B : *
dtype0*
_output_shapes
: 
=
EqualEqualsubEqual/y*
T0*
_output_shapes
: 
F
cond/SwitchSwitchEqualEqual*
_output_shapes
: : *
T0

I
cond/switch_tIdentitycond/Switch:1*
_output_shapes
: *
T0

G
cond/switch_fIdentitycond/Switch*
T0
*
_output_shapes
: 
@
cond/pred_idIdentityEqual*
T0
*
_output_shapes
: 
e
cond/assert_equal/yConst^cond/switch_t*
value	B
 Z*
dtype0
*
_output_shapes
: 
x
cond/assert_equal/EqualEqual cond/assert_equal/Equal/Switch:1cond/assert_equal/y*
T0
*
_output_shapes
: 

cond/assert_equal/Equal/SwitchSwitchinitialized/readcond/pred_id*
T0
*
_class
loc:@initialized*
_output_shapes
: : 
j
cond/assert_equal/ConstConst^cond/switch_t*
valueB *
dtype0*
_output_shapes
: 

cond/assert_equal/AllAllcond/assert_equal/Equalcond/assert_equal/Const*
	keep_dims( *

Tidx0*
_output_shapes
: 
o
cond/assert_equal/Assert/ConstConst^cond/switch_t*
valueB B *
dtype0*
_output_shapes
: 

 cond/assert_equal/Assert/Const_1Const^cond/switch_t*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 

 cond/assert_equal/Assert/Const_2Const^cond/switch_t**
value!B Bx (initialized/read:0) = *
dtype0*
_output_shapes
: 

 cond/assert_equal/Assert/Const_3Const^cond/switch_t*-
value$B" By (cond/assert_equal/y:0) = *
dtype0*
_output_shapes
: 

+cond/assert_equal/Assert/AssertGuard/SwitchSwitchcond/assert_equal/Allcond/assert_equal/All*
T0
*
_output_shapes
: : 

-cond/assert_equal/Assert/AssertGuard/switch_tIdentity-cond/assert_equal/Assert/AssertGuard/Switch:1*
T0
*
_output_shapes
: 

-cond/assert_equal/Assert/AssertGuard/switch_fIdentity+cond/assert_equal/Assert/AssertGuard/Switch*
T0
*
_output_shapes
: 
p
,cond/assert_equal/Assert/AssertGuard/pred_idIdentitycond/assert_equal/All*
T0
*
_output_shapes
: 
a
)cond/assert_equal/Assert/AssertGuard/NoOpNoOp.^cond/assert_equal/Assert/AssertGuard/switch_t

7cond/assert_equal/Assert/AssertGuard/control_dependencyIdentity-cond/assert_equal/Assert/AssertGuard/switch_t*^cond/assert_equal/Assert/AssertGuard/NoOp*
T0
*@
_class6
42loc:@cond/assert_equal/Assert/AssertGuard/switch_t*
_output_shapes
: 
Ł
2cond/assert_equal/Assert/AssertGuard/Assert/data_0Const.^cond/assert_equal/Assert/AssertGuard/switch_f*
_output_shapes
: *
valueB B *
dtype0
Î
2cond/assert_equal/Assert/AssertGuard/Assert/data_1Const.^cond/assert_equal/Assert/AssertGuard/switch_f*<
value3B1 B+Condition x == y did not hold element-wise:*
dtype0*
_output_shapes
: 
ź
2cond/assert_equal/Assert/AssertGuard/Assert/data_2Const.^cond/assert_equal/Assert/AssertGuard/switch_f**
value!B Bx (initialized/read:0) = *
dtype0*
_output_shapes
: 
ż
2cond/assert_equal/Assert/AssertGuard/Assert/data_4Const.^cond/assert_equal/Assert/AssertGuard/switch_f*-
value$B" By (cond/assert_equal/y:0) = *
dtype0*
_output_shapes
: 
Ç
+cond/assert_equal/Assert/AssertGuard/AssertAssert2cond/assert_equal/Assert/AssertGuard/Assert/Switch2cond/assert_equal/Assert/AssertGuard/Assert/data_02cond/assert_equal/Assert/AssertGuard/Assert/data_12cond/assert_equal/Assert/AssertGuard/Assert/data_24cond/assert_equal/Assert/AssertGuard/Assert/Switch_12cond/assert_equal/Assert/AssertGuard/Assert/data_44cond/assert_equal/Assert/AssertGuard/Assert/Switch_2*
	summarize*
T

2


Î
2cond/assert_equal/Assert/AssertGuard/Assert/SwitchSwitchcond/assert_equal/All,cond/assert_equal/Assert/AssertGuard/pred_id*
T0
*(
_class
loc:@cond/assert_equal/All*
_output_shapes
: : 
Ń
4cond/assert_equal/Assert/AssertGuard/Assert/Switch_1Switch cond/assert_equal/Equal/Switch:1,cond/assert_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*
_class
loc:@initialized
Ě
4cond/assert_equal/Assert/AssertGuard/Assert/Switch_2Switchcond/assert_equal/y,cond/assert_equal/Assert/AssertGuard/pred_id*
_output_shapes
: : *
T0
*&
_class
loc:@cond/assert_equal/y

9cond/assert_equal/Assert/AssertGuard/control_dependency_1Identity-cond/assert_equal/Assert/AssertGuard/switch_f,^cond/assert_equal/Assert/AssertGuard/Assert*
T0
*@
_class6
42loc:@cond/assert_equal/Assert/AssertGuard/switch_f*
_output_shapes
: 
Ó
*cond/assert_equal/Assert/AssertGuard/MergeMerge9cond/assert_equal/Assert/AssertGuard/control_dependency_17cond/assert_equal/Assert/AssertGuard/control_dependency*
T0
*
N*
_output_shapes
: : 
˘
cond/control_dependencyIdentitycond/switch_t+^cond/assert_equal/Assert/AssertGuard/Merge*
_output_shapes
: *
T0
* 
_class
loc:@cond/switch_t
l
cond/assert_positive/ConstConst^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 

%cond/assert_positive/assert_less/LessLesscond/assert_positive/Const,cond/assert_positive/assert_less/Less/Switch*
_output_shapes
: *
T0

,cond/assert_positive/assert_less/Less/SwitchSwitchsubcond/pred_id*
T0*
_class

loc:@sub*
_output_shapes
: : 
y
&cond/assert_positive/assert_less/ConstConst^cond/switch_f*
valueB *
dtype0*
_output_shapes
: 
Ż
$cond/assert_positive/assert_less/AllAll%cond/assert_positive/assert_less/Less&cond/assert_positive/assert_less/Const*
_output_shapes
: *
	keep_dims( *

Tidx0
~
-cond/assert_positive/assert_less/Assert/ConstConst^cond/switch_f*
valueB B *
dtype0*
_output_shapes
: 
Ş
/cond/assert_positive/assert_less/Assert/Const_1Const^cond/switch_f*;
value2B0 B*Condition x > 0 did not hold element-wise:*
dtype0*
_output_shapes
: 

/cond/assert_positive/assert_less/Assert/Const_2Const^cond/switch_f*
dtype0*
_output_shapes
: *
valueB Bx (sub:0) = 

5cond/assert_positive/assert_less/Assert/Assert/data_0Const^cond/switch_f*
valueB B *
dtype0*
_output_shapes
: 
°
5cond/assert_positive/assert_less/Assert/Assert/data_1Const^cond/switch_f*
dtype0*
_output_shapes
: *;
value2B0 B*Condition x > 0 did not hold element-wise:

5cond/assert_positive/assert_less/Assert/Assert/data_2Const^cond/switch_f*
_output_shapes
: *
valueB Bx (sub:0) = *
dtype0
Ń
.cond/assert_positive/assert_less/Assert/AssertAssert$cond/assert_positive/assert_less/All5cond/assert_positive/assert_less/Assert/Assert/data_05cond/assert_positive/assert_less/Assert/Assert/data_15cond/assert_positive/assert_less/Assert/Assert/data_2,cond/assert_positive/assert_less/Less/Switch*
T
2*
	summarize
˛
cond/LessEqual	LessEqualcond/LessEqual/Switch,cond/assert_positive/assert_less/Less/Switch/^cond/assert_positive/assert_less/Assert/Assert*
T0*
_output_shapes
: 

cond/LessEqual/SwitchSwitchstrided_slice_1cond/pred_id*
_output_shapes
: : *
T0*"
_class
loc:@strided_slice_1
]
cond/cond/SwitchSwitchcond/LessEqualcond/LessEqual*
T0
*
_output_shapes
: : 
S
cond/cond/switch_tIdentitycond/cond/Switch:1*
_output_shapes
: *
T0

Q
cond/cond/switch_fIdentitycond/cond/Switch*
T0
*
_output_shapes
: 
N
cond/cond/pred_idIdentitycond/LessEqual*
T0
*
_output_shapes
: 
Ł
cond/cond/concat/concat_dimConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond/switch_t*
value	B : *
dtype0*
_output_shapes
: 

cond/cond/concatIdentitycond/cond/concat/Switch_1:1/^cond/assert_positive/assert_less/Assert/Assert*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0
Ş
cond/cond/concat/SwitchSwitchconcatcond/pred_id*
T0*,
_class"
 loc:@ParseExample/ParseExample*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
Â
cond/cond/concat/Switch_1Switchcond/cond/concat/Switchcond/cond/pred_id*
T0*,
_class"
 loc:@ParseExample/ParseExample*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙
°
cond/cond/Reshape/shapeConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond/switch_f*
valueB:
˙˙˙˙˙˙˙˙˙*
dtype0*
_output_shapes
:

cond/cond/ReshapeReshapecond/cond/Reshape/Switchcond/cond/Reshape/shape*
T0*
Tshape0*
_output_shapes
:

cond/cond/Reshape/SwitchSwitch,cond/assert_positive/assert_less/Less/Switchcond/cond/pred_id*
T0*
_class

loc:@sub*
_output_shapes
: : 

cond/cond/CastCastcond/cond/Cast/Switch/^cond/assert_positive/assert_less/Assert/Assert*

SrcT0*
_output_shapes
: *

DstT0	

cond/cond/Cast/SwitchSwitchcond/LessEqual/Switchcond/cond/pred_id*
T0*"
_class
loc:@strided_slice_1*
_output_shapes
: : 
¤
cond/cond/random_uniform/minConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond/switch_f*
value	B	 R *
dtype0	*
_output_shapes
: 
Ă
cond/cond/random_uniformRandomUniformIntcond/cond/Reshapecond/cond/random_uniform/mincond/cond/Cast*
T0*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
seed2 *

Tout0	*
seedą˙ĺ)
Ő
cond/cond/embedding_lookup/axisConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond/switch_f*,
_class"
 loc:@ParseExample/ParseExample*
value	B : *
dtype0*
_output_shapes
: 

cond/cond/embedding_lookupGatherV2!cond/cond/embedding_lookup/Switchcond/cond/random_uniformcond/cond/embedding_lookup/axis*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
Taxis0*
Tindices0	*
Tparams0*,
_class"
 loc:@ParseExample/ParseExample
Ę
!cond/cond/embedding_lookup/SwitchSwitchcond/cond/concat/Switchcond/cond/pred_id*,
_class"
 loc:@ParseExample/ParseExample*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0

cond/cond/MergeMergecond/cond/embedding_lookupcond/cond/concat*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0

cond/Equal/yConst/^cond/assert_positive/assert_less/Assert/Assert^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
U

cond/EqualEqualcond/Equal/Switchcond/Equal/y*
T0*
_output_shapes
: 
}
cond/Equal/SwitchSwitchstrided_slicecond/pred_id*
_output_shapes
: : *
T0* 
_class
loc:@strided_slice
W
cond/cond_1/SwitchSwitch
cond/Equal
cond/Equal*
_output_shapes
: : *
T0

W
cond/cond_1/switch_tIdentitycond/cond_1/Switch:1*
T0
*
_output_shapes
: 
U
cond/cond_1/switch_fIdentitycond/cond_1/Switch*
T0
*
_output_shapes
: 
L
cond/cond_1/pred_idIdentity
cond/Equal*
_output_shapes
: *
T0

­
cond/cond_1/Switch_1Switchcond/cond/Mergecond/cond_1/pred_id*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙*
T0*"
_class
loc:@cond/cond/Merge
Ą
cond/cond_1/concat/axisConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond_1/switch_f*
value	B : *
dtype0*
_output_shapes
: 
¸
cond/cond_1/concatConcatV2cond/cond_1/concat/Switch_1cond/cond_1/concat/Switch_2cond/cond_1/concat/axis*
N*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*
T0

cond/cond_1/concat/SwitchSwitchclusters/readcond/pred_id*
_output_shapes

::*
T0*
_class
loc:@clusters

cond/cond_1/concat/Switch_1Switchcond/cond_1/concat/Switchcond/cond_1/pred_id*
T0*
_class
loc:@clusters*
_output_shapes

::
´
cond/cond_1/concat/Switch_2Switchcond/cond/Mergecond/cond_1/pred_id*
T0*"
_class
loc:@cond/cond/Merge*:
_output_shapes(
&:˙˙˙˙˙˙˙˙˙:˙˙˙˙˙˙˙˙˙

cond/cond_1/MergeMergecond/cond_1/concatcond/cond_1/Switch_1:1*
N*)
_output_shapes
:˙˙˙˙˙˙˙˙˙: *
T0
´
cond/AssignAssigncond/Assign/Switchcond/cond_1/Merge*
validate_shape( *'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
use_locking(*
T0*
_class
loc:@clusters
{
cond/Assign/Switch	RefSwitchclusterscond/pred_id*
T0*
_class
loc:@clusters*
_output_shapes

::
U

cond/ShapeShapecond/Assign*
T0*
out_type0*
_output_shapes
:
Ł
cond/strided_slice/stackConst/^cond/assert_positive/assert_less/Assert/Assert^cond/switch_f*
valueB: *
dtype0*
_output_shapes
:
Ľ
cond/strided_slice/stack_1Const/^cond/assert_positive/assert_less/Assert/Assert^cond/switch_f*
valueB:*
dtype0*
_output_shapes
:
Ľ
cond/strided_slice/stack_2Const/^cond/assert_positive/assert_less/Assert/Assert^cond/switch_f*
_output_shapes
:*
valueB:*
dtype0

cond/strided_sliceStridedSlice
cond/Shapecond/strided_slice/stackcond/strided_slice/stack_1cond/strided_slice/stack_2*
_output_shapes
: *
Index0*
T0*
shrink_axis_mask*

begin_mask *
ellipsis_mask *
new_axis_mask *
end_mask 
U
cond/subSubcond/sub/Switchcond/strided_slice*
_output_shapes
: *
T0
k
cond/sub/SwitchSwitchConstcond/pred_id*
T0*
_class

loc:@Const*
_output_shapes
: : 

cond/Equal_1/yConst/^cond/assert_positive/assert_less/Assert/Assert^cond/switch_f*
value	B : *
dtype0*
_output_shapes
: 
P
cond/Equal_1Equalcond/subcond/Equal_1/y*
T0*
_output_shapes
: 
[
cond/cond_2/SwitchSwitchcond/Equal_1cond/Equal_1*
T0
*
_output_shapes
: : 
W
cond/cond_2/switch_tIdentitycond/cond_2/Switch:1*
_output_shapes
: *
T0

U
cond/cond_2/switch_fIdentitycond/cond_2/Switch*
T0
*
_output_shapes
: 
N
cond/cond_2/pred_idIdentitycond/Equal_1*
T0
*
_output_shapes
: 
˘
cond/cond_2/Assign/valueConst/^cond/assert_positive/assert_less/Assert/Assert^cond/cond_2/switch_t*
value	B
 Z*
dtype0
*
_output_shapes
: 
ż
cond/cond_2/AssignAssigncond/cond_2/Assign/Switch_1:1cond/cond_2/Assign/value*
use_locking(*
T0
*
_class
loc:@initialized*
validate_shape(*
_output_shapes
: 

cond/cond_2/Assign/Switch	RefSwitchinitializedcond/pred_id*
_class
loc:@initialized*
_output_shapes
: : *
T0


cond/cond_2/Assign/Switch_1	RefSwitchcond/cond_2/Assign/Switchcond/cond_2/pred_id*
_output_shapes
: : *
T0
*
_class
loc:@initialized
`
cond/cond_2/NoOpNoOp/^cond/assert_positive/assert_less/Assert/Assert^cond/cond_2/switch_f

cond/cond_2/control_dependencyIdentitycond/cond_2/switch_f^cond/cond_2/NoOp*
_output_shapes
: *
T0
*'
_class
loc:@cond/cond_2/switch_f
z
cond/cond_2/MergeMergecond/cond_2/control_dependencycond/cond_2/Assign*
T0
*
N*
_output_shapes
: : 
k

cond/MergeMergecond/cond_2/Mergecond/control_dependency*
_output_shapes
: : *
T0
*
N
x
SquareSquareconcat*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample

Sum/reduction_indicesConst*,
_class"
 loc:@ParseExample/ParseExample*
value	B :*
dtype0*
_output_shapes
: 
Ś
SumSumSquareSum/reduction_indices*
T0*,
_class"
 loc:@ParseExample/ParseExample*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
	keep_dims(*

Tidx0
ś
MatMulMatMulconcatclusters/read*
T0*,
_class"
 loc:@ParseExample/ParseExample*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
transpose_a( *
transpose_b(
x
mul/xConst*,
_class"
 loc:@ParseExample/ParseExample*
valueB
 *   @*
dtype0*
_output_shapes
: 

mulMulmul/xMatMul*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample

sub_1SubSummul*
T0*,
_class"
 loc:@ParseExample/ParseExample*0
_output_shapes
:˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙˙
r
Square_1Squareclusters/read*
_output_shapes
:*
T0*,
_class"
 loc:@ParseExample/ParseExample

Sum_1/reduction_indicesConst*,
_class"
 loc:@ParseExample/ParseExample*
value	B :*
dtype0*
_output_shapes
: 

Sum_1SumSquare_1Sum_1/reduction_indices*
_output_shapes
:*
	keep_dims(*

Tidx0*
T0*,
_class"
 loc:@ParseExample/ParseExample
l
transpose/RankRankSum_1*
T0*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes
: 

transpose/sub/yConst*,
_class"
 loc:@ParseExample/ParseExample*
value	B :*
dtype0*
_output_shapes
: 

transpose/subSubtranspose/Ranktranspose/sub/y*
T0*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes
: 

transpose/Range/startConst*
dtype0*
_output_shapes
: *,
_class"
 loc:@ParseExample/ParseExample*
value	B : 

transpose/Range/deltaConst*,
_class"
 loc:@ParseExample/ParseExample*
value	B :*
dtype0*
_output_shapes
: 
ľ
transpose/RangeRangetranspose/Range/starttranspose/Ranktranspose/Range/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0*,
_class"
 loc:@ParseExample/ParseExample

transpose/sub_1Subtranspose/subtranspose/Range*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample

	transpose	TransposeSum_1transpose/sub_1*
T0*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes
:*
Tperm0
m
addAddsub_1	transpose*
_output_shapes
:*
T0*,
_class"
 loc:@ParseExample/ParseExample

NearestNeighbors/kConst*
_output_shapes
: *,
_class"
 loc:@ParseExample/ParseExample*
value	B	 R*
dtype0	

NearestNeighborsNearestNeighborsconcatclusters/readNearestNeighbors/k*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes

::

SqueezeSqueezeNearestNeighbors:1*
_output_shapes
:*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample

	Squeeze_1SqueezeNearestNeighbors*
_output_shapes
:*
squeeze_dims

˙˙˙˙˙˙˙˙˙*
T0	*,
_class"
 loc:@ParseExample/ParseExample
L
Const_2Const*
valueB
 *˝75*
dtype0*
_output_shapes
: 
ˇ
UnsortedSegmentSumUnsortedSegmentSumconcat	Squeeze_1Const*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes
:*
Tnumsegments0*
Tindices0	*
T0
{
Shape_2Shapeconcat*
_output_shapes
:*
T0*,
_class"
 loc:@ParseExample/ParseExample*
out_type0

strided_slice_2/stackConst*,
_class"
 loc:@ParseExample/ParseExample*
valueB: *
dtype0*
_output_shapes
:

strided_slice_2/stack_1Const*,
_class"
 loc:@ParseExample/ParseExample*
valueB:*
dtype0*
_output_shapes
:

strided_slice_2/stack_2Const*,
_class"
 loc:@ParseExample/ParseExample*
valueB:*
dtype0*
_output_shapes
:
ą
strided_slice_2StridedSliceShape_2strided_slice_2/stackstrided_slice_2/stack_1strided_slice_2/stack_2*
Index0*
T0*,
_class"
 loc:@ParseExample/ParseExample*
shrink_axis_mask*
ellipsis_mask *

begin_mask *
new_axis_mask *
end_mask *
_output_shapes
: 

Reshape/shapeConst*
dtype0*
_output_shapes
:*,
_class"
 loc:@ParseExample/ParseExample*
valueB:
˙˙˙˙˙˙˙˙˙

ReshapeReshapestrided_slice_2Reshape/shape*,
_class"
 loc:@ParseExample/ParseExample*
Tshape0*
_output_shapes
:*
T0
}

ones/ConstConst*,
_class"
 loc:@ParseExample/ParseExample*
valueB
 *  ?*
dtype0*
_output_shapes
: 

onesFillReshape
ones/Const*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample*

index_type0

Reshape_1/shapeConst*,
_class"
 loc:@ParseExample/ParseExample*
valueB"˙˙˙˙   *
dtype0*
_output_shapes
:

	Reshape_1ReshapeonesReshape_1/shape*'
_output_shapes
:˙˙˙˙˙˙˙˙˙*
T0*,
_class"
 loc:@ParseExample/ParseExample*
Tshape0
ź
UnsortedSegmentSum_1UnsortedSegmentSum	Reshape_1	Squeeze_1Const*
Tnumsegments0*
Tindices0	*
T0*,
_class"
 loc:@ParseExample/ParseExample*
_output_shapes
:
k
add_1AddUnsortedSegmentSum_1Const_2*
T0*
_class
loc:@clusters*
_output_shapes
:
m
truedivRealDivUnsortedSegmentSumadd_1*
_class
loc:@clusters*
_output_shapes
:*
T0

AssignAssignclusterstruediv*
_class
loc:@clusters*
validate_shape(*
_output_shapes
:*
use_locking(*
T0
T
Rank/packedPackSqueeze*
N*
_output_shapes
:*
T0*

axis 
S

Rank/inputPackSqueeze*
T0*

axis *
N*
_output_shapes
:
9
RankRank
Rank/input*
T0*
_output_shapes
: 
M
range/startConst*
value	B : *
dtype0*
_output_shapes
: 
M
range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
_
rangeRangerange/startRankrange/delta*#
_output_shapes
:˙˙˙˙˙˙˙˙˙*

Tidx0
T
Sum_2/inputPackSqueeze*
T0*

axis *
N*
_output_shapes
:
^
Sum_2SumSum_2/inputrange*
_output_shapes
: *
	keep_dims( *

Tidx0*
T0
V
loss/raw/tagsConst*
valueB Bloss/raw*
dtype0*
_output_shapes
: 
P
loss/rawScalarSummaryloss/raw/tagsSum_2*
_output_shapes
: *
T0
Q
AssignAdd/valueConst*
_output_shapes
: *
value	B	 R*
dtype0	

	AssignAdd	AssignAddglobal_stepAssignAdd/value*
_output_shapes
: *
use_locking( *
T0	*
_class
loc:@global_step
u
control_dependencyIdentitySum_2^Assign
^AssignAdd*
T0*
_class

loc:@Sum_2*
_output_shapes
: 

mean/total/Initializer/zerosConst*
_class
loc:@mean/total*
valueB
 *    *
dtype0*
_output_shapes
: 


mean/total
VariableV2*
shared_name *
_class
loc:@mean/total*
	container *
shape: *
dtype0*
_output_shapes
: 
Ž
mean/total/AssignAssign
mean/totalmean/total/Initializer/zeros*
_class
loc:@mean/total*
validate_shape(*
_output_shapes
: *
use_locking(*
T0
g
mean/total/readIdentity
mean/total*
_output_shapes
: *
T0*
_class
loc:@mean/total

mean/count/Initializer/zerosConst*
_class
loc:@mean/count*
valueB
 *    *
dtype0*
_output_shapes
: 


mean/count
VariableV2*
	container *
shape: *
dtype0*
_output_shapes
: *
shared_name *
_class
loc:@mean/count
Ž
mean/count/AssignAssign
mean/countmean/count/Initializer/zeros*
use_locking(*
T0*
_class
loc:@mean/count*
validate_shape(*
_output_shapes
: 
g
mean/count/readIdentity
mean/count*
T0*
_class
loc:@mean/count*
_output_shapes
: 
K
	mean/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
O
mean/ToFloatCast	mean/Size*
_output_shapes
: *

DstT0*

SrcT0
M

mean/ConstConst*
_output_shapes
: *
valueB *
dtype0
`
mean/SumSumSum_2
mean/Const*
	keep_dims( *

Tidx0*
T0*
_output_shapes
: 

mean/AssignAdd	AssignAdd
mean/totalmean/Sum*
_output_shapes
: *
use_locking( *
T0*
_class
loc:@mean/total

mean/AssignAdd_1	AssignAdd
mean/countmean/ToFloat^Sum_2*
use_locking( *
T0*
_class
loc:@mean/count*
_output_shapes
: 
Z
mean/truedivRealDivmean/total/readmean/count/read*
T0*
_output_shapes
: 
T
mean/zeros_likeConst*
dtype0*
_output_shapes
: *
valueB
 *    
Z
mean/GreaterGreatermean/count/readmean/zeros_like*
_output_shapes
: *
T0
b

mean/valueSelectmean/Greatermean/truedivmean/zeros_like*
T0*
_output_shapes
: 
\
mean/truediv_1RealDivmean/AssignAddmean/AssignAdd_1*
_output_shapes
: *
T0
V
mean/zeros_like_1Const*
valueB
 *    *
dtype0*
_output_shapes
: 
_
mean/Greater_1Greatermean/AssignAdd_1mean/zeros_like_1*
T0*
_output_shapes
: 
l
mean/update_opSelectmean/Greater_1mean/truediv_1mean/zeros_like_1*
T0*
_output_shapes
: 
4
initNoOp^mean/count/Assign^mean/total/Assign

init_all_tablesNoOp

init_1NoOp
4

group_depsNoOp^init^init_1^init_all_tables
P

save/ConstConst*
valueB Bmodel*
dtype0*
_output_shapes
: 

save/StringJoin/inputs_1Const*<
value3B1 B+_temp_840d5ea7b8ff4650956f902eac31ea32/part*
dtype0*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
N*
_output_shapes
: *
	separator 
Q
save/num_shardsConst*
value	B :*
dtype0*
_output_shapes
: 
k
save/ShardedFilename/shardConst"/device:CPU:0*
value	B : *
dtype0*
_output_shapes
: 

save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards"/device:CPU:0*
_output_shapes
: 

save/SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*7
value.B,BclustersBglobal_stepBinitialized*
dtype0
x
save/SaveV2/shape_and_slicesConst"/device:CPU:0*
valueBB B B *
dtype0*
_output_shapes
:
Š
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesclustersglobal_stepinitialized"/device:CPU:0*
dtypes
2	

 
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2"/device:CPU:0*
_output_shapes
: *
T0*'
_class
loc:@save/ShardedFilename
Ź
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency"/device:CPU:0*
N*
_output_shapes
:*
T0*

axis 

save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const"/device:CPU:0*
delete_old_dirs(

save/IdentityIdentity
save/Const^save/MergeV2Checkpoints^save/control_dependency"/device:CPU:0*
T0*
_output_shapes
: 

save/RestoreV2/tensor_namesConst"/device:CPU:0*7
value.B,BclustersBglobal_stepBinitialized*
dtype0*
_output_shapes
:
{
save/RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
valueBB B B *
dtype0
Š
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices"/device:CPU:0*
dtypes
2	
* 
_output_shapes
:::

save/AssignAssignclusterssave/RestoreV2*
T0*
_class
loc:@clusters*
validate_shape( *
_output_shapes
:*
use_locking(
 
save/Assign_1Assignglobal_stepsave/RestoreV2:1*
_output_shapes
: *
use_locking(*
T0	*
_class
loc:@global_step*
validate_shape(
 
save/Assign_2Assigninitializedsave/RestoreV2:2*
use_locking(*
T0
*
_class
loc:@initialized*
validate_shape(*
_output_shapes
: 
H
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2
-
save/restore_allNoOp^save/restore_shard"<
save/Const:0save/Identity:0save/restore_all (5 @F8" 
legacy_init_op


group_deps"0
saved_model_train_op

control_dependency:0"2
metric_variables

mean/total:0
mean/count:0"k
global_step\Z
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0"ß=
cond_contextÎ=Ë=
â
cond/cond_textcond/pred_id:0cond/switch_t:0 *Ü
cond/assert_equal/All:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_0:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_1:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_2:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_4:0
,cond/assert_equal/Assert/AssertGuard/Merge:0
,cond/assert_equal/Assert/AssertGuard/Merge:1
-cond/assert_equal/Assert/AssertGuard/Switch:0
-cond/assert_equal/Assert/AssertGuard/Switch:1
9cond/assert_equal/Assert/AssertGuard/control_dependency:0
;cond/assert_equal/Assert/AssertGuard/control_dependency_1:0
.cond/assert_equal/Assert/AssertGuard/pred_id:0
/cond/assert_equal/Assert/AssertGuard/switch_f:0
/cond/assert_equal/Assert/AssertGuard/switch_t:0
 cond/assert_equal/Assert/Const:0
"cond/assert_equal/Assert/Const_1:0
"cond/assert_equal/Assert/Const_2:0
"cond/assert_equal/Assert/Const_3:0
cond/assert_equal/Const:0
 cond/assert_equal/Equal/Switch:1
cond/assert_equal/Equal:0
cond/assert_equal/y:0
cond/control_dependency:0
cond/pred_id:0
cond/switch_t:0
initialized/read:0 
cond/pred_id:0cond/pred_id:06
initialized/read:0 cond/assert_equal/Equal/Switch:12

.cond/assert_equal/Assert/AssertGuard/cond_text.cond/assert_equal/Assert/AssertGuard/pred_id:0/cond/assert_equal/Assert/AssertGuard/switch_t:0 *ţ
9cond/assert_equal/Assert/AssertGuard/control_dependency:0
.cond/assert_equal/Assert/AssertGuard/pred_id:0
/cond/assert_equal/Assert/AssertGuard/switch_t:0`
.cond/assert_equal/Assert/AssertGuard/pred_id:0.cond/assert_equal/Assert/AssertGuard/pred_id:02ł	
°	
0cond/assert_equal/Assert/AssertGuard/cond_text_1.cond/assert_equal/Assert/AssertGuard/pred_id:0/cond/assert_equal/Assert/AssertGuard/switch_f:0*
cond/assert_equal/All:0
4cond/assert_equal/Assert/AssertGuard/Assert/Switch:0
6cond/assert_equal/Assert/AssertGuard/Assert/Switch_1:0
6cond/assert_equal/Assert/AssertGuard/Assert/Switch_2:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_0:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_1:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_2:0
4cond/assert_equal/Assert/AssertGuard/Assert/data_4:0
;cond/assert_equal/Assert/AssertGuard/control_dependency_1:0
.cond/assert_equal/Assert/AssertGuard/pred_id:0
/cond/assert_equal/Assert/AssertGuard/switch_f:0
 cond/assert_equal/Equal/Switch:1
cond/assert_equal/y:0
initialized/read:0O
cond/assert_equal/y:06cond/assert_equal/Assert/AssertGuard/Assert/Switch_2:0O
cond/assert_equal/All:04cond/assert_equal/Assert/AssertGuard/Assert/Switch:0L
initialized/read:06cond/assert_equal/Assert/AssertGuard/Assert/Switch_1:0D
 cond/assert_equal/Equal/Switch:1 cond/assert_equal/Equal/Switch:1`
.cond/assert_equal/Assert/AssertGuard/pred_id:0.cond/assert_equal/Assert/AssertGuard/pred_id:0
ă'
cond/cond_text_1cond/pred_id:0cond/switch_f:0*
Const:0
clusters/read:0

clusters:0
concat:0
cond/Assign/Switch:0
cond/Assign:0
cond/Equal/Switch:0
cond/Equal/y:0
cond/Equal:0
cond/Equal_1/y:0
cond/Equal_1:0
cond/LessEqual/Switch:0
cond/LessEqual:0
cond/Shape:0
cond/assert_positive/Const:0
&cond/assert_positive/assert_less/All:0
7cond/assert_positive/assert_less/Assert/Assert/data_0:0
7cond/assert_positive/assert_less/Assert/Assert/data_1:0
7cond/assert_positive/assert_less/Assert/Assert/data_2:0
/cond/assert_positive/assert_less/Assert/Const:0
1cond/assert_positive/assert_less/Assert/Const_1:0
1cond/assert_positive/assert_less/Assert/Const_2:0
(cond/assert_positive/assert_less/Const:0
.cond/assert_positive/assert_less/Less/Switch:0
'cond/assert_positive/assert_less/Less:0
cond/cond/Cast:0
cond/cond/Merge:0
cond/cond/Merge:1
cond/cond/Reshape/shape:0
cond/cond/Reshape:0
cond/cond/Switch:0
cond/cond/Switch:1
cond/cond/concat/Switch:0
cond/cond/concat/concat_dim:0
cond/cond/concat:0
!cond/cond/embedding_lookup/axis:0
cond/cond/embedding_lookup:0
cond/cond/pred_id:0
cond/cond/random_uniform/min:0
cond/cond/random_uniform:0
cond/cond/switch_f:0
cond/cond/switch_t:0
cond/cond_1/Merge:0
cond/cond_1/Merge:1
cond/cond_1/Switch:0
cond/cond_1/Switch:1
cond/cond_1/Switch_1:0
cond/cond_1/Switch_1:1
cond/cond_1/concat/Switch:0
cond/cond_1/concat/axis:0
cond/cond_1/concat:0
cond/cond_1/pred_id:0
cond/cond_1/switch_f:0
cond/cond_1/switch_t:0
cond/cond_2/Assign/Switch:0
cond/cond_2/Assign/value:0
cond/cond_2/Assign:0
cond/cond_2/Merge:0
cond/cond_2/Merge:1
cond/cond_2/Switch:0
cond/cond_2/Switch:1
 cond/cond_2/control_dependency:0
cond/cond_2/pred_id:0
cond/cond_2/switch_f:0
cond/cond_2/switch_t:0
cond/pred_id:0
cond/strided_slice/stack:0
cond/strided_slice/stack_1:0
cond/strided_slice/stack_2:0
cond/strided_slice:0
cond/sub/Switch:0

cond/sub:0
cond/switch_f:0
initialized:0
strided_slice:0
strided_slice_1:0
sub:0.
clusters/read:0cond/cond_1/concat/Switch:0,
initialized:0cond/cond_2/Assign/Switch:0"

clusters:0cond/Assign/Switch:0 
cond/pred_id:0cond/pred_id:07
sub:0.cond/assert_positive/assert_less/Less/Switch:0%
concat:0cond/cond/concat/Switch:0,
strided_slice_1:0cond/LessEqual/Switch:0&
strided_slice:0cond/Equal/Switch:0
Const:0cond/sub/Switch:02ő
ň
cond/cond/cond_textcond/cond/pred_id:0cond/cond/switch_t:0 *­
concat:0
cond/cond/concat/Switch:0
cond/cond/concat/Switch_1:1
cond/cond/concat/concat_dim:0
cond/cond/concat:0
cond/cond/pred_id:0
cond/cond/switch_t:06
cond/cond/concat/Switch:0cond/cond/concat/Switch:0'
concat:0cond/cond/concat/Switch_1:1*
cond/cond/pred_id:0cond/cond/pred_id:02

cond/cond/cond_text_1cond/cond/pred_id:0cond/cond/switch_f:0*Ę
concat:0
cond/LessEqual/Switch:0
.cond/assert_positive/assert_less/Less/Switch:0
cond/cond/Cast/Switch:0
cond/cond/Cast:0
cond/cond/Reshape/Switch:0
cond/cond/Reshape/shape:0
cond/cond/Reshape:0
cond/cond/concat/Switch:0
#cond/cond/embedding_lookup/Switch:0
!cond/cond/embedding_lookup/axis:0
cond/cond/embedding_lookup:0
cond/cond/pred_id:0
cond/cond/random_uniform/min:0
cond/cond/random_uniform:0
cond/cond/switch_f:0
strided_slice_1:0
sub:0*
cond/cond/pred_id:0cond/cond/pred_id:0#
sub:0cond/cond/Reshape/Switch:02
cond/LessEqual/Switch:0cond/LessEqual/Switch:0/
concat:0#cond/cond/embedding_lookup/Switch:0`
.cond/assert_positive/assert_less/Less/Switch:0.cond/assert_positive/assert_less/Less/Switch:0,
strided_slice_1:0cond/cond/Cast/Switch:06
cond/cond/concat/Switch:0cond/cond/concat/Switch:02

cond/cond_1/cond_textcond/cond_1/pred_id:0cond/cond_1/switch_t:0 *Ď
cond/cond/Merge:0
cond/cond_1/Switch_1:0
cond/cond_1/Switch_1:1
cond/cond_1/pred_id:0
cond/cond_1/switch_t:0+
cond/cond/Merge:0cond/cond_1/Switch_1:1.
cond/cond_1/pred_id:0cond/cond_1/pred_id:02˙
ü
cond/cond_1/cond_text_1cond/cond_1/pred_id:0cond/cond_1/switch_f:0*ą
clusters/read:0
cond/cond/Merge:0
cond/cond_1/concat/Switch:0
cond/cond_1/concat/Switch_1:0
cond/cond_1/concat/Switch_2:0
cond/cond_1/concat/axis:0
cond/cond_1/concat:0
cond/cond_1/pred_id:0
cond/cond_1/switch_f:00
clusters/read:0cond/cond_1/concat/Switch_1:0.
cond/cond_1/pred_id:0cond/cond_1/pred_id:02
cond/cond/Merge:0cond/cond_1/concat/Switch_2:0:
cond/cond_1/concat/Switch:0cond/cond_1/concat/Switch:02

cond/cond_2/cond_textcond/cond_2/pred_id:0cond/cond_2/switch_t:0 *Č
cond/cond_2/Assign/Switch:0
cond/cond_2/Assign/Switch_1:1
cond/cond_2/Assign/value:0
cond/cond_2/Assign:0
cond/cond_2/pred_id:0
cond/cond_2/switch_t:0
initialized:0:
cond/cond_2/Assign/Switch:0cond/cond_2/Assign/Switch:0.
initialized:0cond/cond_2/Assign/Switch_1:1.
cond/cond_2/pred_id:0cond/cond_2/pred_id:02Ď
Ě
cond/cond_2/cond_text_1cond/cond_2/pred_id:0cond/cond_2/switch_f:0*
 cond/cond_2/control_dependency:0
cond/cond_2/pred_id:0
cond/cond_2/switch_f:0.
cond/cond_2/pred_id:0cond/cond_2/pred_id:0"°
trainable_variables
;

clusters:0clusters/Assignclusters/read:02	Const_1:08
V
initialized:0initialized/Assigninitialized/read:02initialized/initial_value:08"
	summaries


loss/raw:0"Ă
local_variablesŻŹ
T
mean/total:0mean/total/Assignmean/total/read:02mean/total/Initializer/zeros:0
T
mean/count:0mean/count/Assignmean/count/read:02mean/count/Initializer/zeros:0"
	variablesňď
X
global_step:0global_step/Assignglobal_step/read:02global_step/Initializer/zeros:0
;

clusters:0clusters/Assignclusters/read:02	Const_1:08
V
initialized:0initialized/Assigninitialized/read:02initialized/initial_value:08*x
cluster_indexg
*
model_inputs
input:0˙˙˙˙˙˙˙˙˙
output
Squeeze_1:0	tensorflow/serving/predict*z
serving_defaultg
*
model_inputs
input:0˙˙˙˙˙˙˙˙˙
output
Squeeze_1:0	tensorflow/serving/predict*r
all_distancesa
*
model_inputs
input:0˙˙˙˙˙˙˙˙˙
output
add:0tensorflow/serving/predict