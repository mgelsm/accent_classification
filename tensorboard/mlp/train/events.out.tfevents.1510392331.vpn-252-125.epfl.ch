       �K"	  �����Abrain.Event:2SG��      EW"C	[�グ��A"��
n
PlaceholderPlaceholder*
dtype0*
shape:���������N*'
_output_shapes
:���������N
h
Placeholder_1Placeholder*
dtype0*
shape:���������*#
_output_shapes
:���������
U
one_hot/on_valueConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
V
one_hot/off_valueConst*
valueB
 *    *
dtype0*
_output_shapes
: 
O
one_hot/depthConst*
value	B :*
dtype0*
_output_shapes
: 
�
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
axis���������*
T0*
TI0*'
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
valueB"N      *
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

:N
x
FC1/truncated_normal/mulMul$FC1/truncated_normal/TruncatedNormalFC1/Sqrt*
T0*
_output_shapes

:N
y
FC1/truncated_normalAddFC1/truncated_normal/mulFC1/truncated_normal/mean*
T0*
_output_shapes

:N
�
FC1/Variable
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_output_shapes

:N
�
FC1/Variable/AssignAssignFC1/VariableFC1/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N
u
FC1/Variable/readIdentityFC1/Variable*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
V
	FC1/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
z
FC1/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
FC1/Variable_1/AssignAssignFC1/Variable_1	FC1/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
w
FC1/Variable_1/readIdentityFC1/Variable_1*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�

FC1/MatMulMatMulPlaceholderFC1/Variable/read*
transpose_a( *
transpose_b( *
T0*'
_output_shapes
:���������
a
FC1/addAdd
FC1/MatMulFC1/Variable_1/read*
T0*'
_output_shapes
:���������
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
:���������
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
value	B :*
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
valueB"      *
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

:
x
FC2/truncated_normal/mulMul$FC2/truncated_normal/TruncatedNormalFC2/Sqrt*
T0*
_output_shapes

:
y
FC2/truncated_normalAddFC2/truncated_normal/mulFC2/truncated_normal/mean*
T0*
_output_shapes

:
�
FC2/Variable
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_output_shapes

:
�
FC2/Variable/AssignAssignFC2/VariableFC2/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:
u
FC2/Variable/readIdentityFC2/Variable*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
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
P
SoftmaxSoftmax
FC2/MatMul*
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
S
Loss/Shape_2Shapeone_hot*
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
z
Loss/Reshape_1Reshapeone_hotLoss/concat_1*
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
O

Loss/mul/xConst*
valueB
 *o�:*
dtype0*
_output_shapes
: 
H
Loss/mulMul
Loss/mul/x
Loss/add_3*
T0*
_output_shapes
: 
G

Loss/add_4Add	Loss/MeanLoss/mul*
T0*
_output_shapes
: 
d
Loss/total_loss/tagsConst* 
valueB BLoss/total_loss*
dtype0*
_output_shapes
: 
c
Loss/total_lossScalarSummaryLoss/total_loss/tags
Loss/add_4*
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
b
gradients/Loss/add_4_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
!gradients/Loss/add_4_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients/Loss/add_4_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/add_4_grad/Shape!gradients/Loss/add_4_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/add_4_grad/SumSumgradients/Fill/gradients/Loss/add_4_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/add_4_grad/ReshapeReshapegradients/Loss/add_4_grad/Sumgradients/Loss/add_4_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/add_4_grad/Sum_1Sumgradients/Fill1gradients/Loss/add_4_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/Loss/add_4_grad/Reshape_1Reshapegradients/Loss/add_4_grad/Sum_1!gradients/Loss/add_4_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients/Loss/add_4_grad/tuple/group_depsNoOp"^gradients/Loss/add_4_grad/Reshape$^gradients/Loss/add_4_grad/Reshape_1
�
2gradients/Loss/add_4_grad/tuple/control_dependencyIdentity!gradients/Loss/add_4_grad/Reshape+^gradients/Loss/add_4_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/add_4_grad/Reshape*
_output_shapes
: 
�
4gradients/Loss/add_4_grad/tuple/control_dependency_1Identity#gradients/Loss/add_4_grad/Reshape_1+^gradients/Loss/add_4_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Loss/add_4_grad/Reshape_1*
_output_shapes
: 
p
&gradients/Loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients/Loss/Mean_grad/ReshapeReshape2gradients/Loss/add_4_grad/tuple/control_dependency&gradients/Loss/Mean_grad/Reshape/shape*
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
`
gradients/Loss/mul_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
gradients/Loss/mul_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients/Loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/mul_grad/Shapegradients/Loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/mul_grad/mulMul4gradients/Loss/add_4_grad/tuple/control_dependency_1
Loss/add_3*
T0*
_output_shapes
: 
�
gradients/Loss/mul_grad/SumSumgradients/Loss/mul_grad/mul-gradients/Loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Loss/mul_grad/ReshapeReshapegradients/Loss/mul_grad/Sumgradients/Loss/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/mul_grad/mul_1Mul
Loss/mul/x4gradients/Loss/add_4_grad/tuple/control_dependency_1*
T0*
_output_shapes
: 
�
gradients/Loss/mul_grad/Sum_1Sumgradients/Loss/mul_grad/mul_1/gradients/Loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/mul_grad/Reshape_1Reshapegradients/Loss/mul_grad/Sum_1gradients/Loss/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/Loss/mul_grad/tuple/group_depsNoOp ^gradients/Loss/mul_grad/Reshape"^gradients/Loss/mul_grad/Reshape_1
�
0gradients/Loss/mul_grad/tuple/control_dependencyIdentitygradients/Loss/mul_grad/Reshape)^gradients/Loss/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Loss/mul_grad/Reshape*
_output_shapes
: 
�
2gradients/Loss/mul_grad/tuple/control_dependency_1Identity!gradients/Loss/mul_grad/Reshape_1)^gradients/Loss/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/mul_grad/Reshape_1*
_output_shapes
: 
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
b
gradients/Loss/add_3_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
!gradients/Loss/add_3_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients/Loss/add_3_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/add_3_grad/Shape!gradients/Loss/add_3_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/add_3_grad/SumSum2gradients/Loss/mul_grad/tuple/control_dependency_1/gradients/Loss/add_3_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/add_3_grad/ReshapeReshapegradients/Loss/add_3_grad/Sumgradients/Loss/add_3_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/add_3_grad/Sum_1Sum2gradients/Loss/mul_grad/tuple/control_dependency_11gradients/Loss/add_3_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/Loss/add_3_grad/Reshape_1Reshapegradients/Loss/add_3_grad/Sum_1!gradients/Loss/add_3_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients/Loss/add_3_grad/tuple/group_depsNoOp"^gradients/Loss/add_3_grad/Reshape$^gradients/Loss/add_3_grad/Reshape_1
�
2gradients/Loss/add_3_grad/tuple/control_dependencyIdentity!gradients/Loss/add_3_grad/Reshape+^gradients/Loss/add_3_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/add_3_grad/Reshape*
_output_shapes
: 
�
4gradients/Loss/add_3_grad/tuple/control_dependency_1Identity#gradients/Loss/add_3_grad/Reshape_1+^gradients/Loss/add_3_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Loss/add_3_grad/Reshape_1*
_output_shapes
: 
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
b
gradients/Loss/add_2_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
!gradients/Loss/add_2_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients/Loss/add_2_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/add_2_grad/Shape!gradients/Loss/add_2_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/add_2_grad/SumSum2gradients/Loss/add_3_grad/tuple/control_dependency/gradients/Loss/add_2_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/add_2_grad/ReshapeReshapegradients/Loss/add_2_grad/Sumgradients/Loss/add_2_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/add_2_grad/Sum_1Sum2gradients/Loss/add_3_grad/tuple/control_dependency1gradients/Loss/add_2_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/Loss/add_2_grad/Reshape_1Reshapegradients/Loss/add_2_grad/Sum_1!gradients/Loss/add_2_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients/Loss/add_2_grad/tuple/group_depsNoOp"^gradients/Loss/add_2_grad/Reshape$^gradients/Loss/add_2_grad/Reshape_1
�
2gradients/Loss/add_2_grad/tuple/control_dependencyIdentity!gradients/Loss/add_2_grad/Reshape+^gradients/Loss/add_2_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/add_2_grad/Reshape*
_output_shapes
: 
�
4gradients/Loss/add_2_grad/tuple/control_dependency_1Identity#gradients/Loss/add_2_grad/Reshape_1+^gradients/Loss/add_2_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Loss/add_2_grad/Reshape_1*
_output_shapes
: 
�
 gradients/Loss/L2Loss_3_grad/mulMulFC2/Variable_1/read4gradients/Loss/add_3_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
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
b
gradients/Loss/add_1_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
d
!gradients/Loss/add_1_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
/gradients/Loss/add_1_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/add_1_grad/Shape!gradients/Loss/add_1_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/add_1_grad/SumSum2gradients/Loss/add_2_grad/tuple/control_dependency/gradients/Loss/add_1_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/add_1_grad/ReshapeReshapegradients/Loss/add_1_grad/Sumgradients/Loss/add_1_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/add_1_grad/Sum_1Sum2gradients/Loss/add_2_grad/tuple/control_dependency1gradients/Loss/add_1_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/Loss/add_1_grad/Reshape_1Reshapegradients/Loss/add_1_grad/Sum_1!gradients/Loss/add_1_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
|
*gradients/Loss/add_1_grad/tuple/group_depsNoOp"^gradients/Loss/add_1_grad/Reshape$^gradients/Loss/add_1_grad/Reshape_1
�
2gradients/Loss/add_1_grad/tuple/control_dependencyIdentity!gradients/Loss/add_1_grad/Reshape+^gradients/Loss/add_1_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/add_1_grad/Reshape*
_output_shapes
: 
�
4gradients/Loss/add_1_grad/tuple/control_dependency_1Identity#gradients/Loss/add_1_grad/Reshape_1+^gradients/Loss/add_1_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/Loss/add_1_grad/Reshape_1*
_output_shapes
: 
�
 gradients/Loss/L2Loss_2_grad/mulMulFC2/Variable/read4gradients/Loss/add_2_grad/tuple/control_dependency_1*
T0*
_output_shapes

:
`
gradients/Loss/add_grad/ShapeConst*
valueB *
dtype0*
_output_shapes
: 
b
gradients/Loss/add_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
�
-gradients/Loss/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Loss/add_grad/Shapegradients/Loss/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/Loss/add_grad/SumSum2gradients/Loss/add_1_grad/tuple/control_dependency-gradients/Loss/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/Loss/add_grad/ReshapeReshapegradients/Loss/add_grad/Sumgradients/Loss/add_grad/Shape*
T0*
Tshape0*
_output_shapes
: 
�
gradients/Loss/add_grad/Sum_1Sum2gradients/Loss/add_1_grad/tuple/control_dependency/gradients/Loss/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/Loss/add_grad/Reshape_1Reshapegradients/Loss/add_grad/Sum_1gradients/Loss/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
: 
v
(gradients/Loss/add_grad/tuple/group_depsNoOp ^gradients/Loss/add_grad/Reshape"^gradients/Loss/add_grad/Reshape_1
�
0gradients/Loss/add_grad/tuple/control_dependencyIdentitygradients/Loss/add_grad/Reshape)^gradients/Loss/add_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/Loss/add_grad/Reshape*
_output_shapes
: 
�
2gradients/Loss/add_grad/tuple/control_dependency_1Identity!gradients/Loss/add_grad/Reshape_1)^gradients/Loss/add_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/Loss/add_grad/Reshape_1*
_output_shapes
: 
�
 gradients/Loss/L2Loss_1_grad/mulMulFC1/Variable_1/read4gradients/Loss/add_1_grad/tuple/control_dependency_1*
T0*
_output_shapes
:
�
gradients/Loss/L2Loss_grad/mulMulFC1/Variable/read2gradients/Loss/add_grad/tuple/control_dependency_1*
T0*
_output_shapes

:N
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
�
 gradients/FC2/MatMul_grad/MatMulMatMulgradients/Softmax_grad/mul_1FC2/Variable/read*
transpose_a( *
transpose_b(*
T0*'
_output_shapes
:���������
�
"gradients/FC2/MatMul_grad/MatMul_1MatMulRelugradients/Softmax_grad/mul_1*
transpose_a(*
transpose_b( *
T0*
_output_shapes

:
z
*gradients/FC2/MatMul_grad/tuple/group_depsNoOp!^gradients/FC2/MatMul_grad/MatMul#^gradients/FC2/MatMul_grad/MatMul_1
�
2gradients/FC2/MatMul_grad/tuple/control_dependencyIdentity gradients/FC2/MatMul_grad/MatMul+^gradients/FC2/MatMul_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC2/MatMul_grad/MatMul*'
_output_shapes
:���������
�
4gradients/FC2/MatMul_grad/tuple/control_dependency_1Identity"gradients/FC2/MatMul_grad/MatMul_1+^gradients/FC2/MatMul_grad/tuple/group_deps*
T0*5
_class+
)'loc:@gradients/FC2/MatMul_grad/MatMul_1*
_output_shapes

:
�
gradients/Relu_grad/ReluGradReluGrad2gradients/FC2/MatMul_grad/tuple/control_dependencyRelu*
T0*'
_output_shapes
:���������
�
gradients/AddNAddN gradients/Loss/L2Loss_2_grad/mul4gradients/FC2/MatMul_grad/tuple/control_dependency_1*
N*
T0*3
_class)
'%loc:@gradients/Loss/L2Loss_2_grad/mul*
_output_shapes

:
f
gradients/FC1/add_grad/ShapeShape
FC1/MatMul*
T0*
out_type0*
_output_shapes
:
h
gradients/FC1/add_grad/Shape_1Const*
valueB:*
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
:���������
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
:
s
'gradients/FC1/add_grad/tuple/group_depsNoOp^gradients/FC1/add_grad/Reshape!^gradients/FC1/add_grad/Reshape_1
�
/gradients/FC1/add_grad/tuple/control_dependencyIdentitygradients/FC1/add_grad/Reshape(^gradients/FC1/add_grad/tuple/group_deps*
T0*1
_class'
%#loc:@gradients/FC1/add_grad/Reshape*'
_output_shapes
:���������
�
1gradients/FC1/add_grad/tuple/control_dependency_1Identity gradients/FC1/add_grad/Reshape_1(^gradients/FC1/add_grad/tuple/group_deps*
T0*3
_class)
'%loc:@gradients/FC1/add_grad/Reshape_1*
_output_shapes
:
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

:N
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

:N
�
gradients/AddN_1AddN gradients/Loss/L2Loss_1_grad/mul1gradients/FC1/add_grad/tuple/control_dependency_1*
N*
T0*3
_class)
'%loc:@gradients/Loss/L2Loss_1_grad/mul*
_output_shapes
:
�
gradients/AddN_2AddNgradients/Loss/L2Loss_grad/mul4gradients/FC1/MatMul_grad/tuple/control_dependency_1*
N*
T0*1
_class'
%#loc:@gradients/Loss/L2Loss_grad/mul*
_output_shapes

:N
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
valueBN*    *
dtype0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam/AssignAssignFC1/Variable/Adam#FC1/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N

FC1/Variable/Adam/readIdentityFC1/Variable/Adam*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
%FC1/Variable/Adam_1/Initializer/zerosConst*
valueBN*    *
dtype0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1
VariableV2*
shape
:N*
dtype0*
	container *
shared_name *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1/AssignAssignFC1/Variable/Adam_1%FC1/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
FC1/Variable/Adam_1/readIdentityFC1/Variable/Adam_1*
T0*
_class
loc:@FC1/Variable*
_output_shapes

:N
�
%FC1/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam/AssignAssignFC1/Variable_1/Adam%FC1/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam/readIdentityFC1/Variable_1/Adam*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
'FC1/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1/AssignAssignFC1/Variable_1/Adam_1'FC1/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
FC1/Variable_1/Adam_1/readIdentityFC1/Variable_1/Adam_1*
T0*!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
#FC2/Variable/Adam/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam/AssignAssignFC2/Variable/Adam#FC2/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:

FC2/Variable/Adam/readIdentityFC2/Variable/Adam*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
%FC2/Variable/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1
VariableV2*
shape
:*
dtype0*
	container *
shared_name *
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1/AssignAssignFC2/Variable/Adam_1%FC2/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC2/Variable*
_output_shapes

:
�
FC2/Variable/Adam_1/readIdentityFC2/Variable/Adam_1*
T0*
_class
loc:@FC2/Variable*
_output_shapes

:
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
 *
�#<*
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
Adam/beta2Adam/epsilongradients/AddN_2*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC1/Variable*
_output_shapes

:N
�
$Adam/update_FC1/Variable_1/ApplyAdam	ApplyAdamFC1/Variable_1FC1/Variable_1/AdamFC1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN_1*
T0*
use_locking( *
use_nesterov( *!
_class
loc:@FC1/Variable_1*
_output_shapes
:
�
"Adam/update_FC2/Variable/ApplyAdam	ApplyAdamFC2/VariableFC2/Variable/AdamFC2/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilongradients/AddN*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC2/Variable*
_output_shapes

:
�
$Adam/update_FC2/Variable_1/ApplyAdam	ApplyAdamFC2/Variable_1FC2/Variable_1/AdamFC2/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon gradients/Loss/L2Loss_3_grad/mul*
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
value	B : *
dtype0*
_output_shapes
: 
�
Accuracy/ArgMaxArgMaxSoftmaxAccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes
:
]
Accuracy/ArgMax_1/dimensionConst*
value	B : *
dtype0*
_output_shapes
: 
�
Accuracy/ArgMax_1ArgMaxone_hotAccuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes
:
`
Accuracy/EqualEqualAccuracy/ArgMaxAccuracy/ArgMax_1*
T0	*
_output_shapes
:
Y
Accuracy/CastCastAccuracy/Equal*

SrcT0
*

DstT0*
_output_shapes
:
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
initNoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign"=���~      �	b�낰��A*�8
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   ���@     p�@! ��`�ِ@)?�pCe�@2�        �-���q=�qU���I?IcD���L?uWy��r?hyO�s?*QH�x?o��5sz?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             (�@              �?              �?              �?              �?               @              �?      �?              �?              �?               @      �?      �?      @      @      @      �?      @      @       @      @      @       @       @      $@      @       @      $@       @       @      (@      "@      "@      5@      2@      6@      :@      2@      :@      :@     �C@      9@      @@      :@      C@      @@      ;@      ?@     �@@      8@      =@      7@      <@      (@      ,@       @      @      �?       @        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `I�>   `w�?     p�@!������X@)�A��%�:@2�豪}0ڰ>��n����>�[�=�k�>��~���>�XQ��>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              �?              �?      �?              �?      �?              �?              �?              �?      �?      �?      �?       @      �?               @              �?              �?              @       @      �?       @              �?      �?      �?       @       @       @      @       @       @      �?      �?      @      @      @      @       @      @      @      @      @      @      @      @      @      @       @      @      @      @      @      *@      *@      "@      $@      $@      "@      0@      0@      @      *@      (@      3@      $@      6@      *@      1@      <@      0@      &@      .@      6@      4@      ;@      5@      <@     �B@      =@     �C@      9@      =@      >@     �@@      =@      ?@      <@     �B@      0@     �A@     �A@     �@@      A@      ;@     �@@      ?@      >@      =@      ;@      6@      =@      4@      6@      7@      "@      ,@      0@      &@      7@      0@      $@      (@      ,@       @       @      @      *@      @      @      @      @      @      @        

Loss/total_lossDI0@

Accuracy/accuracy    ����!      �i�r	��$����A�*�8
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   `y@     p�@! @��4+�@)��y7�r�@2�        �-���q=�qU���I?IcD���L?;8�clp?uWy��r?����=��?���J�\�?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             H�@              �?              �?              �?              �?              �?               @      �?               @       @      @       @              �?      @               @       @      @      �?      �?      "@      @      @      @      @      $@      "@      "@      "@      @      *@      @      &@      $@      *@      *@      3@      0@      4@      3@      1@      4@      6@      >@      4@     �D@      D@      <@      E@      ?@      :@      =@      8@      @@      5@      1@      .@       @       @      @      @       @        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    /w�>    Q��?     p�@!��R���X@): �&2>9@2���ӤP��>�
�%W�>����>豪}0ڰ>�[�=�k�>��~���>��>M|K�>�_�T�l�>�uE����>�f����>8K�ߝ�>�h���`�>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?              �?              �?              �?              �?              �?              @               @      �?              �?              �?      �?       @      @               @      @       @      @      @      @      @      @      �?       @      @      @      $@      @      �?       @      @      �?      @       @      @      "@       @      (@      "@      @      @      @      &@      0@      *@      &@      .@      *@      6@      *@      (@       @      7@      .@      $@      (@      8@      2@      2@      ;@      3@     �E@      4@      @@     �C@      8@      7@      :@      C@     �A@      <@      @@     �F@      >@      5@      ?@      E@     �@@      9@      E@      >@      <@     �A@     �@@      6@     �A@      8@      7@      9@      6@      *@      3@      .@      .@      0@      "@      &@       @      @      (@      @      *@       @      @      @       @       @      @      �?        

Loss/total_loss�0@

Accuracy/accuracy    ��Q      �tj	_T����A�*�:
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   `y@     p�@! ��4��@)ա���ɣ@2�        �-���q=;8�clp?uWy��r?*QH�x?o��5sz?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             (�@              �?              �?               @              �?       @              �?              �?      �?      @      @              �?              �?       @      �?       @      @      @      @      "@      @       @      @      $@      @      @      @      @      "@       @      @      &@      @      &@      *@      1@      5@      3@      =@      3@      ;@      8@      >@      :@     �A@      ?@      E@      D@      C@      E@      ?@      =@      @@      8@      0@      ,@      $@      @      @      @      �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �U�y>    Q��?     p�@!�)O���X@)-K�S;@2�	E'�/��x>f^��`{>��ӤP��>�
�%W�>R%�����>�u��gr�>����>豪}0ڰ>��n����>�u`P+d�>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>��~���>�XQ��>K+�E���>jqs&\��>��>M|K�>�_�T�l�>�iD*L��>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?              �?              �?              �?              �?              �?              �?              �?      @              �?       @              �?              �?              �?      �?      �?               @       @      �?      �?       @      �?      @       @       @               @       @      @      @      @      @      �?      @       @       @      @      @      @      @      @       @      @       @      $@      @      @      @      @              @       @       @      "@      @      @       @      @      &@       @      "@      .@      .@      $@      (@      .@      4@      1@      0@      0@      1@      5@      2@      4@      ;@      9@      .@      4@      2@      @@      4@      3@      H@      8@      7@      =@      B@      >@      <@     �A@      C@      :@      <@     �C@      A@      @@      7@      ;@      5@      ;@      ;@      3@      2@      >@      8@      5@      :@      6@      .@      7@      (@      .@      (@      $@      &@      (@      "@      (@      @      @      @       @      @      @       @      �?       @        

Loss/total_loss�	1@

Accuracy/accuracy    ��94Q      �tj	�ဃ���A�*�:
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   @�@     p�@!  ��}�@)u�/,0�@2�        �-���q=;8�clp?uWy��r?����=��?���J�\�?-Ա�L�?eiS�m�?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             �@              �?              �?              �?              �?              �?       @               @      �?      �?      �?      �?      �?               @       @               @       @       @               @       @      @      @      @       @      @       @      *@      "@      &@      @      @      (@      *@      &@      ,@      3@      3@      9@      :@      2@      7@      7@      A@      6@     �E@      A@      >@     �B@     �@@     �A@     �@@      >@      6@      9@      6@      0@      *@      &@      @      @      �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �U�y>    Q��?     p�@!t���X@)OQ3<@2�	E'�/��x>f^��`{>��ӤP��>�
�%W�>R%�����>�u��gr�>���?�ګ>����>豪}0ڰ>��n����>�u`P+d�>5�"�g��>G&�$�>��~���>�XQ��>
�/eq
�>;�"�q�>K+�E���>jqs&\��>��>M|K�>�_�T�l�>�iD*L��>�ѩ�-�>���%�>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>pz�w�7�>I��P=�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?              �?      �?              �?              �?              �?              �?               @              �?       @              �?               @              �?      �?              �?              �?       @       @      @       @       @       @      �?               @      �?      �?      @      �?      @      @      �?      @       @      �?      @      @      �?      @       @      @      @       @      @      @      @      @      @      @      @      @      "@      @      @      @      $@      @      $@      @      @      ,@      .@      .@      0@      ,@      3@      ,@      8@      *@      4@      3@      *@      5@      0@      6@      6@      9@      6@      H@      9@      @@     �D@      6@      =@      5@      @@      :@      6@     �B@     �@@      ;@      @@      =@      A@      9@      ;@      B@      7@     �@@      @@      >@      6@      7@      5@      3@      =@      1@      1@      1@      ,@      0@      @       @       @      (@      "@      (@      @      "@      @      @      @      @       @      �?       @        

Loss/total_loss�T0@

Accuracy/accuracy    �+Gq      �~?�	Yk�����A�*�:
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   @�@     p�@! ��$��@)Z��3��@2�        �-���q=;8�clp?uWy��r?-Ա�L�?eiS�m�?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�              �@              �?              �?               @              �?      �?               @       @              @      @       @      �?              �?      @      �?      �?      @      @       @              @       @      @      @       @       @      @      "@      @      @      $@      "@      $@      "@      (@       @      .@      9@      7@      :@      5@      6@     �@@     �@@      >@      <@      B@      ?@     �D@      ;@     �A@      >@      <@      5@      >@      ;@      2@      "@      ,@      @      @      �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �U�y>    Q��?     p�@!�F���X@)�)i��<@2�	E'�/��x>f^��`{>��ӤP��>�
�%W�>R%�����>�u��gr�>���?�ګ>����>豪}0ڰ>��n����>�u`P+d�>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>�XQ��>K+�E���>jqs&\��>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              �?              �?              �?              �?      �?              �?              �?      �?      �?              �?      �?              �?              �?              �?      �?              �?      �?      �?      �?      �?              �?      �?      �?      �?       @      @      �?       @               @       @               @      @      @      @      �?      @      @       @      @      �?       @      @      @      @      @      @      @      @      @      &@      "@      @       @      @      @      @      @      &@      @      @      @      (@      @      (@      $@      "@      ,@      *@      *@      *@      .@      ;@      *@      1@      7@      3@      4@      *@      7@      4@      :@      2@      4@      9@      >@      :@      <@      ;@      2@      8@      ;@     �@@     �A@      ?@      @@      =@      2@      <@      ?@      >@      9@      8@      ?@      7@      B@      A@      <@      3@      @@      :@      &@      :@      ,@      ,@      4@      *@      1@      3@      .@      (@      @      @      $@      @       @      @      @      @       @      @      �?       @        

Loss/total_loss�]1@

Accuracy/accuracy    uu�;�      �g	������A�'*�9
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�
relu_activation*�   `y@     p�@! �Z���@)K�2
෣@2�        �-���q=&b՞
�u?*QH�x?����=��?���J�\�?�Rc�ݒ?^�S���?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             p�@              �?              �?              �?               @       @      �?       @      @      @      �?      �?       @      @      �?       @      @       @       @       @       @      @       @       @      $@      @      @      @      @      @      $@       @      ,@      &@      0@      $@      5@      0@      5@      ?@      1@      7@      ;@      :@     �A@      ?@     �@@     �A@     �@@      =@      B@      =@      :@      ;@      8@      $@      (@      .@      ,@      @       @       @        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �U�y>    Q��?     p�@!�O?���X@)B�9ܛ9@2�E'�/��x>f^��`{>��ӤP��>�
�%W�>R%�����>�u��gr�>���?�ګ>����>豪}0ڰ>��n����>�u`P+d�>5�"�g��>G&�$�>�[�=�k�>��~���>;�"�q�>['�?��>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?               @              �?      �?      �?              �?      �?              �?      @      �?      @      �?      �?      �?               @               @       @      �?      �?       @      @       @      @      �?               @      @      �?      @       @      @      @      @      @      "@      @      @      @      @      @      @      @      @      @      @      (@      @      (@       @      @       @       @      ,@      ,@      &@      (@      6@      (@      1@      3@      8@      6@      *@      5@      3@      5@      0@      1@      2@      @@      <@      :@     �A@      =@      7@      7@      =@      B@      ?@      D@      C@      2@      ;@      >@      ?@      >@      ?@      D@      <@     �C@     �@@      B@      .@      :@      8@      4@      6@      .@      *@      2@      ,@      0@      1@      &@      "@      *@       @      $@      @      1@      @      @      @      @      �?      �?      �?        

Loss/total_loss}�0@

Accuracy/accuracy    �����      �l�	
����A�.*�9
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   @�@     p�@! @Д�D�@)��3`�L�@2�        �-���q=�qU���I?IcD���L?;8�clp?uWy��r?hyO�s?*QH�x?o��5sz?����=��?���J�\�?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�              �@              �?              �?      �?              �?              �?              �?              �?              �?               @      @      @              �?      �?      �?              �?      @      �?       @              @       @      @      @      "@      @      @      @       @      "@      $@      @      ,@      *@      *@      *@      6@      4@      8@      9@      5@      :@      ;@      @@     �A@      >@     �A@      ;@     �B@     �@@     �B@      B@      <@      :@      <@      5@      0@       @      @      @      @      �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �ܬ>   �E��?     p�@!P�����X@)E
V�3�;@2����?�ګ>����>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>�_�T�l�>�iD*L��>���%�>�uE����>�f����>a�Ϭ(�>8K�ߝ�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?      �?      �?              �?              �?       @              �?              �?       @      �?      �?       @      �?      �?       @      �?      �?      �?       @      �?               @              @      @      @       @      �?      �?      @      �?      �?      @      @      @      @      @      @      @      @      &@      @       @      @       @      @      @      @      @      "@      "@      @       @       @      .@      @      &@      1@      .@      *@      *@      3@      1@      *@      4@      ,@      9@      ,@      0@      1@      6@      2@      5@      ,@      4@     �A@      >@      ;@      F@      4@      <@      6@     �A@      ;@      B@      ;@      ?@      ;@      <@      C@     �B@      <@      =@      B@      <@     �@@      <@      ?@      .@      2@      7@      6@      2@      0@      *@      0@      &@      .@      *@       @      &@      (@      @      1@      @      (@      @      @      @      @       @      �?      �?        

Loss/total_loss�S1@

Accuracy/accuracy    T�J�!      ڙ4,	��4����A�6*�:
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	   @�@     p�@! @dd-�@)V�O�!ե@2�        �-���q=uWy��r?hyO�s?&b՞
�u?*QH�x?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             0�@              �?              �?              �?              @               @       @              �?      @       @      �?       @              @       @       @      @      @      @              @      �?       @       @       @      @      @       @      @      @      (@      @      1@      &@      "@      &@      3@      *@      6@      8@      ,@      7@      8@      @@      @@     �B@      D@     �A@     �@@     �B@     �@@     �@@      ?@      =@      5@      1@      2@      ,@      &@      "@      @      �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	    /w�>    Q��?     p�@!h�����X@)�ɨa�:@2���ӤP��>�
�%W�>����>豪}0ڰ>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>�XQ��>;�"�q�>['�?��>K+�E���>jqs&\��>��>M|K�>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�               @               @              �?              �?              �?      �?               @              �?              �?       @               @               @       @      �?               @              �?       @               @       @               @      �?      �?       @      �?       @              �?               @      @      @      @      �?      @              �?       @      @       @       @      @      @      @      "@      @      (@       @      @      @      @      @      @      @      .@       @      @      "@      $@      (@      &@      $@       @      1@      *@      (@      (@      3@      1@      &@      0@      7@      8@      0@      .@      7@      4@      <@      *@      :@      4@      <@      5@      7@      B@      9@      8@      4@     �C@      ?@      7@     �A@     �C@      8@      3@      ?@      9@      C@      5@      ;@      :@      >@      :@      8@      5@      8@      :@      3@      7@      3@      1@      5@      0@      2@      (@      "@      *@      &@      (@       @      @      *@      @      �?      @       @      @               @        

Loss/total_lossC11@

Accuracy/accuracy    �	�0Q      ����	�_����A�>*�<
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	    �2@     p�@!  �;�@)��h�@��@2�        �-���q=uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?�7c_XY�?�#�h/�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@�����1@q��D�]3@�������:�             ��@              �?              �?      �?              �?              �?      �?              �?       @               @      @      �?              @      �?      @      �?       @      �?       @      @      @      @      �?      @      �?       @      @      @      $@       @      @       @      $@      $@      &@      &@      $@      .@      4@      2@      6@      2@      7@      8@      9@      A@      D@      A@      >@     �@@     �@@      E@      <@      ;@      9@      8@      6@      6@      *@       @      @       @      @      �?      �?              �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `C^�<    ~��?     p�@!�F���X@)I�f� >@2�	        �-���q==��]���=��1���=����%�=f;H�\Q�=�tO���=�f׽r��=����W_>>p��Dp�@>
�}���>X$�z�>��|�~�>���]���>���?�ګ>����>豪}0ڰ>��n����>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>�[�=�k�>��~���>�XQ��>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>�_�T�l�>�iD*L��>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              @              �?              �?              �?              �?              �?              �?              �?              �?              �?      �?      �?              �?      �?               @              �?       @              @              �?              �?              �?      �?      �?       @      �?               @      @      �?      @      �?       @      �?       @       @               @               @       @      @       @      @      �?       @       @      �?      @      @       @      @      @      @      @      @      ,@       @      @      @      @      &@      @      @      @      @      @      $@      $@      $@      &@      &@      *@      (@      1@      ,@      ,@      ,@      =@      6@      4@      :@      0@      ;@      ,@      1@      7@      4@      2@      0@      5@      @@      ?@      9@      C@      3@      6@      7@      ;@      <@      =@     �@@      >@      2@      8@     �A@      =@      7@      .@      6@      0@      >@      =@      9@      8@      <@      :@      3@      1@      1@      $@      5@      @      *@      *@      @      .@      ,@      $@      *@      @      *@      @      @      @       @      @       @       @        

Loss/total_losso31@

Accuracy/accuracy    �Q"      ���]	ҍ�����A�F*�<
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�	    �2@     p�@! �%�?8�@)�����@2�        �-���q=�qU���I?IcD���L?;8�clp?uWy��r?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@)����&@a/5L��@�����1@q��D�]3@�������:�             x�@              �?              �?              �?              �?              �?              �?       @      �?      �?      �?      �?               @       @      @              �?      �?      @      �?      �?      @      @      @      @       @      @      $@      @      @      @      &@       @      *@      "@      ,@      ,@      (@      3@      0@      ;@      .@      8@      7@      B@      ;@      B@      ;@     �C@      ?@      <@      @@      ?@      A@      ?@      5@      2@      4@      ,@      "@      "@      @       @      �?      �?              �?        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   `C^�<    ~��?     p�@!�D*���X@)W�=�$=@2�	        �-���q==��]���=��1���=����%�=f;H�\Q�=�tO���=�f׽r��=����W_>>p��Dp�@>��ӤP��>�
�%W�>
�}���>X$�z�>��|�~�>���]���>���?�ګ>����>豪}0ڰ>5�"�g��>G&�$�>��~���>�XQ��>['�?��>K+�E���>jqs&\��>�_�T�l�>�iD*L��>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�	              @              �?              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?      �?              @              �?       @               @              �?      �?              �?      �?      �?               @              @       @       @      �?      �?               @      @              �?      @      @       @      @      @      @              @      @       @      @      @      @      @      @      @      @      @       @      @      @       @      @      "@      @      @      &@      (@       @      ,@      &@      @      (@      0@      0@      .@      (@      1@      ,@      6@      4@      3@      7@      2@      2@      1@      ;@      3@      3@      :@      B@      =@      9@      D@      5@      6@      4@     �A@      <@      2@     �B@      A@      6@     �A@      8@      <@     �A@      <@      ?@      0@      >@      @@      <@      5@      <@      7@      1@      3@      $@      1@      6@      &@      5@      2@      "@      @      (@      @      (@      @      @      @      @      @      @      �?      @      @        

Loss/total_losse1@

Accuracy/accuracy    �J�      ڟ�	*w�����A�N*�9
�
FC1/layer1/weights*�	   �)�   �D2�?     H�@! �̮q� �)&��XG�N@2��1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ����&���#�h/���7c_XY��#�+(�ŉ�eiS�m��-Ա�L�����J�\������=���>	� �����T}�o��5sz�*QH�x�&b՞
�u�hyO�s�uWy��r�;8�clp��N�W�m�P}���h�Tw��Nof����%��b��l�P�`���bB�SY�ܗ�SsW����#@�d�\D�X=�x?�x��>h�'��a�Ϭ(�>8K�ߝ�>�[^:��"?U�4@@�$?I�I�)�(?�7Kaa+?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?�������:�              .@      7@      =@      >@      >@      :@      ;@      :@      :@      ?@      5@      5@      9@      ;@      9@      &@      6@      .@      1@      (@       @       @      $@      $@      �?      &@      @      @      @      @      @      @      @       @      @       @              �?      @              @               @       @       @               @               @       @      �?      �?               @              �?               @              �?              �?              �?              �?              �?              �?              �?      �?              �?              �?              �?              �?              �?       @       @      �?      �?      @      �?      @       @       @      @      @      @      @       @      @       @      @      @      @      @      (@      @      @      @      &@      (@      $@      ,@      (@      4@      *@      1@      &@      6@      .@      <@      8@      =@      <@      C@      =@      >@      B@      =@      (@      6@      2@      @        
R
FC1/layer1/biases*=      .@2        �-���q=�������:              .@        
�	
relu_activation*�   `y@     p�@! ��Wx�@)�1 UKV�@2�        �-���q=�qU���I?IcD���L?����=��?���J�\�?-Ա�L�?eiS�m�?�7c_XY�?�#�h/�?^�S���?�"�uԖ?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?cI���?�P�1���?3?��|�?�E̟���?yL�����?S�Fi��?ܔ�.�u�?��tM@w`<f@�6v��@h�5�@�Š)U	@u�rʭ�@�DK��@{2�.��@!��v�@زv�5f@��h:np@S���߮@�������:�             P�@              �?              �?              �?               @              �?               @      @      @               @      �?      @      �?      @      @       @       @      @      @      @      @      @      @      @      @      @      @      @      (@      "@      "@      "@      ,@      $@      5@      4@      7@      :@      (@      2@      ;@      ?@      =@     �A@      F@     �B@      A@     �A@     �A@     �B@      =@      5@      2@      4@      0@      &@      *@      @      @      @        
�
FC2/layer2/weights*�	   @~!�   ����?      l@!  ����%@)r��?@2��iZ��������2g�G�A�uo�p�+Se*8�\l�9⿰1%���Z%�޿W�i�bۿ�^��h�ؿ��7�ֿ�Ca�G�Կ_&A�o�ҿ���ѿ�Z�_��ο�K?̿�@�"�ɿ�QK|:ǿyD$�ſ�?>8s2ÿӖ8��s��!��������(!�ؼ�%g�cE9��8/�C�ַ�� l(����{ �ǳ����]$A鱿����iH��I�������g�骿�g���w���/�*>��`��a�8���uS��a���/����v��ab����<�A���}Y�4j���"�uԖ�^�S�����Rc�ݒ�#�+(�ŉ�eiS�m�����T}?>	� �?���J�\�?-Ա�L�?�#�h/�?���&�?�Rc�ݒ?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?�������:�              @      @      �?      �?       @       @      @      @      @      @      @      @      @      @      @       @      @       @      �?      @      @       @      @      �?              �?      @      �?       @              �?      @      @               @              �?       @      �?              �?              �?              �?              �?               @      �?              �?       @      @      @      @       @      �?      �?      @              @               @      @      �?              �?      @      @      @      @      @      "@      @      @      "@      @      @      "@      @      @      �?      @       @        
R
FC2/layer2/biases*=      .@2        �-���q=�������:              .@        
�
softmax_activation*�	   �ܬ>   �E��?     p�@!xkE���X@)��):I!=@2����?�ګ>����>豪}0ڰ>��n����>0�6�/n�>5�"�g��>G&�$�>�*��ڽ>
�/eq
�>;�"�q�>['�?��>K+�E���>jqs&\��>��>M|K�>�_�T�l�>�iD*L��>�ѩ�-�>���%�>�uE����>�f����>��(���>a�Ϭ(�>8K�ߝ�>�h���`�>�ߊ4F��>})�l a�>pz�w�7�>I��P=�>��Zr[v�>O�ʗ��>>�?�s��>�FF�G ?��[�?1��a˲?6�]��?����?f�ʜ�7
?>h�'�?x?�x�?��d�r?�5�i}1?�T7��?�vV�R9?��ڋ?�.�?ji6�9�?�S�F !?�[^:��"?U�4@@�$?+A�F�&?I�I�)�(?�7Kaa+?��VlQ.?��bȬ�0?��82?�u�w74?��%�V6?uܬ�@8?��%>��:?d�\D�X=?���#@?�!�A?�T���C?a�$��{E?
����G?�qU���I?IcD���L?k�1^�sO?nK���LQ?�lDZrS?<DKc��T?ܗ�SsW?��bB�SY?�m9�H�[?E��{��^?�l�P�`?���%��b?5Ucv0ed?Tw��Nof?P}���h?ߤ�(g%k?�N�W�m?;8�clp?uWy��r?hyO�s?&b՞
�u?*QH�x?o��5sz?���T}?>	� �?����=��?���J�\�?-Ա�L�?eiS�m�?#�+(�ŉ?�7c_XY�?�#�h/�?���&�?�Rc�ݒ?^�S���?�"�uԖ?}Y�4j�?��<�A��?�v��ab�?�/��?�uS��a�?`��a�8�?�/�*>�?�g���w�?���g��?I���?����iH�?��]$A�?�{ �ǳ�?� l(��?8/�C�ַ?%g�cE9�?��(!�ؼ?!�����?Ӗ8��s�?�?>8s2�?yD$��?�QK|:�?�@�"��?�K?�?�Z�_���?����?_&A�o��?�Ca�G��?��7��?�^��h��?W�i�b�?��Z%��?�1%�?\l�9�?+Se*8�?uo�p�?2g�G�A�?������?�iZ�?+�;$�?�������:�              �?              �?              �?      �?      �?              @      �?               @              �?      �?              �?              �?      �?      �?      �?      �?              �?      �?      �?       @      �?      �?       @      @      �?       @      @      @      �?               @      �?      �?      @      @              �?      @              @              @      $@       @      @      @      @      @      @      $@      @      @      @      @      @      @      @      *@      @      @       @      ,@      "@       @       @      (@      0@      5@      &@      0@      3@      1@      ,@      .@      1@      0@      2@      .@      5@      5@      8@      0@      ;@      8@      B@      8@      4@      D@      5@      ;@      >@      <@      