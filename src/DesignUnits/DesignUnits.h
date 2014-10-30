/*
 * DesignUnits.h
 *
 *  Created on: 2014-10-26
 *      Author: Roger
 */

#ifndef DESIGNUNITS_H_
#define DESIGNUNITS_H_

#include <bb/device/HardwareInfo>

class DesignUnits : public QObject
{
    Q_OBJECT
public:
    DesignUnits();
    virtual ~DesignUnits();

    Q_INVOKABLE int du(const double& units);

private:
    bb::device::HardwareInfo* thisDevice;
};

#endif /* DESIGNUNITS_H_ */
