#loc = loc(unknown)
#loc1 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":152:0)
#loc2 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":372:0)
#loc3 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_better_abstract.py":227:0)
#loc4 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":565:0)
#loc5 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":452:0)
#loc6 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":513:0)
#loc7 = loc("__init__"(#loc1))
#loc8 = loc("__init__"(#loc2))
#loc9 = loc("__call__"(#loc3))
#loc10 = loc("__call__"(#loc4))
#loc11 = loc("__init__"(#loc5))
#loc12 = loc("__init__"(#loc6))
#loc13 = loc(callsite(#loc12 at #loc8))
#loc14 = loc(callsite(#loc10 at #loc13))
#loc15 = loc(callsite(#loc9 at #loc14))
#loc16 = loc(callsite(#loc8 at #loc15))
#loc17 = loc(callsite(#loc11 at #loc16))
#loc18 = loc(callsite(#loc10 at #loc17))
#loc19 = loc(callsite(#loc9 at #loc18))
#loc20 = loc(callsite(#loc8 at #loc19))
#loc21 = loc(callsite(#loc7 at #loc20))
#loc22 = loc("jit(_normal)/jit(main)/pjit"(#loc21))
#loc23 = loc("jit(_normal)/jit(main)/jit(_normal_real)/pjit"(#loc21))
module @jit__normal attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<16x4xui32> loc(unknown)) -> tensor<16x8192x2048xbf16> {
    %0 = stablehlo.custom_call @Sharding(%arg0) {backend_config = "unspecified_dims=[0]", mhlo.sharding = "{replicated}"} : (tensor<16x4xui32>) -> tensor<16x4xui32> loc(#loc)
    %1 = call @_normal_real(%0) : (tensor<16x4xui32>) -> tensor<16x8192x2048xbf16> loc(#loc22)
    return %1 : tensor<16x8192x2048xbf16> loc(#loc)
  } loc(#loc)
  func.func private @_normal_real(%arg0: tensor<16x4xui32> loc("jit(_normal)/jit(main)/pjit"(#loc21))) -> tensor<16x8192x2048xbf16> {
    %cst = stablehlo.constant dense<-9.960930e-01> : tensor<bf16> loc(#loc22)
    %cst_0 = stablehlo.constant dense<1.000000e+00> : tensor<bf16> loc(#loc22)
    %0 = call @_uniform(%arg0, %cst, %cst_0) : (tensor<16x4xui32>, tensor<bf16>, tensor<bf16>) -> tensor<16x8192x2048xbf16> loc(#loc23)
    %1 = chlo.erf_inv %0 : tensor<16x8192x2048xbf16> -> tensor<16x8192x2048xbf16> loc(#loc24)
    %cst_1 = stablehlo.constant dense<1.414060e+00> : tensor<bf16> loc(#loc22)
    %2 = stablehlo.broadcast_in_dim %cst_1, dims = [] : (tensor<bf16>) -> tensor<16x8192x2048xbf16> loc(#loc25)
    %3 = stablehlo.multiply %2, %1 : tensor<16x8192x2048xbf16> loc(#loc25)
    return %3 : tensor<16x8192x2048xbf16> loc(#loc22)
  } loc(#loc22)
  func.func private @_uniform(%arg0: tensor<16x4xui32> loc("jit(_normal)/jit(main)/jit(_normal_real)/pjit"(#loc21)), %arg1: tensor<bf16> loc("jit(_normal)/jit(main)/jit(_normal_real)/pjit"(#loc21)), %arg2: tensor<bf16> loc("jit(_normal)/jit(main)/jit(_normal_real)/pjit"(#loc21))) -> tensor<16x8192x2048xbf16> {
    %0 = stablehlo.broadcast_in_dim %arg1, dims = [] : (tensor<bf16>) -> tensor<1x1xbf16> loc(#loc26)
    %1 = stablehlo.broadcast_in_dim %arg2, dims = [] : (tensor<bf16>) -> tensor<1x1xbf16> loc(#loc26)
    %2 = stablehlo.slice %arg0 [0:1, 0:4] : (tensor<16x4xui32>) -> tensor<1x4xui32> loc(#loc27)
    %3 = stablehlo.reshape %2 : (tensor<1x4xui32>) -> tensor<4xui32> loc(#loc28)
    %4 = stablehlo.reshape %3 : (tensor<4xui32>) -> tensor<2x2xui32> loc(#loc29)
    %5 = stablehlo.bitcast_convert %4 : (tensor<2x2xui32>) -> tensor<2xui64> loc(#loc29)
    %output_state, %output = stablehlo.rng_bit_generator %5, algorithm =  DEFAULT : (tensor<2xui64>) -> (tensor<2xui64>, tensor<16x8192x2048xui8>) loc(#loc29)
    %6 = stablehlo.bitcast_convert %output_state : (tensor<2xui64>) -> tensor<2x2xui32> loc(#loc29)
    %7 = stablehlo.reshape %6 : (tensor<2x2xui32>) -> tensor<4xui32> loc(#loc29)
    %8 = stablehlo.broadcast_in_dim %7, dims = [1] : (tensor<4xui32>) -> tensor<1x4xui32> loc(#loc26)
    %c = stablehlo.constant dense<0> : tensor<i32> loc(#loc30)
    %c_0 = stablehlo.constant dense<0> : tensor<i32> loc(#loc30)
    %9 = stablehlo.dynamic_update_slice %arg0, %8, %c, %c_0 : (tensor<16x4xui32>, tensor<1x4xui32>, tensor<i32>, tensor<i32>) -> tensor<16x4xui32> loc(#loc31)
    %10 = stablehlo.convert %output : (tensor<16x8192x2048xui8>) -> tensor<16x8192x2048xui16> loc(#loc32)
    %c_1 = stablehlo.constant dense<1> : tensor<ui16> loc(#loc23)
    %11 = stablehlo.broadcast_in_dim %c_1, dims = [] : (tensor<ui16>) -> tensor<16x8192x2048xui16> loc(#loc33)
    %12 = stablehlo.shift_right_logical %10, %11 : tensor<16x8192x2048xui16> loc(#loc33)
    %c_2 = stablehlo.constant dense<16256> : tensor<ui16> loc(#loc23)
    %13 = stablehlo.broadcast_in_dim %c_2, dims = [] : (tensor<ui16>) -> tensor<16x8192x2048xui16> loc(#loc34)
    %14 = stablehlo.or %12, %13 : tensor<16x8192x2048xui16> loc(#loc34)
    %15 = stablehlo.bitcast_convert %14 : (tensor<16x8192x2048xui16>) -> tensor<16x8192x2048xbf16> loc(#loc35)
    %cst = stablehlo.constant dense<1.000000e+00> : tensor<bf16> loc(#loc23)
    %16 = stablehlo.broadcast_in_dim %cst, dims = [] : (tensor<bf16>) -> tensor<16x8192x2048xbf16> loc(#loc36)
    %17 = stablehlo.subtract %15, %16 : tensor<16x8192x2048xbf16> loc(#loc36)
    %18 = stablehlo.subtract %1, %0 : tensor<1x1xbf16> loc(#loc36)
    %19 = stablehlo.broadcast_in_dim %18, dims = [1, 2] : (tensor<1x1xbf16>) -> tensor<1x1x1xbf16> loc(#loc26)
    %20 = stablehlo.broadcast_in_dim %19, dims = [0, 1, 2] : (tensor<1x1x1xbf16>) -> tensor<16x8192x2048xbf16> loc(#loc37)
    %21 = stablehlo.multiply %17, %20 : tensor<16x8192x2048xbf16> loc(#loc37)
    %22 = stablehlo.broadcast_in_dim %0, dims = [1, 2] : (tensor<1x1xbf16>) -> tensor<1x1x1xbf16> loc(#loc26)
    %23 = stablehlo.broadcast_in_dim %22, dims = [0, 1, 2] : (tensor<1x1x1xbf16>) -> tensor<16x8192x2048xbf16> loc(#loc38)
    %24 = stablehlo.add %21, %23 : tensor<16x8192x2048xbf16> loc(#loc38)
    %25 = stablehlo.broadcast_in_dim %0, dims = [1, 2] : (tensor<1x1xbf16>) -> tensor<1x1x1xbf16> loc(#loc26)
    %26 = stablehlo.broadcast_in_dim %25, dims = [0, 1, 2] : (tensor<1x1x1xbf16>) -> tensor<16x8192x2048xbf16> loc(#loc39)
    %27 = stablehlo.maximum %26, %24 : tensor<16x8192x2048xbf16> loc(#loc39)
    return %27 : tensor<16x8192x2048xbf16> loc(#loc23)
  } loc(#loc23)
} loc(#loc)
#loc24 = loc("jit(_normal)/jit(main)/jit(_normal_real)/erf_inv"(#loc21))
#loc25 = loc("jit(_normal)/jit(main)/jit(_normal_real)/mul"(#loc21))
#loc26 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/broadcast_in_dim"(#loc21))
#loc27 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/slice"(#loc21))
#loc28 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/squeeze"(#loc21))
#loc29 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/rng_bit_generator"(#loc21))
#loc30 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/random_bits"(#loc21))
#loc31 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/dynamic_update_slice"(#loc21))
#loc32 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/convert_element_type"(#loc21))
#loc33 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/shift_right_logical"(#loc21))
#loc34 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/or"(#loc21))
#loc35 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/bitcast_convert_type"(#loc21))
#loc36 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/sub"(#loc21))
#loc37 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/mul"(#loc21))
#loc38 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/add"(#loc21))
#loc39 = loc("jit(_normal)/jit(main)/jit(_normal_real)/jit(_uniform)/max"(#loc21))
