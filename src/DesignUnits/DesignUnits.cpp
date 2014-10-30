/*
 * DesignUnits.cpp
 *
 *  Created on: 2014-10-26
 *      Author: Roger
 */

#include <src/DesignUnits/DesignUnits.h>

DesignUnits::DesignUnits() :
    QObject(),
    thisDevice(new bb::device::HardwareInfo())
{
}

DesignUnits::~DesignUnits()
{
    thisDevice->deleteLater();
}

int DesignUnits::du(const double& units) {
    QString modelName = thisDevice->modelName();

    if (modelName == "Passport")
        return (12 * units);
    else if ((modelName == "Z10") || (modelName.contains("P'9982")))
        return (10 * units);
    else if ((modelName == "Q10") || (modelName == "Q5") || (modelName.contains("P'9983")))
        return (9 * units);
    else if ((modelName == "Z30") || (modelName == "Z3") || (modelName == "Classic"))
        return (8 * units);
    else return (10 * units);
}
