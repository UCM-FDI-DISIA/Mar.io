#include "MarIo.h"
#include "Structure/ComponentBuilder.h"
#include "defs.h"

JUEGO_API void function(const char* var)
{
    std::cout << "I love Mar.io" << var << "<3\n";
}

JUEGO_API FactoryInfo** getComponentFactories(int& count)
{
    count = 0;
    FactoryInfo** factories = new FactoryInfo*[count];
    return factories;
}