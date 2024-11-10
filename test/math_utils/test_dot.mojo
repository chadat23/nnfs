# https://docs.modular.com/mojo/tools/testing
from testing import assert_equal, test

from ...src.math_utils.dot import dot, add

@test
def test_add():
    from testing import assert_equal

    assert_equal(4.5, add(2.25, 2.25))
"""def test_dot():
    var a = Tensor[DType.float64](
        TensorShape(3), 1, 2, 3)
    var b = Tensor[DType.float64](
        TensorShape(3), 2, 3, 4)

    print(dot(a, b))

    print(a + b)
"""

@test
fn test_simple():
    assert_equal(2 + 2, 4)
