       �K"	  �����Abrain.Event:2]�Қz�      i0��	r�ԁ���A"��
n
PlaceholderPlaceholder*
dtype0*
shape:���������N*'
_output_shapes
:���������N
h
Placeholder_1Placeholder*
dtype0*
shape:���������*#
_output_shapes
:���������
R
one_hot/ConstConst*
valueB
 *  �?*
dtype0*
_output_shapes
: 
T
one_hot/Const_1Const*
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
�
one_hotOneHotPlaceholder_1one_hot/depthone_hot/on_valueone_hot/off_value*
axis���������*
T0*
TI0*'
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
N
Accuracy/LogLogSoftmax*
T0*'
_output_shapes
:���������
\
Accuracy/mulMulone_hotAccuracy/Log*
T0*'
_output_shapes
:���������
`
Accuracy/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
�
Accuracy/SumSumAccuracy/mulAccuracy/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*#
_output_shapes
:���������
O
Accuracy/NegNegAccuracy/Sum*
T0*#
_output_shapes
:���������
X
Accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
q
Accuracy/MeanMeanAccuracy/NegAccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
S
Accuracy/Const_1Const*
valueB *
dtype0*
_output_shapes
: 
v
Accuracy/Mean_1MeanAccuracy/MeanAccuracy/Const_1*
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
l
Accuracy/accuracyScalarSummaryAccuracy/accuracy/tagsAccuracy/Mean_1*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummaryFC1/layer1/weightsFC1/layer1/biasesrelu_activationFC2/layer2/weightsFC2/layer2/biasessoftmax_activationLoss/total_lossAccuracy/accuracy*
N*
_output_shapes
: 
�
initNoOp^FC1/Variable/Assign^FC1/Variable_1/Assign^FC2/Variable/Assign^FC2/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^FC1/Variable/Adam/Assign^FC1/Variable/Adam_1/Assign^FC1/Variable_1/Adam/Assign^FC1/Variable_1/Adam_1/Assign^FC2/Variable/Adam/Assign^FC2/Variable/Adam_1/Assign^FC2/Variable_1/Adam/Assign^FC2/Variable_1/Adam_1/Assign"�"�K