/*
 * DesignUnits.cpp
 *
 *  Created on: 2014-10-26
 *      Author: Roger
 */

/*
 *
 *  YOU NEED TO ADD THIS TO YOUR .PRO
 *  LIBS += -lbbdevice
 *
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

    // This function uses contains() because the Simulator will not return the exact
    // same values as real devices, so this method will support Simulator if you
    // happen to use it to debug your app.
    if (modelName.contains("Passport"))
        return (12 * units);
    else if ((modelName.contains("Z10")) || (modelName.contains("9982")))
        return (10 * units);
    else if ((modelName.contains("Q10")) || (modelName.contains("Q5")) || (modelName.contains("9983")))
        return (9 * units);
    else if ((modelName.contains("Z30")) || (modelName.contains("Z3")) || (modelName.contains("Classic")))
        return (8 * units);
    else return (10 * units);
}
