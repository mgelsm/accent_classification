       �K"	   Rw��Abrain.Event:2���e�      ��?�	S	.Rw��A"،
h
PlaceholderPlaceholder*
dtype0*
shape:��*$
_output_shapes
:��
X
Placeholder_1Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
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
TI0*
_output_shapes
:	�
S
layer1/ToFloat/xConst*
value
B :�*
dtype0*
_output_shapes
: 
X
layer1/ToFloatCastlayer1/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
U
layer1/truediv/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
\
layer1/truedivRealDivlayer1/truediv/xlayer1/ToFloat*
T0*
_output_shapes
: 
D
layer1/SqrtSqrtlayer1/truediv*
T0*
_output_shapes
: 
r
layer1/truncated_normal/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
a
layer1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'layer1/truncated_normal/TruncatedNormalTruncatedNormallayer1/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*"
_output_shapes
:
�
layer1/truncated_normal/mulMul'layer1/truncated_normal/TruncatedNormallayer1/Sqrt*
T0*"
_output_shapes
:
�
layer1/truncated_normalAddlayer1/truncated_normal/mullayer1/truncated_normal/mean*
T0*"
_output_shapes
:
�
layer1/Variable
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_output_shapes
:
�
layer1/Variable/AssignAssignlayer1/Variablelayer1/truncated_normal*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/readIdentitylayer1/Variable*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
Y
layer1/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
}
layer1/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
layer1/Variable_1/AssignAssignlayer1/Variable_1layer1/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/readIdentitylayer1/Variable_1*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
^
layer1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer1/conv1d/ExpandDims
ExpandDimsPlaceholderlayer1/conv1d/ExpandDims/dim*
T0*

