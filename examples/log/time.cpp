#include "time/time.hpp"
#include <iostream>
#include <string>

int main()
{
    std::string v = get_time_now_str();
    std::cout << "time now is " << v << std::endl;
    int64_t now = get_time_now_milli();
    std::cout << "time now milli is " << now << std::endl;
    return 0;
}
