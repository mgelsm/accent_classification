       �K"	  ���Abrain.Event:27�{	6~      g�q	�����A"��
n
PlaceholderPlaceholder*
dtype0*
shape:���������N*'
_output_shapes
:���������N
p
Placeholder_1Placeholder*
dtype0*
shape:���������*'
_output_shapes
:���������
O
FC1/ToFloat/xConst*
value	B :]*
dtype0*
_output_shapes
: 
R
FC1/ToFloatCastFC1/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
R
FC1/truediv/xConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
S
FC1/truedivRealDivFC1/truediv/xFC1/ToFloat*
T0*
_output_shapes
: 
>
FC1/SqrtSqrtFC1/truediv*
T0*
_output_shapes
: 
k
FC1/truncated_normal/shapeConst*
valueB"N      *
dtype0*
_output_shapes
:
^
FC1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
$FC1/truncated_normal/TruncatedNormalTruncatedNormalFC1/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:N
x
FC1/truncated_normal/mulMul$FC1/truncated_normal/TruncatedNormalFC1/Sqrt*
T0*
_output_shapes

:N
y
FC1/truncated_normalAddFC1/truncated_normal/mulFC1/truncated_normal/mean*
T0*
_output_shapes

:N
�
FC1/Variable
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_output_shapes

:N
�
FC1/Variable/AssignAssignFC1/VariableFC1/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N
u
FC1/Variable/readIdentityFC1/Variable*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
V
	FC1/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
z
FC1/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
FC1/Variable_1/AssignAssignFC1/Variable_1	FC1/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
w
FC1/Variable_1/readIdentityFC1/Variable_1*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�

FC1/MatMulMatMulPlaceholderFC1/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
a
FC1/addAdd
FC1/MatMulFC1/Variable_1/read*
T0*'
_output_shapes
:���������
i
FC1/layer1/weights/tagConst*#
valueB BFC1/layer1/weights*
dtype0*
_output_shapes
: 
r
FC1/layer1/weightsHistogramSummaryFC1/layer1/weights/tagFC1/Variable/read*
T0*
_output_shapes
: 
g
FC1/layer1/biases/tagConst*"
valueB BFC1/layer1/biases*
dtype0*
_output_shapes
: 
r
FC1/layer1/biasesHistogramSummaryFC1/layer1/biases/tagFC1/Variable_1/read*
T0*
_output_shapes
: 
G
ReluReluFC1/add*
T0*'
_output_shapes
:���������
c
relu_activation/tagConst* 
valueB Brelu_activation*
dtype0*
_output_shapes
: 
_
relu_activationHistogramSummaryrelu_activation/tagRelu*
T0*
_output_shapes
: 
O
FC2/ToFloat/xConst*
value	B :-*
dtype0*
_output_shapes
: 
R
FC2/ToFloatCastFC2/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
R
FC2/truediv/xConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
S
FC2/truedivRealDivFC2/truediv/xFC2/ToFloat*
T0*
_output_shapes
: 
>
FC2/SqrtSqrtFC2/truediv*
T0*
_output_shapes
: 
k
FC2/truncated_normal/shapeConst*
valueB"      *
dtype0*
_output_shapes
:
^
FC2/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
$FC2/truncated_normal/TruncatedNormalTruncatedNormalFC2/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes

:
x
FC2/truncated_normal/mulMul$FC2/truncated_normal/TruncatedNormalFC2/Sqrt*
T0*
_output_shapes

:
y
FC2/truncated_normalAddFC2/truncated_normal/mulFC2/truncated_normal/mean*
T0*
_output_shapes

:
�
FC2/Variable
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_output_shapes

:
�
FC2/Variable/AssignAssignFC2/VariableFC2/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:
u
FC2/Variable/readIdentityFC2/Variable*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
V
	FC2/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
z
FC2/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
FC2/Variable_1/AssignAssignFC2/Variable_1	FC2/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
w
FC2/Variable_1/readIdentityFC2/Variable_1*
T0*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�

FC2/MatMulMatMulReluFC2/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
a
FC2/addAdd
FC2/MatMulFC2/Variable_1/read*
T0*'
_output_shapes
:���������
i
FC2/layer2/weights/tagConst*#
valueB BFC2/layer2/weights*
dtype0*
_output_shapes
: 
r
FC2/layer2/weightsHistogramSummaryFC2/layer2/weights/tagFC2/Variable/read*
T0*
_output_shapes
: 
g
FC2/layer2/biases/tagConst*"
valueB BFC2/layer2/biases*
dtype0*
_output_shapes
: 
r
FC2/layer2/biasesHistogramSummaryFC2/layer2/biases/tagFC2/Variable_1/read*
T0*
_output_shapes
: 
M
SoftmaxSoftmaxFC2/add*
T0*'
_output_shapes
:���������
i
softmax_activation/tagConst*#
valueB Bsoftmax_activation*
dtype0*
_output_shapes
: 
h
softmax_activationHistogramSummarysoftmax_activation/tagSoftmax*
T0*
_output_shapes
: 
I
Loss/L2LossL2LossFC1/Variable/read*
T0*
_output_shapes
: 
O

Loss/add/xConst*
valueB
 *    *
dtype0*
_output_shapes
: 
I
Loss/addAdd
Loss/add/xLoss/L2Loss*
T0*
_output_shapes
: 
M
Loss/L2Loss_1L2LossFC1/Variable_1/read*
T0*
_output_shapes
: 
K

Loss/add_1AddLoss/addLoss/L2Loss_1*
T0*
_output_shapes
: 
K
Loss/L2Loss_2L2LossFC2/Variable/read*
T0*
_output_shapes
: 
M

