#https://medium.com/@bennynottonson/optimizing-matrix-multiplication-for-ml-with-mojo-bfc428112360
#https://docs.modular.com/mojo/notebooks/Matmul
from tensor import Tensor, TensorShape

fn _dot_1d(a: Tensor[DType.float64], b: Tensor[DType.float64]) -> Float64:
    var total: Float64 = 0
    for i in range(a.dim(0)):
        total += a[i] * b[i]

    return total

fn dot(a: Tensor[DType.float64], b: Tensor[DType.float64]) -> Tensor[DType.float64]:
    """
    Calculate the dot product of two multi-dimensional lists.
    
    Args:
        list1: First input list
        list2: Second input list of same dimensions as list1
        
    Returns:
        The dot product as a number
        
    Raises:
        ValueError: If lists have different dimensions or are empty
    """

    # Handle single dimensional array
    if a.shape() == 1 && b.shape() == 1:
        assert a.dim(0) == b.dim(0):
            var total: Float64 = 0
            for i in range(a.dim(0)):
                total += a[i] * b[i]

            return total




    var a_shape = a.shape()
    var b_shape = b.shape()

    var a_len = a_shape.num_elements()
    var b_len = b_shape.num_elements()

    var shape = Tensor[DType.float64](

    var output = Tensor[DType.float64](
        TensorShape(

    for i in range(a_len):

def main():
    '''    var inputs = SIMD[DType.float64, 4](1, 2, 3, 2.5)
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

    print(outputs)'''

    var a = Tensor[DType.float64](
        TensorShape(3), 1, 2, 3)
    var b = Tensor[DType.float64](
        TensorShape(3), 2, 3, 4)

    print(dot(a, b))

    print(a + b)
