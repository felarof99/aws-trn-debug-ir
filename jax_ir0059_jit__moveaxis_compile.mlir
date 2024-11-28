#loc1 = loc("a")
module @jit__moveaxis attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<16x2048x8192xbf16> loc("a")) -> (tensor<16x2048x8192xbf16> {jax.result_info = ""}) {
    return %arg0 : tensor<16x2048x8192xbf16> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
