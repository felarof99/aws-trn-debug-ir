#loc = loc(unknown)
module @jit__multiply attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<16x2048x16xbf16> loc(unknown), %arg1: tensor<bf16> loc(unknown)) -> tensor<16x2048x16xbf16> {
    %0 = stablehlo.broadcast_in_dim %arg1, dims = [] : (tensor<bf16>) -> tensor<16x2048x16xbf16> loc(#loc22)
    %1 = stablehlo.multiply %arg0, %0 : tensor<16x2048x16xbf16> loc(#loc22)
    return %1 : tensor<16x2048x16xbf16> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc1 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":169:0)
#loc2 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":372:0)
#loc3 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_better_abstract.py":227:0)
#loc4 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":565:0)
#loc5 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":308:0)
#loc6 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":507:0)
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
#loc22 = loc("jit(_multiply)/jit(main)/mul"(#loc21))
