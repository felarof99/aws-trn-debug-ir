#loc1 = loc("args[0]")
module @jit_convert_element_type attributes {mhlo.num_partitions = 1 : i32, mhlo.num_replicas = 1 : i32} {
  func.func public @main(%arg0: tensor<f32> loc("args[0]")) -> (tensor<f32> {jax.result_info = ""}) {
    return %arg0 : tensor<f32> loc(#loc)
  } loc(#loc)
} loc(#loc)
#loc = loc(unknown)
