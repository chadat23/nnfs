from tensor import Tensor, TensorShape

def main():
    var inputs = SIMD[DType.float64, 4](1, 2, 3, 2.5)
    var weights = Tensor[DType.float64](
        TensorShape(3, 4),
        0.2, 0.8, -0.5, 1, 
        0.5, -0.91, 0.26, -0.5,
        -0.26, -0.27, 0.17, 0.87
    )
    var biases = SIMD[DType.float64, 4](2, 3, 0.5)

    var outputs = SIMD[DType.float64, 4](0, 0, 0)
    for i in range(weights.dim(0)):
        for j in range(weights.dim(1)):
            #print(i, j, outputs[i], inputs[j],  weights[i, j], inputs[j] * weights[i, j])
            outputs[i] += inputs[j] * weights[i, j]
        outputs[i] += biases[i]

    print(outputs)