Loss/add_2Add
Loss/add_1Loss/L2Loss_2*
T0*
_output_shapes
: 
M
Loss/L2Loss_3L2LossFC2/Variable_1/read*
T0*
_output_shapes
: 
M

Loss/add_3Add
Loss/add_2Loss/L2Loss_3*
T0*
_output_shapes
: 
a
	Loss/CastCastPlaceholder_1*

SrcT0*

DstT0*'
_output_shapes
:���������
K
	Loss/RankConst*
value	B :*
dtype0*
_output_shapes
: 
Q

Loss/ShapeShapeSoftmax*
T0*
out_type0*
_output_shapes
:
M
Loss/Rank_1Const*
value	B :*
dtype0*
_output_shapes
: 
S
Loss/Shape_1ShapeSoftmax*
T0*
out_type0*
_output_shapes
:
L

Loss/Sub/yConst*
value	B :*
dtype0*
_output_shapes
: 
I
Loss/SubSubLoss/Rank_1
Loss/Sub/y*
T0*
_output_shapes
: 
\
Loss/Slice/beginPackLoss/Sub*
N*
T0*

axis *
_output_shapes
:
Y
Loss/Slice/sizeConst*
valueB:*
dtype0*
_output_shapes
:
v

Loss/SliceSliceLoss/Shape_1Loss/Slice/beginLoss/Slice/size*
T0*
Index0*
_output_shapes
:
g
Loss/concat/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
R
Loss/concat/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Loss/concatConcatV2Loss/concat/values_0
Loss/SliceLoss/concat/axis*
N*
T0*

Tidx0*
_output_shapes
:
v
Loss/ReshapeReshapeSoftmaxLoss/concat*
T0*
Tshape0*0
_output_shapes
:������������������
M
Loss/Rank_2Const*
value	B :*
dtype0*
_output_shapes
: 
U
Loss/Shape_2Shape	Loss/Cast*
T0*
out_type0*
_output_shapes
:
N
Loss/Sub_1/yConst*
value	B :*
dtype0*
_output_shapes
: 
M

