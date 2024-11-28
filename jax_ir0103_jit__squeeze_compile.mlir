#loc1 = loc("a")
module @jit__squeeze attributes {mhlo.num_partitions = 2 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<2048xf32> {mhlo.sharding = "{replicated}"} loc("a")) -> (tensor<2048xf32> {jax.result_info = ""}) {
    return %arg0 : tensor<2048xf32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
