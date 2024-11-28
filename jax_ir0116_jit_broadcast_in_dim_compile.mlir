#loc1 = loc("args[0]")
module @jit_broadcast_in_dim attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<1x32xi32> loc("args[0]")) -> (tensor<1x8x32xi32> {jax.result_info = ""}) {
    %0 = stablehlo.broadcast_in_dim %arg0, dims = [0, 2] : (tensor<1x32xi32>) -> tensor<1x8x32xi32> loc(#loc10)
    return %0 : tensor<1x8x32xi32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
#loc2 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/trainer.py":438:0)
#loc3 = loc("/home/ubuntu/roadrunner-fork/src/felafax/trainer_engine/trainer.py":294:0)
#loc4 = loc("/home/ubuntu/roadrunner-fork/trainers/llama3_alpaca_finetune/pipeline.py":127:0)
#loc5 = loc("_preprocess_batch"(#loc2))
#loc6 = loc("train"(#loc3))
#loc7 = loc("<module>"(#loc4))
#loc8 = loc(callsite(#loc6 at #loc7))
#loc9 = loc(callsite(#loc5 at #loc8))
#loc10 = loc("jit(broadcast_in_dim)/jit(main)/broadcast_in_dim"(#loc9))
