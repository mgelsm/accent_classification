       �K"	  �ā�Abrain.Event:2�c\y      �Q��	�t�ā�A"��
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
`
FC1/truncated_normal/stddevConst*
valueB
 *���=*
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
�
FC1/truncated_normal/mulMul$FC1/truncated_normal/TruncatedNormalFC1/truncated_normal/stddev*
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
`
FC2/truncated_normal/stddevConst*
valueB
 *���=*
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
�
FC2/truncated_normal/mulMul$FC2/truncated_normal/TruncatedNormalFC2/truncated_normal/stddev*
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
initNoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign"�^�      W��	KU�ā�A*�/
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
    ��	@     p�@! @]Y��@)��{H�c�@2�        �-���q=+A�F�&?I�I�)�(?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?�l�P�`?���%��b?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�������:�             $�@              �?              �?      �?      �?              �?              �?              �?      �?      �?      @               @       @      �?               @      @               @       @      @      @      @       @      @       @      @      @      "@      @      @      (@       @       @      @      $@      *@      .@      0@      .@      *@      *@      0@      =@      :@      @@      =@      8@     �B@      C@      @@     �J@      K@     �K@     �J@     �N@     @P@      O@     �Q@      F@     �M@     @Q@      N@     �G@     �K@      G@      F@      8@      @@      .@      &@      @      @      �?       @      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   ����?   `F��?     p�@!     Y@)|��ȸ@@2��"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?�������:�               @       @      �?      @      ,@      2@     �A@     �M@     @`@      g@     @o@     `o@     �k@     �b@     �U@      G@      3@      ,@      "@       @        

Loss/total_lossMz-@

Accuracy/accuracy��u=7��      /�	�e-ā�A�*�/
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
   `
�@     p�@! �Y쥍@)�)+e�ǌ@2�        �-���q=��bȬ�0?��82?�u�w74?<DKc��T?ܗ�SsW?��bB�SY?P}���h?ߤ�(g%k?�N�W�m?;8�clp?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�������:�             ��@              �?      �?              �?      �?              �?              �?              @               @      �?       @              �?       @       @       @              @      @       @      @       @       @      @       @      @      @      @      @      @      "@      @      "@      @      *@      0@      4@      3@      6@      6@      ,@      8@      <@      3@      @@     �E@      <@      @@      C@      E@     �L@     �J@     �M@     �O@      M@      K@      Q@      P@     �P@     �J@     @T@     �O@     �M@     �K@     �J@      I@     �A@      7@      $@      $@      @       @      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �n�?   �)�?     p�@!  ~���X@)>O��B@2�}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�������:�              �?      �?      @       @      4@      B@      J@     @`@      j@     @n@     @o@     �k@     �b@     @T@      I@      9@      @       @       @      �?      �?        

Loss/total_losssq-@

Accuracy/accuracy��u=ah�5!      ��	0�Yā�A�*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�   ���	@     p�@! �M{]��@)��"����@2�        �-���q=+A�F�&?I�I�)�(?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?P}���h?ߤ�(g%k?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�������:�             �@              �?              �?      �?      �?              �?       @              �?               @              @              �?              @      �?       @      �?      @      @      @      �?      �?               @      @      @      @      �?      @      @      @      @      @      (@       @      @       @      &@      $@      .@      .@      ,@      $@      3@      5@      3@      8@      9@      A@      8@      ?@      F@      C@     �K@      L@     �C@      K@      J@     @P@      N@      S@      T@      M@     �R@     �L@      L@     �L@      H@      E@      3@      :@      &@      $@      @      @      �?      �?      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   ����?   `F��?     p�@!  d  Y@)�Z�h�2@2��"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?�������:�              �?      �?       @      @      .@      *@      :@     �Q@     @]@      j@     �n@     `n@     �j@     `e@      V@     �G@      .@      &@      "@       @        

Loss/total_lossq�-@

Accuracy/accuracy��L=;	�      \&	��ā�A�*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�
   `
�@     p�@! �AO4�@)���_ڂ�@2�        �-���q=>h�'�?x?�x�?+A�F�&?I�I�)�(?��82?�u�w74?IcD���L?k�1^�sO?<DKc��T?ܗ�SsW?��bB�SY?�l�P�`?���%��b?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�������:�             �@              �?              �?              �?              �?              �?      �?               @               @              @              �?       @      @      �?       @      @       @      @               @      @      @       @      �?      @       @      @      @      @      @      @       @      @       @      @      "@      $@      1@      (@      .@      3@      &@      6@      7@      ;@      ?@      C@      5@     �@@      D@     �B@     �K@     �I@     �H@      K@     �P@     �N@     @Q@     �O@     @Q@     �M@      R@     �H@     �N@      I@      A@     �H@      :@      7@      .@      @      @      @       @        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �Ŝ?   �)�?     p�@!  2  Y@)z�4�E@2���<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�������:�              �?      @      *@      (@      @@     �N@     �`@     �g@     Pp@     �m@     �m@     �c@     �Q@      H@      0@      &@      @      @       @      �?        

Loss/total_lossl�-@

