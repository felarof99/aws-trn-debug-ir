#loc1 = loc("self")
module @jit__multi_slice attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<8192x2048xbf16> loc("self")) -> (tensor<4096x2048xbf16> {jax.result_info = "[0]"}, tensor<4096x2048xbf16> {jax.result_info = "[1]"}) {
    %0 = stablehlo.slice %arg0 [0:4096, 0:2048] : (tensor<8192x2048xbf16>) -> tensor<4096x2048xbf16> loc(#loc16)
    %1 = stablehlo.slice %arg0 [4096:8192, 0:2048] : (tensor<8192x2048xbf16>) -> tensor<4096x2048xbf16> loc(#loc16)
    return %0, %1 : tensor<4096x2048xbf16>, tensor<4096x2048xbf16> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
#loc2 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/checkpoint.py":194:0)
#loc3 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/checkpoint.py":279:0)
#loc4 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/checkpoint.py":332:0)
#loc5 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/trainer.py":126:0)
#loc6 = loc("/home/ubuntu/roadrunner-fork/trainers/llama3_alpaca_finetune/pipeline.py":119:0)
#loc7 = loc("_torch_to_jax"(#loc2))
#loc8 = loc("_copy_weights"(#loc3))
#loc9 = loc("load_llama_from_hf"(#loc4))
#loc10 = loc("__init__"(#loc5))
#loc11 = loc("<module>"(#loc6))
#loc12 = loc(callsite(#loc10 at #loc11))
#loc13 = loc(callsite(#loc9 at #loc12))
#loc14 = loc(callsite(#loc8 at #loc13))
#loc15 = loc(callsite(#loc7 at #loc14))
#loc16 = loc("jit(_multi_slice)/jit(main)/slice"(#loc15))