Loss/Sub_1SubLoss/Rank_2Loss/Sub_1/y*
T0*
_output_shapes
: 
`
Loss/Slice_1/beginPack
Loss/Sub_1*
N*
T0*

axis *
_output_shapes
:
[
Loss/Slice_1/sizeConst*
valueB:*
dtype0*
_output_shapes
:
|
Loss/Slice_1SliceLoss/Shape_2Loss/Slice_1/beginLoss/Slice_1/size*
T0*
Index0*
_output_shapes
:
i
Loss/concat_1/values_0Const*
valueB:
���������*
dtype0*
_output_shapes
:
T
Loss/concat_1/axisConst*
value	B : *
dtype0*
_output_shapes
: 
�
Loss/concat_1ConcatV2Loss/concat_1/values_0Loss/Slice_1Loss/concat_1/axis*
N*
T0*

Tidx0*
_output_shapes
:
|
Loss/Reshape_1Reshape	Loss/CastLoss/concat_1*
T0*
Tshape0*0
_output_shapes
:������������������
�
"Loss/SoftmaxCrossEntropyWithLogitsSoftmaxCrossEntropyWithLogitsLoss/ReshapeLoss/Reshape_1*
T0*?
_output_shapes-
+:���������:������������������
N
Loss/Sub_2/yConst*
value	B :*
dtype0*
_output_shapes
: 
K

Loss/Sub_2Sub	Loss/RankLoss/Sub_2/y*
T0*
_output_shapes
: 
\
Loss/Slice_2/beginConst*
valueB: *
dtype0*
_output_shapes
:
_
Loss/Slice_2/sizePack
Loss/Sub_2*
N*
T0*

axis *
_output_shapes
:
�
Loss/Slice_2Slice
Loss/ShapeLoss/Slice_2/beginLoss/Slice_2/size*
T0*
Index0*#
_output_shapes
:���������
�
Loss/Reshape_2Reshape"Loss/SoftmaxCrossEntropyWithLogitsLoss/Slice_2*
T0*
Tshape0*#
_output_shapes
:���������
T

Loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
k
	Loss/MeanMeanLoss/Reshape_2
Loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
Loss/total_loss/tagsConst* 
valueB BLoss/total_loss*
dtype0*
_output_shapes
: 
b
Loss/total_lossScalarSummaryLoss/total_loss/tags	Loss/Mean*
T0*
_output_shapes
: 
R
gradients/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
T
gradients/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
p
&gradients/Loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients/Loss/Mean_grad/ReshapeReshapegradients/Fill&gradients/Loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
l
gradients/Loss/Mean_grad/ShapeShapeLoss/Reshape_2*
T0*
out_type0*
_output_shapes
:
�
gradients/Loss/Mean_grad/TileTile gradients/Loss/Mean_grad/Reshapegradients/Loss/Mean_grad/Shape*
T0*

Tmultiples0*#
_output_shapes
:���������
n
 gradients/Loss/Mean_grad/Shape_1ShapeLoss/Reshape_2*
T0*
out_type0*
_output_shapes
:
c
 gradients/Loss/Mean_grad/Shape_2Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/Loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Loss/Mean_grad/ProdProd gradients/Loss/Mean_grad/Shape_1gradients/Loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
j
 gradients/Loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/Loss/Mean_grad/Prod_1Prod gradients/Loss/Mean_grad/Shape_2 gradients/Loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
"gradients/Loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
 gradients/Loss/Mean_grad/MaximumMaximumgradients/Loss/Mean_grad/Prod_1"gradients/Loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
!gradients/Loss/Mean_grad/floordivFloorDivgradients/Loss/Mean_grad/Prod gradients/Loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/Loss/Mean_grad/CastCast!gradients/Loss/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
 gradients/Loss/Mean_grad/truedivRealDivgradients/Loss/Mean_grad/Tilegradients/Loss/Mean_grad/Cast*
T0*#
_output_shapes
:���������
�
#gradients/Loss/Reshape_2_grad/ShapeShape"Loss/SoftmaxCrossEntropyWithLogits*
T0*
out_type0*
_output_shapes
:
�
%gradients/Loss/Reshape_2_grad/ReshapeReshape gradients/Loss/Mean_grad/truediv#gradients/Loss/Reshape_2_grad/Shape*
T0*
Tshape0*#
_output_shapes
:���������
�
gradients/zeros_like	ZerosLike$Loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
�
@gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dimConst*
valueB :
���������*
dtype0*
_output_shapes
: 
�
<gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims
ExpandDims%gradients/Loss/Reshape_2_grad/Reshape@gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims/dim*
T0*

Tdim0*'
_output_shapes
:���������
�
5gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/mulMul<gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/ExpandDims$Loss/SoftmaxCrossEntropyWithLogits:1*
T0*0
_output_shapes
:������������������
h
!gradients/Loss/Reshape_grad/ShapeShapeSoftmax*
T0*
out_type0*
_output_shapes
:
�
#gradients/Loss/Reshape_grad/ReshapeReshape5gradients/Loss/SoftmaxCrossEntropyWithLogits_grad/mul!gradients/Loss/Reshape_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/Softmax_grad/mulMul#gradients/Loss/Reshape_grad/ReshapeSoftmax*
T0*'
_output_shapes
:���������
v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
u
$gradients/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/Softmax_grad/subSub#gradients/Loss/Reshape_grad/Reshapegradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:���������
z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:���������
f
gradients/FC2/add_grad/ShapeShape
FC2/MatMul*
T0*
out_type0*
_output_shapes
:
h
gradients/FC2/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
,gradients/FC2/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/FC2/add_grad/Shapegradients/FC2/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/FC2/add_grad/SumSumgradients/Softmax_grad/mul_1,gradients/FC2/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC2/add_grad/ReshapeReshapegradients/FC2/add_grad/Sumgradients/FC2/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/FC2/add_grad/Sum_1Sumgradients/Softmax_grad/mul_1.gradients/FC2/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
 gradients/FC2/add_grad/Reshape_1Reshapegradients/FC2/add_grad/Sum_1gradients/FC2/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients/FC2/add_grad/tuple/group_depsNoOp^gradients/FC2/add_grad/Reshape!^gradients/FC2/add_grad/Reshape_1
�
/gradients/FC2/add_grad/tuple/control_dependencyIdentitygradients/FC2/add_grad/Reshape(^gradients/FC2/add_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/FC2/add_grad/Reshape*'
_output_shapes
:���������
�
1gradients/FC2/add_grad/tuple/control_dependency_1Identity gradients/FC2/add_grad/Reshape_1(^gradients/FC2/add_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC2/add_grad/Reshape_1*
_output_shapes
:
�
 gradients/FC2/MatMul_grad/MatMulMatMul/gradients/FC2/add_grad/tuple/control_dependencyFC2/Variable/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
"gradients/FC2/MatMul_grad/MatMul_1MatMulRelu/gradients/FC2/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
z
*gradients/FC2/MatMul_grad/tuple/group_depsNoOp!^gradients/FC2/MatMul_grad/MatMul#^gradients/FC2/MatMul_grad/MatMul_1
�
2gradients/FC2/MatMul_grad/tuple/control_dependencyIdentity gradients/FC2/MatMul_grad/MatMul+^gradients/FC2/MatMul_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC2/MatMul_grad/MatMul*'
_output_shapes
:���������
�
4gradients/FC2/MatMul_grad/tuple/control_dependency_1Identity"gradients/FC2/MatMul_grad/MatMul_1+^gradients/FC2/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/FC2/MatMul_grad/MatMul_1*
_output_shapes

:
�
gradients/Relu_grad/ReluGradReluGrad2gradients/FC2/MatMul_grad/tuple/control_dependencyRelu*
T0*'
_output_shapes
:���������
f
gradients/FC1/add_grad/ShapeShape
FC1/MatMul*
T0*
out_type0*
_output_shapes
:
h
gradients/FC1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
,gradients/FC1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/FC1/add_grad/Shapegradients/FC1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/FC1/add_grad/SumSumgradients/Relu_grad/ReluGrad,gradients/FC1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC1/add_grad/ReshapeReshapegradients/FC1/add_grad/Sumgradients/FC1/add_grad/Shape*
T0*
Tshape0*'
_output_shapes
:���������
�
gradients/FC1/add_grad/Sum_1Sumgradients/Relu_grad/ReluGrad.gradients/FC1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
 gradients/FC1/add_grad/Reshape_1Reshapegradients/FC1/add_grad/Sum_1gradients/FC1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
s
'gradients/FC1/add_grad/tuple/group_depsNoOp^gradients/FC1/add_grad/Reshape!^gradients/FC1/add_grad/Reshape_1
�
/gradients/FC1/add_grad/tuple/control_dependencyIdentitygradients/FC1/add_grad/Reshape(^gradients/FC1/add_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/FC1/add_grad/Reshape*'
_output_shapes
:���������
�
1gradients/FC1/add_grad/tuple/control_dependency_1Identity gradients/FC1/add_grad/Reshape_1(^gradients/FC1/add_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC1/add_grad/Reshape_1*
_output_shapes
:
�
 gradients/FC1/MatMul_grad/MatMulMatMul/gradients/FC1/add_grad/tuple/control_dependencyFC1/Variable/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������N
�
"gradients/FC1/MatMul_grad/MatMul_1MatMulPlaceholder/gradients/FC1/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:N
z
*gradients/FC1/MatMul_grad/tuple/group_depsNoOp!^gradients/FC1/MatMul_grad/MatMul#^gradients/FC1/MatMul_grad/MatMul_1
�
2gradients/FC1/MatMul_grad/tuple/control_dependencyIdentity gradients/FC1/MatMul_grad/MatMul+^gradients/FC1/MatMul_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC1/MatMul_grad/MatMul*'
_output_shapes
:���������N
�
4gradients/FC1/MatMul_grad/tuple/control_dependency_1Identity"gradients/FC1/MatMul_grad/MatMul_1+^gradients/FC1/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/FC1/MatMul_grad/MatMul_1*
_output_shapes

:N

beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@FC1/Variable*
_output_shapes
: 
�
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes
: 
k
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@FC1/Variable*
_output_shapes
: 

beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*
_class
loc:@FC1/Variable*
_output_shapes
: 
�
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes
: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes
: 
k
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@FC1/Variable*
_output_shapes
: 
�
#FC1/Variable/Adam/Initializer/zerosConst*
valueBN*    *
dtype0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam/AssignAssignFC1/Variable/Adam#FC1/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N

FC1/Variable/Adam/readIdentityFC1/Variable/Adam*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
%FC1/Variable/Adam_1/Initializer/zerosConst*
valueBN*    *
dtype0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1/AssignAssignFC1/Variable/Adam_1%FC1/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1/readIdentityFC1/Variable/Adam_1*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
%FC1/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam/AssignAssignFC1/Variable_1/Adam%FC1/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam/readIdentityFC1/Variable_1/Adam*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
'FC1/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1/AssignAssignFC1/Variable_1/Adam_1'FC1/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1/readIdentityFC1/Variable_1/Adam_1*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
#FC2/Variable/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam/AssignAssignFC2/Variable/Adam#FC2/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:

FC2/Variable/Adam/readIdentityFC2/Variable/Adam*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
%FC2/Variable/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1/AssignAssignFC2/Variable/Adam_1%FC2/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1/readIdentityFC2/Variable/Adam_1*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
%FC2/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam/AssignAssignFC2/Variable_1/Adam%FC2/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam/readIdentityFC2/Variable_1/Adam*
T0*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
'FC2/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam_1/AssignAssignFC2/Variable_1/Adam_1'FC2/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
FC2/Variable_1/Adam_1/readIdentityFC2/Variable_1/Adam_1*
T0*!
_class
loc:@FC2/Variable_1*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *���=*
dtype0*
_output_shapes
: 
O

Adam/beta1Const*
valueB
 *fff?*
dtype0*
_output_shapes
: 
O

Adam/beta2Const*
valueB
 *w�?*
dtype0*
_output_shapes
: 
Q
Adam/epsilonConst*
valueB
 *w�+2*
dtype0*
_output_shapes
: 
�
"Adam/update_FC1/Variable/ApplyAdam	ApplyAdamFC1/VariableFC1/Variable/AdamFC1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/FC1/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
$Adam/update_FC1/Variable_1/ApplyAdam	ApplyAdamFC1/Variable_1FC1/Variable_1/AdamFC1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/FC1/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
"Adam/update_FC2/Variable/ApplyAdam	ApplyAdamFC2/VariableFC2/Variable/AdamFC2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/FC2/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC2/Variable*
_output_shapes

:
�
$Adam/update_FC2/Variable_1/ApplyAdam	ApplyAdamFC2/Variable_1FC2/Variable_1/AdamFC2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/FC2/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@FC2/Variable_1*
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1#^Adam/update_FC1/Variable/ApplyAdam%^Adam/update_FC1/Variable_1/ApplyAdam#^Adam/update_FC2/Variable/ApplyAdam%^Adam/update_FC2/Variable_1/ApplyAdam*
T0*
_class
loc:@FC1/Variable*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC1/Variable*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2#^Adam/update_FC1/Variable/ApplyAdam%^Adam/update_FC1/Variable_1/ApplyAdam#^Adam/update_FC2/Variable/ApplyAdam%^Adam/update_FC2/Variable_1/ApplyAdam*
T0*
_class
loc:@FC1/Variable*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC1/Variable*
_output_shapes
: 
�
AdamNoOp#^Adam/update_FC1/Variable/ApplyAdam%^Adam/update_FC1/Variable_1/ApplyAdam#^Adam/update_FC2/Variable/ApplyAdam%^Adam/update_FC2/Variable_1/ApplyAdam^Adam/Assign^Adam/Assign_1
[
Accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxSoftmaxAccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
]
Accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxPlaceholder_1Accuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*#
_output_shapes
:���������
i
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*#
_output_shapes
:���������
b
Accuracy/CastCastAccuracy/Equal*

SrcT0
*

DstT0*#
_output_shapes
:���������
X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
Accuracy/MeanMeanAccuracy/CastAccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
h
Accuracy/accuracy/tagsConst*"
valueB BAccuracy/accuracy*
dtype0*
_output_shapes
: 
j
Accuracy/accuracyScalarSummaryAccuracy/accuracy/tagsAccuracy/Mean*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummaryFC1/layer1/weightsFC1/layer1/biasesrelu_activationFC2/layer2/weightsFC2/layer2/biasessoftmax_activationLoss/total_lossAccuracy/accuracy*
N*
_output_shapes
: 
�
initNoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign
�
init_1NoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign
�
init_2NoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign"=z`��      ��ͤ	����A*�=
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �I�!@     p�@!  �לZ�@)Bޘ}���@2�        �-���q=I�I�)�(?�7Kaa+?��82?�u�w74?E��{��^?�l�P�`?uWy��r?hyO�s?���T}?>	� �?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             H�@              �?              �?              �?              �?               @               @      @      @       @      �?              �?      �?              �?      �?      @      @              @      @      @      @      �?      @      @      @      @      @      @      @      (@      *@      *@      *@      0@      *@      3@      6@      ,@      =@      :@      8@      5@      7@      <@      <@      G@      C@      H@      H@     �D@      H@      I@      M@     �P@     �R@      S@     �Q@     �R@      J@     �Q@      F@     �J@     �C@      ?@      9@      :@      1@      "@      @      �?      @       @       @        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `�{>   ࿠�?     p�@!,�  Y@)���A@2�	E'�/��x>f^��`{>K���7�>u��6
�>���?�ګ>����>��n����>�u`P+d�>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>��~]�[�>��>M|K�>�_�T�l�>E��a�W�>�ѩ�-�>���%�>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?              �?              @      �?      �?      �?               @              �?      �?              @      �?              �?      �?               @      �?       @      �?      @      �?       @      @              @      @      �?       @      @      @      @      @      @      @      @      �?      @      @      @      @      �?      @      @       @      @      @      @      @      @       @      &@      @      @      $@      @      (@      @      @       @      $@      (@      "@      "@      .@      "@      $@      &@      2@      2@      .@      *@      7@      4@      ,@      3@      6@      4@      4@      3@      1@      (@      ,@      1@      7@      3@      2@      :@      1@      7@      1@      9@      7@      ,@      7@      ;@      >@      7@      =@      A@      ;@      4@      9@      9@      7@      @@      7@      6@      6@      8@      1@      6@      3@      .@      .@      8@      "@      ,@       @      "@      .@      0@      0@      *@      (@      "@       @      "@      @       @      @       @       @      @      @      @      @        

Loss/total_lossZ+.@

Accuracy/accuracy��L=/c[A      ����	ǀ��A�*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �.!@     p�@! ��á@)�?)]�ӵ@2�        �-���q=ܗ�SsW?��bB�SY?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             d�@              �?              �?              �?      �?              �?       @      @      @       @      �?      �?      �?      �?               @               @      @      �?      �?      @      �?      �?      @              @      @      @      @      @      "@      "@      *@      (@      (@      2@      4@      5@      7@      3@      :@      @@      :@      :@      :@      8@      <@     �A@     �B@      F@     �I@      E@     �L@     �J@      L@     �M@      T@     @Q@     @Q@     �Q@     �O@      N@      L@      I@      F@      9@      7@      7@      "@      @      @      @       @              �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `��>   ࿠�?     p�@!_��  Y@)�9+ %3A@2�K���7�>u��6
�>���?�ګ>����>豪}0ڰ>��n����>�u`P+d�>5�"�g��>G&�$�>['�?��>K+�E���>��~]�[�>��>M|K�>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?      �?              @              �?              �?              �?      �?              �?       @      �?              �?       @      @      �?              @       @       @               @      @      @      @       @      @      @       @      @      @      @      @       @       @       @       @      @      @      @      @      @      @      (@      "@      @      @       @       @      *@      &@       @      &@      ,@      "@      1@       @      ,@      &@      @      0@      0@      ,@      0@      2@      6@      0@      1@      6@     �@@      7@      4@      8@      .@      5@      1@      7@      5@      4@      ;@      4@      1@      .@      3@      =@      =@      4@      6@      ;@      ,@      >@      8@      9@      6@      8@      <@      =@      9@      8@      .@      6@      5@      3@      1@      =@      (@      "@      6@      &@      4@      (@      $@      "@      1@      (@      ,@      .@      @      "@      &@      @       @      @      $@      @      @      @      @      �?        

Loss/total_loss�.@

Accuracy/accuracy)\�=���q�      �K�	BAK��A�*�=
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �I�!@     p�@! ��$��@)�����@2�        �-���q=�!�A?�T���C?ܗ�SsW?��bB�SY?;8�clp?uWy��r?hyO�s?���T}?>	� �?#�+(�ŉ?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             \�@              �?              �?              �?      �?              �?               @      @              @      �?      �?              @               @      @      @              @      @      �?      @      @      @      @      @      @      @      "@       @      &@      ,@       @      0@      3@      &@      5@      ,@      4@      9@      ;@     �@@      :@      =@      >@      =@     �I@      E@     �G@     �E@     �K@      J@      O@     �R@     �O@     �S@     �S@      L@      J@     @Q@      L@      L@      E@      8@      <@      ,@      0@      $@      @       @      @      �?       @        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `��>   ࿠�?     p�@!�j���X@)����{sB@2�	K���7�>u��6
�>�MZ��K�>��|�~�>豪}0ڰ>��n����>�u`P+d�>G&�$�>�*��ڽ>�[�=�k�>��~���>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>��~]�[�>��>M|K�>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?      �?              �?              �?               @              �?      �?               @              �?              �?      �?              @      �?              �?      @      @       @      @      �?      �?      @       @      @       @      @       @      @      @      �?      @      @      @      @      @      @      @      @      @       @      @      @       @      @      @       @      &@      @      @      @      &@       @      $@      "@      &@      (@      ,@      (@      (@       @      $@       @       @      0@      ,@      .@      (@      2@      4@      0@      0@      1@      9@      3@      7@      1@      :@      0@      8@      7@      7@      5@      ;@      3@      2@      &@      ;@      :@      9@      6@      1@      >@      6@      8@      ;@      8@      2@      8@      9@      9@      ;@      :@      2@      6@      8@      2@      4@      ,@      1@      ,@      6@      ,@      (@      .@      @      "@      4@      ,@      $@      (@       @      @      *@       @      @      @      $@      @      @      @      @      @        

Loss/total_loss� -@

Accuracy/accuracy�Q�=�9�A      �I
	�,y��A�*�>
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�   �.!@     p�@! �Q�KX�@)�jD$��@2�        �-���q=��82?�u�w74?�!�A?�T���C?�qU���I?IcD���L?ܗ�SsW?��bB�SY?E��{��^?�l�P�`?;8�clp?uWy��r?hyO�s?*QH�x?o��5sz?���T}?>	� �?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             ̖@              �?              �?              �?              �?              �?              �?      �?              �?               @              �?      @      @              �?       @              @              �?               @      @       @      @      @      @      �?       @      @      @      @      @      @      @      @      $@       @      .@      $@      2@      .@      0@      7@      .@      9@      7@      6@      ?@      9@      >@      ;@     �E@      C@     �B@     �M@     �E@      M@     �J@      Q@     �Q@     @T@     �S@     �R@     @P@     �L@     @Q@     �I@      I@     �E@      ?@      6@      8@      (@      "@      @      �?       @      �?      �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `��>   @�>�?     p�@!���  Y@)M��C��B@2�	K���7�>u��6
�>���?�ګ>����>豪}0ڰ>��n����>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>��~]�[�>��>M|K�>�_�T�l�>�iD*L��>E��a�W�>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?               @      �?              �?              �?              �?      �?              @              �?              �?      �?      �?               @      �?              �?       @       @       @       @      �?       @              �?       @      @      @      @       @      @      @      @      @      @      @      @       @      @      @      @      @      @      @      "@      "@      @      *@       @      @       @       @      $@      &@      @      &@      &@      $@      ,@      .@      $@      $@      "@      @      3@      0@      ,@      ,@      0@      4@      .@      @      3@      3@      1@      6@      8@      5@      3@      ,@      4@      3@      9@      :@      *@      <@      :@      ;@      ;@      9@      8@      8@      C@      5@      ;@      ;@      =@      7@      <@      :@      6@      =@      2@      5@      ?@      9@      *@      0@      .@      &@      ,@      ,@      $@      2@      &@      $@       @      4@      (@      (@      .@      "@      @      @      @      @      (@      "@      @      @      @      @      @        

Loss/total_loss�-@

Accuracy/accuracy)\�=om��!      �Ƀ	U����A�*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �I�!@     p�@! 0��?Ģ@)�F���X�@2�        �-���q=�lDZrS?<DKc��T?E��{��^?�l�P�`?;8�clp?uWy��r?hyO�s?���T}?>	� �?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             �@              �?              �?              �?      �?              �?              �?       @      @      �?               @              �?      @       @       @       @      @      @      @      �?      @      �?      @      @      @       @      @      $@      "@      *@      *@      ,@      4@      0@      .@      5@      2@      8@      <@      6@      =@      :@      >@      5@     �B@      D@      F@     �G@      E@     �E@      J@     �Q@     �O@      Q@     �P@      Q@      R@      O@     @Q@     �K@      J@      D@     �A@      8@      ?@      4@      (@      �?       @              @       @        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `�{>    ���?     p�@!>���X@)�R):72B@2�E'�/��x>f^��`{>�MZ��K�>��|�~�>���?�ګ>����>豪}0ڰ>��n����>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~]�[�>��>M|K�>�_�T�l�>E��a�W�>�ѩ�-�>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              �?              �?              �?              �?               @              �?               @      �?              �?              �?               @      �?               @      @      �?      �?              �?      �?      @      �?      @      @      @      @      @      @      @      @      @      @       @       @      @      "@      @       @      @      @      @      $@      ,@      @       @      "@       @      *@      @      $@      $@      "@      1@      *@      .@      *@      &@      @      "@      1@      *@      1@      .@      ,@      9@      2@      ,@      8@      4@      .@      9@      <@      2@      4@      2@      :@      ;@      :@      5@      2@      @@      .@      <@      6@      8@      <@      2@      ?@      7@      :@      7@      6@      :@      ?@      8@      7@      3@      1@      6@      2@      0@      ,@       @      .@      "@      .@      5@      @      1@      &@      $@      *@      0@      (@      *@      @      &@      @      ,@      $@      "@      *@      @      @      $@      @      @        

