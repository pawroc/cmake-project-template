#include <gtest/gtest.h>

#include "Dummy.hpp"

namespace // anonymous
{
TEST(DummyTest, getMember_shouldReturnValidValue) 
{
    constexpr const int expectedValue{10};
    app_lib::Dummy<int> sut{expectedValue};

    EXPECT_EQ(expectedValue, sut.getMember());
}


int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv); 
    return RUN_ALL_TESTS();
}
} // anonymous namespace
