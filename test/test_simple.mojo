# test_simple.mojo
from testing import assert_equal, test

@test
fn test_simple():
    assert_equal(2 + 2, 4)