Loss/total_loss&h.@

Accuracy/accuracy
�#=��q�1      ���	�6���A�'*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
    f�@     p�@! ���F�@)�@����@2�        �-���q=�!�A?�T���C?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?*QH�x?o��5sz?���T}?>	� �?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @�������:�             �@              �?              �?              �?              �?              �?              @       @      @      �?               @       @      @              @      �?               @      @      @       @      @       @       @      @      (@      @       @       @      @      @      ,@      &@      (@      @      ,@      .@      ,@      2@      4@      5@      6@      ?@      7@      8@     �F@      >@     �E@      M@      >@     �I@      D@      I@     �M@      M@     �Q@     @R@      O@      S@      N@     �H@     �O@      P@      L@      G@      =@     �A@      9@      &@       @       @      �?       @      �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    i��>   ���?     p�@!d���X@)�L���A@2��MZ��K�>��|�~�>
�/eq
�>;�"�q�>['�?��>K+�E���>��~]�[�>��>M|K�>�_�T�l�>�iD*L��>E��a�W�>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?              @      �?       @              �?              �?              @       @              �?      �?      @       @      @      �?       @      @      �?       @      @      @      @      @      @      �?      @      @      @      @      @      @      @      @      @      $@      @      @      @      @      @      @      *@      "@      @      $@      "@      (@      &@      $@      @      (@      (@      (@      &@      "@      $@       @      @      2@      *@      *@      &@      4@      ,@      6@      &@      4@      4@      =@      8@      4@      4@      ,@      .@      4@      :@      ;@      6@      *@      6@      6@      1@      =@      8@      8@      6@      =@      8@      A@      9@      >@      7@      6@      ?@      5@     �@@      0@      ,@      2@      7@      3@      0@      0@      ,@      (@      .@      *@      0@      ,@      *@       @      0@      &@      *@      $@      (@      "@      $@      @      @      *@      $@      @      "@      @      @       @        

Loss/total_loss}C-@

Accuracy/accuracy
ף=���q      �ΐ�	�����A�.*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�
    f�@     p�@! ���a�@))���J�@2�        �-���q=I�I�)�(?�7Kaa+?��82?�u�w74?�!�A?�T���C?E��{��^?�l�P�`?;8�clp?uWy��r?���T}?>	� �?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @�������:�             ��@              �?              �?              �?              �?              �?              �?              �?      �?              �?               @      �?      �?              �?      �?       @      @       @      @      @       @      @       @      �?      @      @      @      @      @      @      &@      ,@      "@      @      1@      3@      2@      .@      "@      4@      9@      1@      9@     �@@      5@      <@     �D@     �E@      F@     �G@     �B@      J@     �J@     �O@     �M@     @S@     @P@     �S@      Q@     �J@     �P@     �H@     �M@     �F@      B@      4@      7@      2@      ,@      @      �?       @      �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `�{>   ���?     p�@!�0�  Y@)�I8�ЇA@2�E'�/��x>f^��`{>豪}0ڰ>��n����>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>
�/eq
�>;�"�q�>['�?��>K+�E���>��~]�[�>��>M|K�>E��a�W�>�ѩ�-�>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?              �?              �?              �?              �?              �?               @               @      @      �?       @       @      @      @      �?      @              @      @      @      �?      @      @              @       @      @      @      @       @      @      @      @      @      @      "@      @       @      @      @      ,@      @      @       @       @      "@      @       @      "@      (@      ,@      $@      "@      @      *@      (@      &@      ,@      0@      *@      (@      4@      7@      4@      *@      3@      8@      6@      5@      7@      6@      5@      0@      <@      4@      4@      ;@      2@      7@      3@      <@      6@      8@      ;@      7@      ;@      1@      8@      7@      <@      9@      2@      <@      <@      :@      4@      (@      :@      <@      1@      5@      1@      0@      .@      4@      @      6@      *@      @      (@      5@      .@      *@      "@      $@      @       @      "@      @       @      @      @      @      @      @       @        

Loss/total_lossa(.@

Accuracy/accuracy)\�=��HA      ����	��*��A�6*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �.!@     p�@! s�C�@)�1�Q��@2�        �-���q=I�I�)�(?�7Kaa+?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?;8�clp?uWy��r?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�"�uԖ?}Y�4j�?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             x�@              �?              �?              �?              �?              @      �?      �?              @              �?       @      @      @      @      @      @       @       @      @      @       @      "@      @      @      @      $@      $@       @      @      3@      4@      ,@      =@      .@      (@      7@      8@      6@      >@      =@      =@      J@      F@     �D@     �A@     �F@     �M@     �K@      L@     �M@     �U@     @Q@      S@      P@      K@      I@      I@      O@     �I@      ?@      8@      ;@      (@      "@      @      @      @              �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `��>   @�>�?     p�@!�s!  Y@)�6\�m�A@2�K���7�>u��6
�>���?�ګ>����>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>��~]�[�>��>M|K�>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?               @       @               @              �?              �?       @               @       @      �?              �?               @      �?              @      �?       @       @      �?      �?      @      @      �?      @      @       @      @      @      �?      @      @      @      @       @      @      @      @       @      @      @      @      $@       @      @       @      @      1@       @      @      @      @      &@       @      @      (@      @      &@      0@      $@      &@      "@      (@      $@      *@      2@      *@      *@      .@      1@      1@      ,@      .@      0@      2@      ?@      8@      1@      1@      2@      ;@      1@      4@      7@      4@      ;@      1@      <@      .@      8@      1@      9@     �A@      5@      ?@      2@      9@      :@      :@      :@      =@      =@      :@      5@      =@      6@      4@      5@      2@      &@      .@      1@      @      1@      "@      @      1@      6@      "@      1@      ,@      &@      "@      *@      @      @      @      @      @       @      @      @      @        

Loss/total_loss��,@

Accuracy/accuracy�G�=��G��      �ݠ�	��[��A�>*�;
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
    kw@     p�@! ��B�M�@)yMEiԝ�@2�        �-���q=�!�A?�T���C?�qU���I?IcD���L?E��{��^?�l�P�`?;8�clp?uWy��r?hyO�s?���T}?>	� �?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@�������:�             ��@              �?              �?              �?              �?      �?              �?               @       @      @      �?              @      �?      @               @      �?       @      @      @      �?      @      @      �?       @      @      @      "@      @       @       @      @      @      "@      $@      &@      .@      8@      &@      5@      2@      2@      8@      ;@      5@      <@      <@      ;@     �D@     �E@     �G@      D@      E@     �J@     �P@      J@     �P@      Q@      T@     @Q@     �P@      L@     �I@     �K@     �M@      ;@      @@      ?@      9@      $@       @      �?              �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `�{>    4��?     p�@!��  Y@)���3�=@2�E'�/��x>f^��`{>�MZ��K�>��|�~�>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��>M|K�>�_�T�l�>�iD*L��>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>O�ʗ��>>�?�s��>��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?              �?              �?      �?              �?      �?       @               @              �?      @              �?              �?      @      @      �?       @      �?       @      @      �?      @      @       @      @      @       @      @      @       @      @      @      "@      @      @      @      @      @      @       @      $@      "@      $@      "@      (@      "@      &@      "@      @      (@       @      3@      ,@      "@      &@      *@      4@      5@      (@      0@      2@      1@      4@      2@      2@      3@      0@      9@      4@      8@      :@      .@      9@      5@      @@      6@      :@      7@      9@      @@      ?@      8@      ;@     �@@      A@      7@     �B@      9@      6@      >@      5@      8@      9@      6@      4@      9@      1@      4@      9@      .@      .@      ,@       @      (@      6@      ,@      "@      .@      *@       @      &@       @      @      @      @      @      @      @      �?      �?        

Loss/total_loss�S-@

Accuracy/accuracy
ף=r�f�      ��:	�����A�F*�=
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�    f�@     p�@! �㒡@)"�Q��@2�        �-���q=I�I�)�(?�7Kaa+?��82?�u�w74?�!�A?�T���C?E��{��^?�l�P�`?;8�clp?uWy��r?hyO�s?���T}?>	� �?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @�������:�             ��@              �?              �?              �?              �?              �?      �?               @              �?       @      �?      �?       @      �?       @       @       @              �?      �?      @      @      @      @      @      �?      @              @      @      @      @      @      @      $@      ,@      "@      @      1@      2@      .@      2@      8@      8@      ;@      9@      4@      :@      @@      6@      G@      H@     �C@     �J@      C@     �J@      P@     �N@     �J@      U@     �Q@      Q@     �J@      D@      O@     �G@      L@     �H@      =@      <@      ;@      $@      "@      @       @              �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab���"�uԖ�^�S�����Rc�ݒ����&��#�+(�ŉ�eiS�m��-Ա�L���N�W�m�ߤ�(g%k�P}���h�Tw��Nof�>	� �?����=��?���J�\�?-Ա�L�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?�������:�              @      @      $@      @      "@      0@      *@      &@      (@      $@      "@      @      $@      @      &@      $@      @      $@       @      "@      @      @      @      @              @       @       @      @      @      @               @      @              @       @      �?              �?      �?              �?              �?              �?       @       @              �?      �?              @      �?       @      �?      @      �?      �?      @      �?       @      @      @       @      @      �?              @      �?      @      "@      @      &@      @      @      "@      $@       @      $@      $@      $@      &@      $@      "@      $@      $@      @      @      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `8c�>   @�>�?     p�@!\��  Y@)YqdꏙA@2����?�ګ>����>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>
�/eq
�>;�"�q�>K+�E���>jqs&\��>��~]�[�>��>M|K�>�_�T�l�>�iD*L��>E��a�W�>�ѩ�-�>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?      �?              �?              �?              �?               @               @              �?              �?      �?      �?      �?       @      �?               @      �?       @      @              @      @      @      @      @      @      @       @      @      @      @      "@      @      @      @      @      @      @      "@      @      @      @      @      *@      @      @       @      @      @       @      "@      "@      &@      0@      (@      *@      $@      *@      (@      $@      3@      .@      *@      *@      5@      5@      .@      &@      7@      5@      :@      7@      .@      2@      .@      4@      7@      7@      9@      ;@      1@      ;@      0@      :@      4@      8@      8@      5@     �@@      2@     �@@      3@      ;@      2@      3@      5@      2@      8@      :@      .@      7@      =@      4@      6@      3@      *@      ,@      0@      *@      *@      *@      $@      ,@      7@      .@      *@      $@      &@      @      &@      @       @       @      @      @       @      @      @      @        

Loss/total_loss�-@

Accuracy/accuracy���=I_��Q      ����	�����A�N*�<
�
FC1/layer1/weights*�	   ��=�    �3�?     H�@!  kI�~1@)Ol�ח�\@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW��lDZrS�nK���LQ�k�1^�sO�IcD���L��qU���I�
����G��T���C��!�A����#@�d�\D�X=�a�$��{E?
����G?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              2@      =@      C@      B@      I@     �N@      Q@      L@      J@     �J@     �I@     �G@      I@      =@     �F@     �A@      A@      ?@      A@      3@      A@      :@      9@      3@      ,@      3@      (@      2@      &@      0@      $@      @      @       @      @      @      @      $@      @      @      @       @      @      �?      @              @              �?       @               @      �?       @              �?              �?               @      �?              �?      �?              �?              �?              �?              �?      �?      �?              �?              �?              �?               @       @       @      @      @      �?      �?      @      @              @      @      @      @       @      @      @      @      $@      @      &@      $@      @       @      *@      (@      2@      *@      4@      7@      >@      "@      =@      ;@      ?@      C@     �E@     �D@      G@      H@     �F@      G@      L@     �M@     �P@     �M@     �L@     �P@     �L@     �F@      >@     �A@      ;@        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   �.!@     p�@!  �(��@)"�E~��@2�        �-���q=I�I�)�(?�7Kaa+?�lDZrS?<DKc��T?uWy��r?hyO�s?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@v@�5m @��@�"@�������:�             ��@              �?              �?              �?              �?      �?      �?      @              �?       @      �?       @               @      @       @      �?       @      �?      @      @              @       @      @      @       @      (@       @      @      &@      *@      (@      @      1@      0@      4@      1@      7@      5@      7@      ;@      7@      @@      6@      :@     �C@     �G@      F@      I@     �B@      K@     �L@      R@      L@     @Q@     �P@     �R@      P@      L@      O@     �K@      H@      F@      9@      5@      6@      ,@      ,@       @       @      �?              �?        
�
FC2/layer2/weights*�	    �W�   �A!�?      |@!  ��&"�)<+��~F@2�2g�G�A�uo�p�+S