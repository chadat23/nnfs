fn add(a: Float64, b: Float64) -> Float64:
    return a + b

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




    """var a_shape = a.shape()
    var b_shape = b.shape()

    var a_len = a_shape.num_elements()
    var b_len = b_shape.num_elements()

    var shape = Tensor[DType.float64](

    var output = Tensor[DType.float64](
        TensorShape(

    for i in range(a_len):
    """
