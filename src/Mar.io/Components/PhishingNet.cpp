#include "PhishingNet.h"
#include "Structure/BasicBuilder.h"
namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::PhishingNet>;

PhishingNet::PhishingNet() { }

PhishingNet::~PhishingNet() { }

bool PhishingNet::initComponent(const CompMap& variables) { return false; }

void PhishingNet::start() { }

}