Accuracy/accuracy
ף=�oM�A      �W�	U�ā�A�*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�   ���	@     p�@! �v�̋@)������@2�        �-���q=>h�'�?x?�x�?+A�F�&?I�I�)�(?��bȬ�0?��82?�u�w74?IcD���L?k�1^�sO?ܗ�SsW?��bB�SY?�m9�H�[?�l�P�`?���%��b?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�������:�             8�@              �?              �?              �?      �?              �?              �?      �?              �?               @       @              �?              �?       @               @      @       @      �?       @       @       @      @      @      �?      �?      @      @      @      @       @      @      *@      @      @      "@      (@      $@      (@      *@      1@      0@      .@      6@      3@      >@      ;@      A@     �B@      @@      =@     �C@      I@     �H@      J@     �L@     �S@     �L@      O@     �N@     �Q@     �L@      P@      N@     �J@      E@     �A@      K@      :@     �@@      *@      @      @      �?      �?              �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �n�?   �`7�?     p�@!  ����X@)�Y�/�3@2�}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�������:�               @      �?      @      $@      4@      >@     �L@      `@     �h@     `o@     �o@     �k@      c@     �S@     �H@      ;@       @      @      @      �?        

Loss/total_loss��-@

Accuracy/accuracy
�#=�Q5_      \&	��ā�A�'*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�   ��@     p�@!  )_�@)���+ދ@2�        �-���q=IcD���L?k�1^�sO?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�������:�             �@              �?              �?       @       @              �?              �?              �?              �?      �?              @               @      �?       @      �?      �?       @       @      @       @      @      �?      @      �?       @       @      @      @      @      @      @      "@      @      "@      @       @      @      (@      ,@      @      0@      .@      1@      .@      1@      5@      ;@      7@      ?@      9@      ?@     �F@      @@     �K@     �J@      J@     �I@      M@     @P@      N@     @Q@     �P@      P@      R@      I@     �I@      J@      I@     �J@      ;@      4@      2@      $@      @       @      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �n�?   @���?     p�@!    Y@)��I�1@2�}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?�������:�              �?      �?      @      (@      1@      =@     �N@      _@      k@     `n@     �m@      j@     @f@     @T@     �G@      2@      "@       @      @        

Loss/total_lossn-@

Accuracy/accuracy�Q�=��@�      \&	:V
ā�A�.*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�
   ���	@     p�@! �ܨM�@)���D<�@2�        �-���q=>h�'�?x?�x�?��bȬ�0?��82?ܗ�SsW?��bB�SY?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@�Š)U	@u�rʭ�@�������:�             <�@              �?              �?               @               @              �?              �?      �?      �?       @              �?      �?      �?              �?       @      �?       @       @      @      �?      �?      @      @       @       @      �?      @      @      @      @      "@      *@      @      @       @      *@      ,@      .@      3@      &@      8@      *@      2@      6@      :@      @@     �A@      @@      ;@      C@     �G@     �I@     �I@     �K@      O@      J@     �Q@      R@     �P@      P@      K@     �Q@     @P@     �P@      J@      D@      E@      >@     �@@      ,@      @      @       @              �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �n�?   �`7�?     p�@!  ����X@)1���1@2�}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�������:�              �?      �?      @      &@      ,@      9@     @P@     �`@     `h@     `o@     �m@     �l@     �e@     @S@     �C@      3@      "@      "@       @      �?        

Loss/total_loss�y-@

Accuracy/accuracy
ף=�B�l�      /�+T	��6ā�A�6*�/
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
    �@     p�@! x\�f_�@)���DN�@2�        �-���q=��bȬ�0?��82?IcD���L?k�1^�sO?ܗ�SsW?��bB�SY?E��{��^?�l�P�`?���%��b?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@�������:�             Ԗ@              �?              �?              �?               @      �?              �?              @               @      �?      @      �?      �?      @      �?      @              @      @       @      @      �?      @      @      @      @      @      @      @      @      @      @      @      &@      "@      .@      (@      3@      5@      5@      5@      8@      :@      1@      =@     �G@      ?@      8@      B@     �D@      F@     �J@     �H@     �P@     @P@     �R@     @P@     �R@      P@     @P@      O@     @P@     �J@      L@      I@     �J@      >@      5@      ,@       @      @      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �Ŝ?   �`7�?     p�@!  �  Y@)��0�8@2���<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�������:�              �?      @      &@      3@      A@     @R@     @_@     �g@      p@      m@     @l@     @a@     @X@     �I@      5@      ,@      @       @      �?        

Loss/total_loss��-@

