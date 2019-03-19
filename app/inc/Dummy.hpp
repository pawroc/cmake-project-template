#pragma once

namespace app_lib
{
template<class T>
class Dummy
{
public:
    explicit Dummy(T value) : member{value} { }

    const T& getMember() const
    {
        return member;
    }

    T& getMember()
    {
        return member;
    }

private:
    T member{};
};
} // namespace app_lib