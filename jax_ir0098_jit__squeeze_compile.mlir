#loc1 = loc("a")
module @jit__squeeze attributes {mhlo.num_partitions = 2 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<2048x8192xbf16> {mhlo.sharding = "{devices=[2,1]<=[2]}"} loc("a")) -> (tensor<2048x8192xbf16> {jax.result_info = ""}) {
    return %arg0 : tensor<2048x8192xbf16> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