Accuracy/accuracy
ף<P�71      'n�	`cā�A�>*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�   ���	@     p�@! �%�@)\>[�-Ɗ@2�        �-���q=>h�'�?x?�x�?+A�F�&?I�I�)�(?��bȬ�0?��82?�u�w74?ܗ�SsW?��bB�SY?�m9�H�[?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?uWy��r?hyO�s?&b՞
�u?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�������:�             p�@              �?              �?              �?      �?              �?      �?              �?              �?              �?      �?              �?      �?       @      �?       @      @      �?      @      @      @      @      @       @      �?       @      @      @       @      @      @      ,@      @       @       @      ,@      "@      0@      8@      .@      1@      &@      8@      7@      <@      @@      B@      <@     �@@      C@      A@      I@     �F@      K@     �P@     �Q@      M@     @R@     �N@     @R@     @P@     �Q@     �J@     �L@      I@      G@      I@      3@      :@      &@      @      @       @      �?              �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    �n�?   �)�?     p�@!  �  Y@)���ڋ@2�}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�������:�              �?              @      *@      4@      9@     �J@      `@     �g@     �o@     `o@     �o@     �a@     �W@      E@      2@      @      @              �?      �?        

Loss/total_loss6�-@

Accuracy/accuracy
ף<��_�      �1�^	/ێā�A�F*�0
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�
relu_activation*�    ��	@     p�@! �sX�@)�Ϊ.t�@2�        �-���q=>h�'�?x?�x�?+A�F�&?I�I�)�(?��bȬ�0?��82?IcD���L?k�1^�sO?��bB�SY?�m9�H�[?�l�P�`?���%��b?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�������:�             ԗ@              �?               @              �?              �?              �?              �?              �?              �?      �?              @              �?               @      �?      �?              �?      �?       @      @       @      �?      @       @       @      @      @      @      @      @      @      "@      &@      @      @      $@      &@      3@      ,@      .@      4@      1@      3@      5@      4@      ;@      7@     �@@      =@      ?@     �D@     �A@     �J@     �L@      I@     �L@      M@     �P@      S@     �O@     �O@     �O@      O@      K@      N@     �I@      F@     �C@      6@      7@      $@      "@      @      @       @       @      �?        
�
FC2/layer2/weights*�	   �D8ȿ   �;B�?      |@!  �):=�?)����-	@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=������T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�Tw��Nof�5Ucv0ed��l�P�`�E��{��^��lDZrS�nK���LQ�k�1^�sO�IcD���L��u�w74���82���VlQ.��7Kaa+�a�$��{E?
����G?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�������:�              @      @      @      $@      @       @      .@      *@      *@      ,@      ,@      $@       @      @      &@       @      @      @      @      @       @       @      @      @      @      @      @       @      @       @       @      @      @               @      �?       @      �?      �?               @      �?              �?              �?              �?              �?              �?              �?               @              �?               @              �?      �?      �?       @              �?      �?               @      @      �?      �?       @      �?      �?      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      @      @      "@      .@      $@      0@       @      &@      (@      @      @      &@      @      @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   ����?   �)�?     p�@!  �   Y@)�h�u�;@2��"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�������:�               @       @              @      *@      0@      A@      I@     �_@     �j@      n@     �o@     �k@     @c@      U@      H@      1@      (@      @       @      �?      �?        

Loss/total_lossH�-@

Accuracy/accuracy��L=X��      ��(�	�ٺā�A�N*�/
�
FC1/layer1/weights*�	   ��^ɿ   @u��?     H�@! �'���)h��7�?2@2��@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�ߤ�(g%k�P}���h�Tw��Nof�5Ucv0ed����%��b��l�P�`�E��{��^��m9�H�[���bB�SY�ܗ�SsW�<DKc��T��lDZrS�nK���LQ�IcD���L��qU���I�
����G�d�\D�X=���%>��:�uܬ�@8���%�V6��u�w74�pz�w�7�>I��P=�>�S�F !?�[^:��"?U�4@@�$?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�������:�              =@      B@     �I@     �I@      N@     �N@      I@     @P@      G@     �I@     �K@      C@     �J@      D@      B@     �E@      D@      >@      A@     �B@      8@      5@      4@      4@      5@      ,@      0@      @      *@      @      @      @      @      @      @       @      @       @       @      @       @      @      @      �?      @      @       @              �?              �?              �?      @      �?              �?      �?               @      �?              �?              �?              �?      �?              �?      �?               @      @              �?               @      �?              �?      �?      �?      �?       @      @       @      �?      �?      @       @      �?      �?      @      @       @      @      @       @      @      "@      "@      &@      7@      &@      (@      ,@      (@      5@      4@      :@      .@      :@     �@@      ;@      8@      =@      =@     �A@      B@      K@      I@     �E@     �P@     �E@     �L@     @P@      P@     �H@     �D@     �E@     �D@     �C@      ;@      �?        
R
FC1/layer1/biases*=      >@2        �-���q=�������:              >@        
�

relu_activation*�
    �D@     p�@! p�y�@)���͊@2�        �-���q=ܗ�SsW?��bB�SY?�m9�H�[?�l�P�`?���%��b?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@�������:�             T�@               @      �?              �?              �?               @      �?              �?              �?      �?      �?      �?      �?       @      �?              @      @      @       @      @              @      @      "@      @       @      @      @      2@      @       @      @      (@      "@      &@      4@      3@      *@      *@      ;@      4@      3@     �@@      @@      ;@      ?@     �A@      @@      G@     @Q@     �O@     �N@      M@     �P@     �Q@     @P@     �Q@      L@     @S@      O@     �K@      P@      B@     �C@      <@      >@      *@      @       @      �?    