Tdim0*(
_output_shapes
:��
`
layer1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer1/conv1d/ExpandDims_1
ExpandDimslayer1/Variable/readlayer1/conv1d/ExpandDims_1/dim*
T0*

Tdim0*&
_output_shapes
:
�
layer1/conv1d/Conv2DConv2Dlayer1/conv1d/ExpandDimslayer1/conv1d/ExpandDims_1*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*(
_output_shapes
:��
|
layer1/conv1d/SqueezeSqueezelayer1/conv1d/Conv2D*
T0*
squeeze_dims
*$
_output_shapes
:��
o

layer1/addAddlayer1/conv1d/Squeezelayer1/Variable_1/read*
T0*$
_output_shapes
:��
o
layer1/layer1/weights/tagConst*&
valueB Blayer1/layer1/weights*
dtype0*
_output_shapes
: 
{
layer1/layer1/weightsHistogramSummarylayer1/layer1/weights/taglayer1/Variable/read*
T0*
_output_shapes
: 
m
layer1/layer1/biases/tagConst*%
valueB Blayer1/layer1/biases*
dtype0*
_output_shapes
: 
{
layer1/layer1/biasesHistogramSummarylayer1/layer1/biases/taglayer1/Variable_1/read*
T0*
_output_shapes
: 
W
Relu_activation/ReluRelu
layer1/add*
T0*$
_output_shapes
:��
�
#Relu_activation/relu_activation/tagConst*0
value'B% BRelu_activation/relu_activation*
dtype0*
_output_shapes
: 
�
Relu_activation/relu_activationHistogramSummary#Relu_activation/relu_activation/tagRelu_activation/Relu*
T0*
_output_shapes
: 
a
FC/Reshape/shapeConst*
valueB"�   ����*
dtype0*
_output_shapes
:
v

FC/ReshapeReshapeRelu_activation/ReluFC/Reshape/shape*
T0*
Tshape0* 
_output_shapes
:
��$
O
FC/ToFloat/xConst*
value
B :�$*
dtype0*
_output_shapes
: 
P

FC/ToFloatCastFC/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
Q
FC/truediv/xConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
P

FC/truedivRealDivFC/truediv/x
FC/ToFloat*
T0*
_output_shapes
: 
<
FC/SqrtSqrt
FC/truediv*
T0*
_output_shapes
: 
j
FC/truncated_normal/shapeConst*
valueB"f     *
dtype0*
_output_shapes
:
]
FC/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
#FC/truncated_normal/TruncatedNormalTruncatedNormalFC/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	�$
v
FC/truncated_normal/mulMul#FC/truncated_normal/TruncatedNormalFC/Sqrt*
T0*
_output_shapes
:	�$
w
FC/truncated_normalAddFC/truncated_normal/mulFC/truncated_normal/mean*
T0*
_output_shapes
:	�$
�
FC/Variable
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_output_shapes
:	�$
�
FC/Variable/AssignAssignFC/VariableFC/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
s
FC/Variable/readIdentityFC/Variable*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
U
FC/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
y
FC/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
FC/Variable_1/AssignAssignFC/Variable_1FC/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
t
FC/Variable_1/readIdentityFC/Variable_1*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
	FC/MatMulMatMul
FC/ReshapeFC/Variable/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes
:	�
V
FC/addAdd	FC/MatMulFC/Variable_1/read*
T0*
_output_shapes
:	�
W
softmax_activation/SoftmaxSoftmaxFC/add*
T0*
_output_shapes
:	�
U
loss/LogLogsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
L
loss/mulMulone_hotloss/Log*
T0*
_output_shapes
:	�
\
loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
x
loss/SumSumloss/mulloss/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes	
:�
?
loss/NegNegloss/Sum*
T0*
_output_shapes	
:�
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
e
	loss/MeanMeanloss/Neg
loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
loss/total_loss/tagsConst* 
valueB Bloss/total_loss*
dtype0*
_output_shapes
: 
b
loss/total_lossScalarSummaryloss/total_loss/tags	loss/Mean*
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
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients/loss/Mean_grad/ReshapeReshapegradients/Fill&gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
r
'gradients/loss/Mean_grad/Tile/multiplesConst*
valueB:�*
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshape'gradients/loss/Mean_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes	
:�
i
gradients/loss/Mean_grad/ShapeConst*
valueB:�*
dtype0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/ProdProdgradients/loss/Mean_grad/Shapegradients/loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
j
 gradients/loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_1 gradients/loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
"gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*
T0*
_output_shapes	
:�
j
gradients/loss/Neg_grad/NegNeg gradients/loss/Mean_grad/truediv*
T0*
_output_shapes	
:�
n
gradients/loss/Sum_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
^
gradients/loss/Sum_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
}
gradients/loss/Sum_grad/addAddloss/Sum/reduction_indicesgradients/loss/Sum_grad/Size*
T0*
_output_shapes
: 
�
gradients/loss/Sum_grad/modFloorModgradients/loss/Sum_grad/addgradients/loss/Sum_grad/Size*
T0*
_output_shapes
: 
b
gradients/loss/Sum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
e
#gradients/loss/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#gradients/loss/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/rangeRange#gradients/loss/Sum_grad/range/startgradients/loss/Sum_grad/Size#gradients/loss/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
d
"gradients/loss/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/FillFillgradients/loss/Sum_grad/Shape_1"gradients/loss/Sum_grad/Fill/value*
T0*
_output_shapes
: 
�
%gradients/loss/Sum_grad/DynamicStitchDynamicStitchgradients/loss/Sum_grad/rangegradients/loss/Sum_grad/modgradients/loss/Sum_grad/Shapegradients/loss/Sum_grad/Fill*
N*
T0*#
_output_shapes
:���������
c
!gradients/loss/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/MaximumMaximum%gradients/loss/Sum_grad/DynamicStitch!gradients/loss/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
 gradients/loss/Sum_grad/floordivFloorDivgradients/loss/Sum_grad/Shapegradients/loss/Sum_grad/Maximum*
T0*
_output_shapes
:
�
gradients/loss/Sum_grad/ReshapeReshapegradients/loss/Neg_grad/Neg%gradients/loss/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
gradients/loss/Sum_grad/TileTilegradients/loss/Sum_grad/Reshape gradients/loss/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:	�
n
gradients/loss/mul_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
p
gradients/loss/mul_grad/Shape_1Const*
valueB"�      *
dtype0*
_output_shapes
:
�
-gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/loss/mul_grad/Shapegradients/loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
t
gradients/loss/mul_grad/mulMulgradients/loss/Sum_grad/Tileloss/Log*
T0*
_output_shapes
:	�
�
gradients/loss/mul_grad/SumSumgradients/loss/mul_grad/mul-gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/loss/mul_grad/ReshapeReshapegradients/loss/mul_grad/Sumgradients/loss/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
u
gradients/loss/mul_grad/mul_1Mulone_hotgradients/loss/Sum_grad/Tile*
T0*
_output_shapes
:	�
�
gradients/loss/mul_grad/Sum_1Sumgradients/loss/mul_grad/mul_1/gradients/loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/loss/mul_grad/Reshape_1Reshapegradients/loss/mul_grad/Sum_1gradients/loss/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	�
v
(gradients/loss/mul_grad/tuple/group_depsNoOp ^gradients/loss/mul_grad/Reshape"^gradients/loss/mul_grad/Reshape_1
�
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Reshape)^gradients/loss/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/loss/mul_grad/Reshape*
_output_shapes
:	�
�
2gradients/loss/mul_grad/tuple/control_dependency_1Identity!gradients/loss/mul_grad/Reshape_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/loss/mul_grad/Reshape_1*
_output_shapes
:	�
�
"gradients/loss/Log_grad/Reciprocal
Reciprocalsoftmax_activation/Softmax3^gradients/loss/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	�
�
gradients/loss/Log_grad/mulMul2gradients/loss/mul_grad/tuple/control_dependency_1"gradients/loss/Log_grad/Reciprocal*
T0*
_output_shapes
:	�
�
-gradients/softmax_activation/Softmax_grad/mulMulgradients/loss/Log_grad/mulsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
�
?gradients/softmax_activation/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/softmax_activation/Softmax_grad/SumSum-gradients/softmax_activation/Softmax_grad/mul?gradients/softmax_activation/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes	
:�
�
7gradients/softmax_activation/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
1gradients/softmax_activation/Softmax_grad/ReshapeReshape-gradients/softmax_activation/Softmax_grad/Sum7gradients/softmax_activation/Softmax_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	�
�
-gradients/softmax_activation/Softmax_grad/subSubgradients/loss/Log_grad/mul1gradients/softmax_activation/Softmax_grad/Reshape*
T0*
_output_shapes
:	�
�
/gradients/softmax_activation/Softmax_grad/mul_1Mul-gradients/softmax_activation/Softmax_grad/subsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
l
gradients/FC/add_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
g
gradients/FC/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
+gradients/FC/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/FC/add_grad/Shapegradients/FC/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/FC/add_grad/SumSum/gradients/softmax_activation/Softmax_grad/mul_1+gradients/FC/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC/add_grad/ReshapeReshapegradients/FC/add_grad/Sumgradients/FC/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
gradients/FC/add_grad/Sum_1Sum/gradients/softmax_activation/Softmax_grad/mul_1-gradients/FC/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC/add_grad/Reshape_1Reshapegradients/FC/add_grad/Sum_1gradients/FC/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
p
&gradients/FC/add_grad/tuple/group_depsNoOp^gradients/FC/add_grad/Reshape ^gradients/FC/add_grad/Reshape_1
�
.gradients/FC/add_grad/tuple/control_dependencyIdentitygradients/FC/add_grad/Reshape'^gradients/FC/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/FC/add_grad/Reshape*
_output_shapes
:	�
�
0gradients/FC/add_grad/tuple/control_dependency_1Identitygradients/FC/add_grad/Reshape_1'^gradients/FC/add_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/FC/add_grad/Reshape_1*
_output_shapes
:
�
gradients/FC/MatMul_grad/MatMulMatMul.gradients/FC/add_grad/tuple/control_dependencyFC/Variable/read*
transpose_a( *
transpose_b(*
T0* 
_output_shapes
:
��$
�
!gradients/FC/MatMul_grad/MatMul_1MatMul
FC/Reshape.gradients/FC/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	�$
w
)gradients/FC/MatMul_grad/tuple/group_depsNoOp ^gradients/FC/MatMul_grad/MatMul"^gradients/FC/MatMul_grad/MatMul_1
�
1gradients/FC/MatMul_grad/tuple/control_dependencyIdentitygradients/FC/MatMul_grad/MatMul*^gradients/FC/MatMul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/FC/MatMul_grad/MatMul* 
_output_shapes
:
��$
�
3gradients/FC/MatMul_grad/tuple/control_dependency_1Identity!gradients/FC/MatMul_grad/MatMul_1*^gradients/FC/MatMul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/FC/MatMul_grad/MatMul_1*
_output_shapes
:	�$
t
gradients/FC/Reshape_grad/ShapeConst*!
valueB"�   �      *
dtype0*
_output_shapes
:
�
!gradients/FC/Reshape_grad/ReshapeReshape1gradients/FC/MatMul_grad/tuple/control_dependencygradients/FC/Reshape_grad/Shape*
T0*
Tshape0*$
_output_shapes
:��
�
,gradients/Relu_activation/Relu_grad/ReluGradReluGrad!gradients/FC/Reshape_grad/ReshapeRelu_activation/Relu*
T0*$
_output_shapes
:��
t
gradients/layer1/add_grad/ShapeConst*!
valueB"�   �      *
dtype0*
_output_shapes
:
k
!gradients/layer1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
/gradients/layer1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer1/add_grad/Shape!gradients/layer1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/layer1/add_grad/SumSum,gradients/Relu_activation/Relu_grad/ReluGrad/gradients/layer1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/layer1/add_grad/ReshapeReshapegradients/layer1/add_grad/Sumgradients/layer1/add_grad/Shape*
T0*
Tshape0*$
_output_shapes
:��
�
gradients/layer1/add_grad/Sum_1Sum,gradients/Relu_activation/Relu_grad/ReluGrad1gradients/layer1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/layer1/add_grad/Reshape_1Reshapegradients/layer1/add_grad/Sum_1!gradients/layer1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/layer1/add_grad/tuple/group_depsNoOp"^gradients/layer1/add_grad/Reshape$^gradients/layer1/add_grad/Reshape_1
�
2gradients/layer1/add_grad/tuple/control_dependencyIdentity!gradients/layer1/add_grad/Reshape+^gradients/layer1/add_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/layer1/add_grad/Reshape*$
_output_shapes
:��
�
4gradients/layer1/add_grad/tuple/control_dependency_1Identity#gradients/layer1/add_grad/Reshape_1+^gradients/layer1/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/layer1/add_grad/Reshape_1*
_output_shapes
:
�
*gradients/layer1/conv1d/Squeeze_grad/ShapeConst*%
valueB"�      �      *
dtype0*
_output_shapes
:
�
,gradients/layer1/conv1d/Squeeze_grad/ReshapeReshape2gradients/layer1/add_grad/tuple/control_dependency*gradients/layer1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*(
_output_shapes
:��
�
)gradients/layer1/conv1d/Conv2D_grad/ShapeConst*%
valueB"�      �      *
dtype0*
_output_shapes
:
�
7gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/layer1/conv1d/Conv2D_grad/Shapelayer1/conv1d/ExpandDims_1,gradients/layer1/conv1d/Squeeze_grad/Reshape*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*(
_output_shapes
:��
�
+gradients/layer1/conv1d/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0*
_output_shapes
:
�
8gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer1/conv1d/ExpandDims+gradients/layer1/conv1d/Conv2D_grad/Shape_1,gradients/layer1/conv1d/Squeeze_grad/Reshape*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*&
_output_shapes
:
�
4gradients/layer1/conv1d/Conv2D_grad/tuple/group_depsNoOp8^gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput9^gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
<gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity7gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput5^gradients/layer1/conv1d/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput*(
_output_shapes
:��
�
>gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity8gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter5^gradients/layer1/conv1d/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
/gradients/layer1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:
�
1gradients/layer1/conv1d/ExpandDims_1_grad/ReshapeReshape>gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependency_1/gradients/layer1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
:
~
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
: 
j
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
~
beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
: 
j
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
&layer1/Variable/Adam/Initializer/zerosConst*!
valueB*    *
dtype0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam/AssignAssignlayer1/Variable/Adam&layer1/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam/readIdentitylayer1/Variable/Adam*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
(layer1/Variable/Adam_1/Initializer/zerosConst*!
valueB*    *
dtype0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1/AssignAssignlayer1/Variable/Adam_1(layer1/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1/readIdentitylayer1/Variable/Adam_1*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
(layer1/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam/AssignAssignlayer1/Variable_1/Adam(layer1/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam/readIdentitylayer1/Variable_1/Adam*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
*layer1/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1/AssignAssignlayer1/Variable_1/Adam_1*layer1/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1/readIdentitylayer1/Variable_1/Adam_1*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
"FC/Variable/Adam/Initializer/zerosConst*
valueB	�$*    *
dtype0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam/AssignAssignFC/Variable/Adam"FC/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
}
FC/Variable/Adam/readIdentityFC/Variable/Adam*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
$FC/Variable/Adam_1/Initializer/zerosConst*
valueB	�$*    *
dtype0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1/AssignAssignFC/Variable/Adam_1$FC/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1/readIdentityFC/Variable/Adam_1*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
$FC/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam/AssignAssignFC/Variable_1/Adam$FC/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
~
FC/Variable_1/Adam/readIdentityFC/Variable_1/Adam*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
&FC/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1/AssignAssignFC/Variable_1/Adam_1&FC/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1/readIdentityFC/Variable_1/Adam_1*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o�:*
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
%Adam/update_layer1/Variable/ApplyAdam	ApplyAdamlayer1/Variablelayer1/Variable/Adamlayer1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/layer1/conv1d/ExpandDims_1_grad/Reshape*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
'Adam/update_layer1/Variable_1/ApplyAdam	ApplyAdamlayer1/Variable_1layer1/Variable_1/Adamlayer1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/layer1/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
!Adam/update_FC/Variable/ApplyAdam	ApplyAdamFC/VariableFC/Variable/AdamFC/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/FC/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
#Adam/update_FC/Variable_1/ApplyAdam	ApplyAdamFC/Variable_1FC/Variable_1/AdamFC/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/FC/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC/Variable*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC/Variable*
_output_shapes
: 
�
AdamNoOp&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam^Adam/Assign^Adam/Assign_1
[
accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
accuracy/ArgMaxArgMaxsoftmax_activation/Softmaxaccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes	
:�
]
accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
accuracy/ArgMax_1ArgMaxone_hotaccuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes	
:�
a
accuracy/EqualEqualaccuracy/ArgMaxaccuracy/ArgMax_1*
T0	*
_output_shapes	
:�
Z
accuracy/CastCastaccuracy/Equal*

SrcT0
*

DstT0*
_output_shapes	
:�
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
accuracy/MeanMeanaccuracy/Castaccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
h
accuracy/accuracy/tagsConst*"
valueB Baccuracy/accuracy*
dtype0*
_output_shapes
: 
j
accuracy/accuracyScalarSummaryaccuracy/accuracy/tagsaccuracy/Mean*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummarylayer1/layer1/weightslayer1/layer1/biasesRelu_activation/relu_activationloss/total_lossaccuracy/accuracy*
N*
_output_shapes
: 
�
initNoOp^layer1/Variable/Assign^layer1/Variable_1/Assign^FC/Variable/Assign^FC/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^layer1/Variable/Adam/Assign^layer1/Variable/Adam_1/Assign^layer1/Variable_1/Adam/Assign ^layer1/Variable_1/Adam_1/Assign^FC/Variable/Adam/Assign^FC/Variable/Adam_1/Assign^FC/Variable_1/Adam/Assign^FC/Variable_1/Adam_1/Assign"�-�Ŝ      �|[	-�8Rw��AJ��
� � 
9
Add
x"T
y"T
z"T"
Ttype:
2	
�
	ApplyAdam
var"T�	
m"T�	
v"T�
beta1_power"T
beta2_power"T
lr"T

beta1"T

beta2"T
epsilon"T	
grad"T
out"T�"
Ttype:
2	"
use_lockingbool( "
use_nesterovbool( 
�
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"T�

value"T

output_ref"T�"	
Ttype"
validate_shapebool("
use_lockingbool(�
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
�
Conv2D

input"T
filter"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropFilter

input"T
filter_sizes
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
�
Conv2DBackpropInput
input_sizes
filter"T
out_backprop"T
output"T"
Ttype:
2"
strides	list(int)"
use_cudnn_on_gpubool(""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
4
Fill
dims

value"T
output"T"	
Ttype
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
S
HistogramSummary
tag
values"T
summary"
Ttype0:
2		
.
Identity

input"T
output"T"	
Ttype
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	�
�
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
8
MergeSummary
inputs*N
summary"
Nint(0
<
Mul
x"T
y"T
z"T"
Ttype:
2	�
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
�
OneHot
indices"TI	
depth
on_value"T
	off_value"T
output"T"
axisint���������"	
Ttype"
TItype0	:
2	
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
M
ScalarSummary
tags
values"T
summary"
Ttype:
2		
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
5
Sub
x"T
y"T
z"T"
Ttype:
	2	
�
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
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

TruncatedNormal

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	�
s

VariableV2
ref"dtype�"
shapeshape"
dtypetype"
	containerstring "
shared_namestring �*1.3.02v1.3.0-rc2-20-g0787eee،
h
PlaceholderPlaceholder*
dtype0*
shape:��*$
_output_shapes
:��
X
Placeholder_1Placeholder*
dtype0*
shape:�*
_output_shapes	
:�
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
TI0*
_output_shapes
:	�
S
layer1/ToFloat/xConst*
value
B :�*
dtype0*
_output_shapes
: 
X
layer1/ToFloatCastlayer1/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
U
layer1/truediv/xConst*
valueB
 *   @*
dtype0*
_output_shapes
: 
\
layer1/truedivRealDivlayer1/truediv/xlayer1/ToFloat*
T0*
_output_shapes
: 
D
layer1/SqrtSqrtlayer1/truediv*
T0*
_output_shapes
: 
r
layer1/truncated_normal/shapeConst*!
valueB"         *
dtype0*
_output_shapes
:
a
layer1/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
'layer1/truncated_normal/TruncatedNormalTruncatedNormallayer1/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*"
_output_shapes
:
�
layer1/truncated_normal/mulMul'layer1/truncated_normal/TruncatedNormallayer1/Sqrt*
T0*"
_output_shapes
:
�
layer1/truncated_normalAddlayer1/truncated_normal/mullayer1/truncated_normal/mean*
T0*"
_output_shapes
:
�
layer1/Variable
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_output_shapes
:
�
layer1/Variable/AssignAssignlayer1/Variablelayer1/truncated_normal*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/readIdentitylayer1/Variable*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
Y
layer1/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
}
layer1/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
layer1/Variable_1/AssignAssignlayer1/Variable_1layer1/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/readIdentitylayer1/Variable_1*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
^
layer1/conv1d/ExpandDims/dimConst*
value	B :*
dtype0*
_output_shapes
: 
�
layer1/conv1d/ExpandDims
ExpandDimsPlaceholderlayer1/conv1d/ExpandDims/dim*
T0*

Tdim0*(
_output_shapes
:��
`
layer1/conv1d/ExpandDims_1/dimConst*
value	B : *
dtype0*
_output_shapes
: 
�
layer1/conv1d/ExpandDims_1
ExpandDimslayer1/Variable/readlayer1/conv1d/ExpandDims_1/dim*
T0*

Tdim0*&
_output_shapes
:
�
layer1/conv1d/Conv2DConv2Dlayer1/conv1d/ExpandDimslayer1/conv1d/ExpandDims_1*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*(
_output_shapes
:��
|
layer1/conv1d/SqueezeSqueezelayer1/conv1d/Conv2D*
T0*
squeeze_dims
*$
_output_shapes
:��
o

layer1/addAddlayer1/conv1d/Squeezelayer1/Variable_1/read*
T0*$
_output_shapes
:��
o
layer1/layer1/weights/tagConst*&
valueB Blayer1/layer1/weights*
dtype0*
_output_shapes
: 
{
layer1/layer1/weightsHistogramSummarylayer1/layer1/weights/taglayer1/Variable/read*
T0*
_output_shapes
: 
m
layer1/layer1/biases/tagConst*%
valueB Blayer1/layer1/biases*
dtype0*
_output_shapes
: 
{
layer1/layer1/biasesHistogramSummarylayer1/layer1/biases/taglayer1/Variable_1/read*
T0*
_output_shapes
: 
W
Relu_activation/ReluRelu
layer1/add*
T0*$
_output_shapes
:��
�
#Relu_activation/relu_activation/tagConst*0
value'B% BRelu_activation/relu_activation*
dtype0*
_output_shapes
: 
�
Relu_activation/relu_activationHistogramSummary#Relu_activation/relu_activation/tagRelu_activation/Relu*
T0*
_output_shapes
: 
a
FC/Reshape/shapeConst*
valueB"�   ����*
dtype0*
_output_shapes
:
v

FC/ReshapeReshapeRelu_activation/ReluFC/Reshape/shape*
T0*
Tshape0* 
_output_shapes
:
��$
O
FC/ToFloat/xConst*
value
B :�$*
dtype0*
_output_shapes
: 
P

FC/ToFloatCastFC/ToFloat/x*

SrcT0*

DstT0*
_output_shapes
: 
Q
FC/truediv/xConst*
valueB
 *  �@*
dtype0*
_output_shapes
: 
P

FC/truedivRealDivFC/truediv/x
FC/ToFloat*
T0*
_output_shapes
: 
<
FC/SqrtSqrt
FC/truediv*
T0*
_output_shapes
: 
j
FC/truncated_normal/shapeConst*
valueB"f     *
dtype0*
_output_shapes
:
]
FC/truncated_normal/meanConst*
valueB
 *    *
dtype0*
_output_shapes
: 
�
#FC/truncated_normal/TruncatedNormalTruncatedNormalFC/truncated_normal/shape*

seed *
seed2 *
dtype0*
T0*
_output_shapes
:	�$
v
FC/truncated_normal/mulMul#FC/truncated_normal/TruncatedNormalFC/Sqrt*
T0*
_output_shapes
:	�$
w
FC/truncated_normalAddFC/truncated_normal/mulFC/truncated_normal/mean*
T0*
_output_shapes
:	�$
�
FC/Variable
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_output_shapes
:	�$
�
FC/Variable/AssignAssignFC/VariableFC/truncated_normal*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
s
FC/Variable/readIdentityFC/Variable*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
U
FC/zerosConst*
valueB*    *
dtype0*
_output_shapes
:
y
FC/Variable_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *
_output_shapes
:
�
FC/Variable_1/AssignAssignFC/Variable_1FC/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
t
FC/Variable_1/readIdentityFC/Variable_1*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
	FC/MatMulMatMul
FC/ReshapeFC/Variable/read*
transpose_a( *
transpose_b( *
T0*
_output_shapes
:	�
V
FC/addAdd	FC/MatMulFC/Variable_1/read*
T0*
_output_shapes
:	�
W
softmax_activation/SoftmaxSoftmaxFC/add*
T0*
_output_shapes
:	�
U
loss/LogLogsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
L
loss/mulMulone_hotloss/Log*
T0*
_output_shapes
:	�
\
loss/Sum/reduction_indicesConst*
value	B :*
dtype0*
_output_shapes
: 
x
loss/SumSumloss/mulloss/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes	
:�
?
loss/NegNegloss/Sum*
T0*
_output_shapes	
:�
T

loss/ConstConst*
valueB: *
dtype0*
_output_shapes
:
e
	loss/MeanMeanloss/Neg
loss/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
loss/total_loss/tagsConst* 
valueB Bloss/total_loss*
dtype0*
_output_shapes
: 
b
loss/total_lossScalarSummaryloss/total_loss/tags	loss/Mean*
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
&gradients/loss/Mean_grad/Reshape/shapeConst*
valueB:*
dtype0*
_output_shapes
:
�
 gradients/loss/Mean_grad/ReshapeReshapegradients/Fill&gradients/loss/Mean_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:
r
'gradients/loss/Mean_grad/Tile/multiplesConst*
valueB:�*
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/TileTile gradients/loss/Mean_grad/Reshape'gradients/loss/Mean_grad/Tile/multiples*
T0*

Tmultiples0*
_output_shapes	
:�
i
gradients/loss/Mean_grad/ShapeConst*
valueB:�*
dtype0*
_output_shapes
:
c
 gradients/loss/Mean_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
h
gradients/loss/Mean_grad/ConstConst*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/ProdProdgradients/loss/Mean_grad/Shapegradients/loss/Mean_grad/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
j
 gradients/loss/Mean_grad/Const_1Const*
valueB: *
dtype0*
_output_shapes
:
�
gradients/loss/Mean_grad/Prod_1Prod gradients/loss/Mean_grad/Shape_1 gradients/loss/Mean_grad/Const_1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
d
"gradients/loss/Mean_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
 gradients/loss/Mean_grad/MaximumMaximumgradients/loss/Mean_grad/Prod_1"gradients/loss/Mean_grad/Maximum/y*
T0*
_output_shapes
: 
�
!gradients/loss/Mean_grad/floordivFloorDivgradients/loss/Mean_grad/Prod gradients/loss/Mean_grad/Maximum*
T0*
_output_shapes
: 
x
gradients/loss/Mean_grad/CastCast!gradients/loss/Mean_grad/floordiv*

SrcT0*

DstT0*
_output_shapes
: 
�
 gradients/loss/Mean_grad/truedivRealDivgradients/loss/Mean_grad/Tilegradients/loss/Mean_grad/Cast*
T0*
_output_shapes	
:�
j
gradients/loss/Neg_grad/NegNeg gradients/loss/Mean_grad/truediv*
T0*
_output_shapes	
:�
n
gradients/loss/Sum_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
^
gradients/loss/Sum_grad/SizeConst*
value	B :*
dtype0*
_output_shapes
: 
}
gradients/loss/Sum_grad/addAddloss/Sum/reduction_indicesgradients/loss/Sum_grad/Size*
T0*
_output_shapes
: 
�
gradients/loss/Sum_grad/modFloorModgradients/loss/Sum_grad/addgradients/loss/Sum_grad/Size*
T0*
_output_shapes
: 
b
gradients/loss/Sum_grad/Shape_1Const*
valueB *
dtype0*
_output_shapes
: 
e
#gradients/loss/Sum_grad/range/startConst*
value	B : *
dtype0*
_output_shapes
: 
e
#gradients/loss/Sum_grad/range/deltaConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/rangeRange#gradients/loss/Sum_grad/range/startgradients/loss/Sum_grad/Size#gradients/loss/Sum_grad/range/delta*

Tidx0*
_output_shapes
:
d
"gradients/loss/Sum_grad/Fill/valueConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/FillFillgradients/loss/Sum_grad/Shape_1"gradients/loss/Sum_grad/Fill/value*
T0*
_output_shapes
: 
�
%gradients/loss/Sum_grad/DynamicStitchDynamicStitchgradients/loss/Sum_grad/rangegradients/loss/Sum_grad/modgradients/loss/Sum_grad/Shapegradients/loss/Sum_grad/Fill*
N*
T0*#
_output_shapes
:���������
c
!gradients/loss/Sum_grad/Maximum/yConst*
value	B :*
dtype0*
_output_shapes
: 
�
gradients/loss/Sum_grad/MaximumMaximum%gradients/loss/Sum_grad/DynamicStitch!gradients/loss/Sum_grad/Maximum/y*
T0*#
_output_shapes
:���������
�
 gradients/loss/Sum_grad/floordivFloorDivgradients/loss/Sum_grad/Shapegradients/loss/Sum_grad/Maximum*
T0*
_output_shapes
:
�
gradients/loss/Sum_grad/ReshapeReshapegradients/loss/Neg_grad/Neg%gradients/loss/Sum_grad/DynamicStitch*
T0*
Tshape0*
_output_shapes
:
�
gradients/loss/Sum_grad/TileTilegradients/loss/Sum_grad/Reshape gradients/loss/Sum_grad/floordiv*
T0*

Tmultiples0*
_output_shapes
:	�
n
gradients/loss/mul_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
p
gradients/loss/mul_grad/Shape_1Const*
valueB"�      *
dtype0*
_output_shapes
:
�
-gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/loss/mul_grad/Shapegradients/loss/mul_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
t
gradients/loss/mul_grad/mulMulgradients/loss/Sum_grad/Tileloss/Log*
T0*
_output_shapes
:	�
�
gradients/loss/mul_grad/SumSumgradients/loss/mul_grad/mul-gradients/loss/mul_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/loss/mul_grad/ReshapeReshapegradients/loss/mul_grad/Sumgradients/loss/mul_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
u
gradients/loss/mul_grad/mul_1Mulone_hotgradients/loss/Sum_grad/Tile*
T0*
_output_shapes
:	�
�
gradients/loss/mul_grad/Sum_1Sumgradients/loss/mul_grad/mul_1/gradients/loss/mul_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/loss/mul_grad/Reshape_1Reshapegradients/loss/mul_grad/Sum_1gradients/loss/mul_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:	�
v
(gradients/loss/mul_grad/tuple/group_depsNoOp ^gradients/loss/mul_grad/Reshape"^gradients/loss/mul_grad/Reshape_1
�
0gradients/loss/mul_grad/tuple/control_dependencyIdentitygradients/loss/mul_grad/Reshape)^gradients/loss/mul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/loss/mul_grad/Reshape*
_output_shapes
:	�
�
2gradients/loss/mul_grad/tuple/control_dependency_1Identity!gradients/loss/mul_grad/Reshape_1)^gradients/loss/mul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/loss/mul_grad/Reshape_1*
_output_shapes
:	�
�
"gradients/loss/Log_grad/Reciprocal
Reciprocalsoftmax_activation/Softmax3^gradients/loss/mul_grad/tuple/control_dependency_1*
T0*
_output_shapes
:	�
�
gradients/loss/Log_grad/mulMul2gradients/loss/mul_grad/tuple/control_dependency_1"gradients/loss/Log_grad/Reciprocal*
T0*
_output_shapes
:	�
�
-gradients/softmax_activation/Softmax_grad/mulMulgradients/loss/Log_grad/mulsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
�
?gradients/softmax_activation/Softmax_grad/Sum/reduction_indicesConst*
valueB:*
dtype0*
_output_shapes
:
�
-gradients/softmax_activation/Softmax_grad/SumSum-gradients/softmax_activation/Softmax_grad/mul?gradients/softmax_activation/Softmax_grad/Sum/reduction_indices*
	keep_dims( *
T0*

Tidx0*
_output_shapes	
:�
�
7gradients/softmax_activation/Softmax_grad/Reshape/shapeConst*
valueB"����   *
dtype0*
_output_shapes
:
�
1gradients/softmax_activation/Softmax_grad/ReshapeReshape-gradients/softmax_activation/Softmax_grad/Sum7gradients/softmax_activation/Softmax_grad/Reshape/shape*
T0*
Tshape0*
_output_shapes
:	�
�
-gradients/softmax_activation/Softmax_grad/subSubgradients/loss/Log_grad/mul1gradients/softmax_activation/Softmax_grad/Reshape*
T0*
_output_shapes
:	�
�
/gradients/softmax_activation/Softmax_grad/mul_1Mul-gradients/softmax_activation/Softmax_grad/subsoftmax_activation/Softmax*
T0*
_output_shapes
:	�
l
gradients/FC/add_grad/ShapeConst*
valueB"�      *
dtype0*
_output_shapes
:
g
gradients/FC/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
+gradients/FC/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/FC/add_grad/Shapegradients/FC/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/FC/add_grad/SumSum/gradients/softmax_activation/Softmax_grad/mul_1+gradients/FC/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC/add_grad/ReshapeReshapegradients/FC/add_grad/Sumgradients/FC/add_grad/Shape*
T0*
Tshape0*
_output_shapes
:	�
�
gradients/FC/add_grad/Sum_1Sum/gradients/softmax_activation/Softmax_grad/mul_1-gradients/FC/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
gradients/FC/add_grad/Reshape_1Reshapegradients/FC/add_grad/Sum_1gradients/FC/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
p
&gradients/FC/add_grad/tuple/group_depsNoOp^gradients/FC/add_grad/Reshape ^gradients/FC/add_grad/Reshape_1
�
.gradients/FC/add_grad/tuple/control_dependencyIdentitygradients/FC/add_grad/Reshape'^gradients/FC/add_grad/tuple/group_deps*
T0*0
_class&
$"loc:@gradients/FC/add_grad/Reshape*
_output_shapes
:	�
�
0gradients/FC/add_grad/tuple/control_dependency_1Identitygradients/FC/add_grad/Reshape_1'^gradients/FC/add_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/FC/add_grad/Reshape_1*
_output_shapes
:
�
gradients/FC/MatMul_grad/MatMulMatMul.gradients/FC/add_grad/tuple/control_dependencyFC/Variable/read*
transpose_a( *
transpose_b(*
T0* 
_output_shapes
:
��$
�
!gradients/FC/MatMul_grad/MatMul_1MatMul
FC/Reshape.gradients/FC/add_grad/tuple/control_dependency*
transpose_a(*
transpose_b( *
T0*
_output_shapes
:	�$
w
)gradients/FC/MatMul_grad/tuple/group_depsNoOp ^gradients/FC/MatMul_grad/MatMul"^gradients/FC/MatMul_grad/MatMul_1
�
1gradients/FC/MatMul_grad/tuple/control_dependencyIdentitygradients/FC/MatMul_grad/MatMul*^gradients/FC/MatMul_grad/tuple/group_deps*
T0*2
_class(
&$loc:@gradients/FC/MatMul_grad/MatMul* 
_output_shapes
:
��$
�
3gradients/FC/MatMul_grad/tuple/control_dependency_1Identity!gradients/FC/MatMul_grad/MatMul_1*^gradients/FC/MatMul_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/FC/MatMul_grad/MatMul_1*
_output_shapes
:	�$
t
gradients/FC/Reshape_grad/ShapeConst*!
valueB"�   �      *
dtype0*
_output_shapes
:
�
!gradients/FC/Reshape_grad/ReshapeReshape1gradients/FC/MatMul_grad/tuple/control_dependencygradients/FC/Reshape_grad/Shape*
T0*
Tshape0*$
_output_shapes
:��
�
,gradients/Relu_activation/Relu_grad/ReluGradReluGrad!gradients/FC/Reshape_grad/ReshapeRelu_activation/Relu*
T0*$
_output_shapes
:��
t
gradients/layer1/add_grad/ShapeConst*!
valueB"�   �      *
dtype0*
_output_shapes
:
k
!gradients/layer1/add_grad/Shape_1Const*
valueB:*
dtype0*
_output_shapes
:
�
/gradients/layer1/add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/layer1/add_grad/Shape!gradients/layer1/add_grad/Shape_1*
T0*2
_output_shapes 
:���������:���������
�
gradients/layer1/add_grad/SumSum,gradients/Relu_activation/Relu_grad/ReluGrad/gradients/layer1/add_grad/BroadcastGradientArgs*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
!gradients/layer1/add_grad/ReshapeReshapegradients/layer1/add_grad/Sumgradients/layer1/add_grad/Shape*
T0*
Tshape0*$
_output_shapes
:��
�
gradients/layer1/add_grad/Sum_1Sum,gradients/Relu_activation/Relu_grad/ReluGrad1gradients/layer1/add_grad/BroadcastGradientArgs:1*
	keep_dims( *
T0*

Tidx0*
_output_shapes
:
�
#gradients/layer1/add_grad/Reshape_1Reshapegradients/layer1/add_grad/Sum_1!gradients/layer1/add_grad/Shape_1*
T0*
Tshape0*
_output_shapes
:
|
*gradients/layer1/add_grad/tuple/group_depsNoOp"^gradients/layer1/add_grad/Reshape$^gradients/layer1/add_grad/Reshape_1
�
2gradients/layer1/add_grad/tuple/control_dependencyIdentity!gradients/layer1/add_grad/Reshape+^gradients/layer1/add_grad/tuple/group_deps*
T0*4
_class*
(&loc:@gradients/layer1/add_grad/Reshape*$
_output_shapes
:��
�
4gradients/layer1/add_grad/tuple/control_dependency_1Identity#gradients/layer1/add_grad/Reshape_1+^gradients/layer1/add_grad/tuple/group_deps*
T0*6
_class,
*(loc:@gradients/layer1/add_grad/Reshape_1*
_output_shapes
:
�
*gradients/layer1/conv1d/Squeeze_grad/ShapeConst*%
valueB"�      �      *
dtype0*
_output_shapes
:
�
,gradients/layer1/conv1d/Squeeze_grad/ReshapeReshape2gradients/layer1/add_grad/tuple/control_dependency*gradients/layer1/conv1d/Squeeze_grad/Shape*
T0*
Tshape0*(
_output_shapes
:��
�
)gradients/layer1/conv1d/Conv2D_grad/ShapeConst*%
valueB"�      �      *
dtype0*
_output_shapes
:
�
7gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInputConv2DBackpropInput)gradients/layer1/conv1d/Conv2D_grad/Shapelayer1/conv1d/ExpandDims_1,gradients/layer1/conv1d/Squeeze_grad/Reshape*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*(
_output_shapes
:��
�
+gradients/layer1/conv1d/Conv2D_grad/Shape_1Const*%
valueB"            *
dtype0*
_output_shapes
:
�
8gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilterConv2DBackpropFilterlayer1/conv1d/ExpandDims+gradients/layer1/conv1d/Conv2D_grad/Shape_1,gradients/layer1/conv1d/Squeeze_grad/Reshape*
T0*
strides
*
use_cudnn_on_gpu(*
paddingSAME*
data_formatNHWC*&
_output_shapes
:
�
4gradients/layer1/conv1d/Conv2D_grad/tuple/group_depsNoOp8^gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput9^gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter
�
<gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependencyIdentity7gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput5^gradients/layer1/conv1d/Conv2D_grad/tuple/group_deps*
T0*J
_class@
><loc:@gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropInput*(
_output_shapes
:��
�
>gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependency_1Identity8gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter5^gradients/layer1/conv1d/Conv2D_grad/tuple/group_deps*
T0*K
_classA
?=loc:@gradients/layer1/conv1d/Conv2D_grad/Conv2DBackpropFilter*&
_output_shapes
:
�
/gradients/layer1/conv1d/ExpandDims_1_grad/ShapeConst*!
valueB"         *
dtype0*
_output_shapes
:
�
1gradients/layer1/conv1d/ExpandDims_1_grad/ReshapeReshape>gradients/layer1/conv1d/Conv2D_grad/tuple/control_dependency_1/gradients/layer1/conv1d/ExpandDims_1_grad/Shape*
T0*
Tshape0*"
_output_shapes
:
~
beta1_power/initial_valueConst*
valueB
 *fff?*
dtype0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta1_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta1_power/AssignAssignbeta1_powerbeta1_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
: 
j
beta1_power/readIdentitybeta1_power*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
~
beta2_power/initial_valueConst*
valueB
 *w�?*
dtype0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta2_power
VariableV2*
shape: *
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
: 
�
beta2_power/AssignAssignbeta2_powerbeta2_power/initial_value*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
: 
j
beta2_power/readIdentitybeta2_power*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
&layer1/Variable/Adam/Initializer/zerosConst*!
valueB*    *
dtype0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam/AssignAssignlayer1/Variable/Adam&layer1/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam/readIdentitylayer1/Variable/Adam*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
(layer1/Variable/Adam_1/Initializer/zerosConst*!
valueB*    *
dtype0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1/AssignAssignlayer1/Variable/Adam_1(layer1/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
layer1/Variable/Adam_1/readIdentitylayer1/Variable/Adam_1*
T0*"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
(layer1/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam/AssignAssignlayer1/Variable_1/Adam(layer1/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam/readIdentitylayer1/Variable_1/Adam*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
*layer1/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1/AssignAssignlayer1/Variable_1/Adam_1*layer1/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
layer1/Variable_1/Adam_1/readIdentitylayer1/Variable_1/Adam_1*
T0*$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
"FC/Variable/Adam/Initializer/zerosConst*
valueB	�$*    *
dtype0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam/AssignAssignFC/Variable/Adam"FC/Variable/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
}
FC/Variable/Adam/readIdentityFC/Variable/Adam*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
$FC/Variable/Adam_1/Initializer/zerosConst*
valueB	�$*    *
dtype0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1
VariableV2*
shape:	�$*
dtype0*
	container *
shared_name *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1/AssignAssignFC/Variable/Adam_1$FC/Variable/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
FC/Variable/Adam_1/readIdentityFC/Variable/Adam_1*
T0*
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
$FC/Variable_1/Adam/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam/AssignAssignFC/Variable_1/Adam$FC/Variable_1/Adam/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
~
FC/Variable_1/Adam/readIdentityFC/Variable_1/Adam*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
&FC/Variable_1/Adam_1/Initializer/zerosConst*
valueB*    *
dtype0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1
VariableV2*
shape:*
dtype0*
	container *
shared_name * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1/AssignAssignFC/Variable_1/Adam_1&FC/Variable_1/Adam_1/Initializer/zeros*
T0*
validate_shape(*
use_locking(* 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
FC/Variable_1/Adam_1/readIdentityFC/Variable_1/Adam_1*
T0* 
_class
loc:@FC/Variable_1*
_output_shapes
:
W
Adam/learning_rateConst*
valueB
 *o�:*
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
%Adam/update_layer1/Variable/ApplyAdam	ApplyAdamlayer1/Variablelayer1/Variable/Adamlayer1/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon1gradients/layer1/conv1d/ExpandDims_1_grad/Reshape*
T0*
use_locking( *
use_nesterov( *"
_class
loc:@layer1/Variable*"
_output_shapes
:
�
'Adam/update_layer1/Variable_1/ApplyAdam	ApplyAdamlayer1/Variable_1layer1/Variable_1/Adamlayer1/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon4gradients/layer1/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *$
_class
loc:@layer1/Variable_1*
_output_shapes
:
�
!Adam/update_FC/Variable/ApplyAdam	ApplyAdamFC/VariableFC/Variable/AdamFC/Variable/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon3gradients/FC/MatMul_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( *
_class
loc:@FC/Variable*
_output_shapes
:	�$
�
#Adam/update_FC/Variable_1/ApplyAdam	ApplyAdamFC/Variable_1FC/Variable_1/AdamFC/Variable_1/Adam_1beta1_power/readbeta2_power/readAdam/learning_rate
Adam/beta1
Adam/beta2Adam/epsilon0gradients/FC/add_grad/tuple/control_dependency_1*
T0*
use_locking( *
use_nesterov( * 
_class
loc:@FC/Variable_1*
_output_shapes
:
�
Adam/mulMulbeta1_power/read
Adam/beta1&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
Adam/AssignAssignbeta1_powerAdam/mul*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC/Variable*
_output_shapes
: 
�

Adam/mul_1Mulbeta2_power/read
Adam/beta2&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam*
T0*
_class
loc:@FC/Variable*
_output_shapes
: 
�
Adam/Assign_1Assignbeta2_power
Adam/mul_1*
T0*
validate_shape(*
use_locking( *
_class
loc:@FC/Variable*
_output_shapes
: 
�
AdamNoOp&^Adam/update_layer1/Variable/ApplyAdam(^Adam/update_layer1/Variable_1/ApplyAdam"^Adam/update_FC/Variable/ApplyAdam$^Adam/update_FC/Variable_1/ApplyAdam^Adam/Assign^Adam/Assign_1
[
accuracy/ArgMax/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
accuracy/ArgMaxArgMaxsoftmax_activation/Softmaxaccuracy/ArgMax/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes	
:�
]
accuracy/ArgMax_1/dimensionConst*
value	B :*
dtype0*
_output_shapes
: 
�
accuracy/ArgMax_1ArgMaxone_hotaccuracy/ArgMax_1/dimension*
T0*

Tidx0*
output_type0	*
_output_shapes	
:�
a
accuracy/EqualEqualaccuracy/ArgMaxaccuracy/ArgMax_1*
T0	*
_output_shapes	
:�
Z
accuracy/CastCastaccuracy/Equal*

SrcT0
*

DstT0*
_output_shapes	
:�
X
accuracy/ConstConst*
valueB: *
dtype0*
_output_shapes
:
r
accuracy/MeanMeanaccuracy/Castaccuracy/Const*
	keep_dims( *
T0*

Tidx0*
_output_shapes
: 
h
accuracy/accuracy/tagsConst*"
valueB Baccuracy/accuracy*
dtype0*
_output_shapes
: 
j
accuracy/accuracyScalarSummaryaccuracy/accuracy/tagsaccuracy/Mean*
T0*
_output_shapes
: 
�
Merge/MergeSummaryMergeSummarylayer1/layer1/weightslayer1/layer1/biasesRelu_activation/relu_activationloss/total_lossaccuracy/accuracy*
N*
_output_shapes
: 
�
initNoOp^layer1/Variable/Assign^layer1/Variable_1/Assign^FC/Variable/Assign^FC/Variable_1/Assign^beta1_power/Assign^beta2_power/Assign^layer1/Variable/Adam/Assign^layer1/Variable/Adam_1/Assign^layer1/Variable_1/Adam/Assign ^layer1/Variable_1/Adam_1/Assign^FC/Variable/Adam/Assign^FC/Variable/Adam_1/Assign^FC/Variable_1/Adam/Assign^FC/Variable_1/Adam_1/Assign""�
	variables��
C
layer1/Variable:0layer1/Variable/Assignlayer1/Variable/read:0
I
layer1/Variable_1:0layer1/Variable_1/Assignlayer1/Variable_1/read:0
7
FC/Variable:0FC/Variable/AssignFC/Variable/read:0
=
FC/Variable_1:0FC/Variable_1/AssignFC/Variable_1/read:0
7
beta1_power:0beta1_power/Assignbeta1_power/read:0
7
beta2_power:0beta2_power/Assignbeta2_power/read:0
R
layer1/Variable/Adam:0layer1/Variable/Adam/Assignlayer1/Variable/Adam/read:0
X
layer1/Variable/Adam_1:0layer1/Variable/Adam_1/Assignlayer1/Variable/Adam_1/read:0
X
layer1/Variable_1/Adam:0layer1/Variable_1/Adam/Assignlayer1/Variable_1/Adam/read:0
^
layer1/Variable_1/Adam_1:0layer1/Variable_1/Adam_1/Assignlayer1/Variable_1/Adam_1/read:0
F
FC/Variable/Adam:0FC/Variable/Adam/AssignFC/Variable/Adam/read:0
L
FC/Variable/Adam_1:0FC/Variable/Adam_1/AssignFC/Variable/Adam_1/read:0
L
FC/Variable_1/Adam:0FC/Variable_1/Adam/AssignFC/Variable_1/Adam/read:0
R
FC/Variable_1/Adam_1:0FC/Variable_1/Adam_1/AssignFC/Variable_1/Adam_1/read:0"�
trainable_variables��
C
layer1/Variable:0layer1/Variable/Assignlayer1/Variable/read:0
I
layer1/Variable_1:0layer1/Variable_1/Assignlayer1/Variable_1/read:0
7
FC/Variable:0FC/Variable/AssignFC/Variable/read:0
=
FC/Variable_1:0FC/Variable_1/AssignFC/Variable_1/read:0"�
	summaries~
|
layer1/layer1/weights:0
layer1/layer1/biases:0
!Relu_activation/relu_activation:0
loss/total_loss:0
accuracy/accuracy:0"
train_op

Adam)t�	