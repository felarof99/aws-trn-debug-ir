#loc1 = loc("args[0]")
module @jit_transpose attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<2x16x2xui32> loc("args[0]")) -> (tensor<16x2x2xui32> {jax.result_info = ""}) {
    %0 = stablehlo.transpose %arg0, dims = [1, 0, 2] : (tensor<2x16x2xui32>) -> tensor<16x2x2xui32> loc(#loc25)
    return %0 : tensor<16x2x2xui32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
#loc2 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":578:0)
#loc3 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":372:0)
#loc4 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_better_abstract.py":227:0)
#loc5 = loc("/opt/aws_neuronx_venv_pytorch_2_1/lib/python3.10/site-packages/equinox/_module.py":565:0)
#loc6 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/models/llama3/jax/model.py":629:0)
#loc7 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/checkpoint.py":235:0)
#loc8 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/trainer.py":126:0)
#loc9 = loc("__init__"(#loc2))
#loc10 = loc("__init__"(#loc3))
#loc11 = loc("__call__"(#loc4))
#loc12 = loc("__call__"(#loc5))
#loc13 = loc("__init__"(#loc6))
#loc14 = loc("load_llama_from_hf"(#loc7))
#loc15 = loc("__init__"(#loc8))
#loc16 = loc(callsite(#loc14 at #loc15))
#loc17 = loc(callsite(#loc12 at #loc16))
#loc18 = loc(callsite(#loc11 at #loc17))
#loc19 = loc(callsite(#loc10 at #loc18))
#loc20 = loc(callsite(#loc13 at #loc19))
#loc21 = loc(callsite(#loc12 at #loc20))
#loc22 = loc(callsite(#loc11 at #loc21))
#loc23 = loc(callsite(#loc10 at #loc22))
#loc24 = loc(callsite(#loc9 at #loc23))
#loc25 = loc("jit(transpose)/jit(main)/transpose"(#loc24))
