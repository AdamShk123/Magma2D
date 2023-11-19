#include "../include/main.hpp"

int main(int argc, char* argv[])
{
    fmt::println("Hello, World!");

    VulkanEngine engine;

    engine.init();

    engine.run();

    engine.close();

    return 0;
}
