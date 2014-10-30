# Config.pri file version 2.0. Auto-generated by IDE. Any changes made by user will be lost!
BASEDIR = $$quote($$_PRO_FILE_PWD_)

device {
    CONFIG(debug, debug|release) {
        profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        } else {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }

    }

    CONFIG(release, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

simulator {
    CONFIG(debug, debug|release) {
        !profile {
            CONFIG += \
                config_pri_assets \
                config_pri_source_group1
        }
    }
}

config_pri_assets {
    OTHER_FILES += \
        $$quote($$BASEDIR/assets/10ppd/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/12ppd/OptionOnlyVisibleForPassport.qml) \
        $$quote($$BASEDIR/assets/12ppd/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/8ppd/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/9ppd/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/KeyboardListener.qml) \
        $$quote($$BASEDIR/assets/OptionOnlyVisibleForPassport.qml) \
        $$quote($$BASEDIR/assets/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/ThemeContainer.qml) \
        $$quote($$BASEDIR/assets/main.qml) \
        $$quote($$BASEDIR/assets/mindw0h0du/KeyboardListener.qml) \
        $$quote($$BASEDIR/assets/mindw0h0du/SystemToastQML.qml) \
        $$quote($$BASEDIR/assets/mindw0h0du/ThemeContainer.qml)
}

config_pri_source_group1 {
    SOURCES += \
        $$quote($$BASEDIR/src/DesignUnits/DesignUnits.cpp) \
        $$quote($$BASEDIR/src/Settings/Settings.cpp) \
        $$quote($$BASEDIR/src/applicationui.cpp) \
        $$quote($$BASEDIR/src/main.cpp)

    HEADERS += \
        $$quote($$BASEDIR/src/DesignUnits/DesignUnits.h) \
        $$quote($$BASEDIR/src/Settings/Settings.h) \
        $$quote($$BASEDIR/src/applicationui.hpp)
}

CONFIG += precompile_header

PRECOMPILED_HEADER = $$quote($$BASEDIR/precompiled.h)

lupdate_inclusion {
    SOURCES += \
        $$quote($$BASEDIR/../src/*.c) \
        $$quote($$BASEDIR/../src/*.c++) \
        $$quote($$BASEDIR/../src/*.cc) \
        $$quote($$BASEDIR/../src/*.cpp) \
        $$quote($$BASEDIR/../src/*.cxx) \
        $$quote($$BASEDIR/../src/DesignUnits/*.c) \
        $$quote($$BASEDIR/../src/DesignUnits/*.c++) \
        $$quote($$BASEDIR/../src/DesignUnits/*.cc) \
        $$quote($$BASEDIR/../src/DesignUnits/*.cpp) \
        $$quote($$BASEDIR/../src/DesignUnits/*.cxx) \
        $$quote($$BASEDIR/../src/Settings/*.c) \
        $$quote($$BASEDIR/../src/Settings/*.c++) \
        $$quote($$BASEDIR/../src/Settings/*.cc) \
        $$quote($$BASEDIR/../src/Settings/*.cpp) \
        $$quote($$BASEDIR/../src/Settings/*.cxx) \
        $$quote($$BASEDIR/../assets/*.qml) \
        $$quote($$BASEDIR/../assets/*.js) \
        $$quote($$BASEDIR/../assets/*.qs) \
        $$quote($$BASEDIR/../assets/10ppd/*.qml) \
        $$quote($$BASEDIR/../assets/10ppd/*.js) \
        $$quote($$BASEDIR/../assets/10ppd/*.qs) \
        $$quote($$BASEDIR/../assets/12ppd/*.qml) \
        $$quote($$BASEDIR/../assets/12ppd/*.js) \
        $$quote($$BASEDIR/../assets/12ppd/*.qs) \
        $$quote($$BASEDIR/../assets/8ppd/*.qml) \
        $$quote($$BASEDIR/../assets/8ppd/*.js) \
        $$quote($$BASEDIR/../assets/8ppd/*.qs) \
        $$quote($$BASEDIR/../assets/9ppd/*.qml) \
        $$quote($$BASEDIR/../assets/9ppd/*.js) \
        $$quote($$BASEDIR/../assets/9ppd/*.qs) \
        $$quote($$BASEDIR/../assets/mindw0h0du/*.qml) \
        $$quote($$BASEDIR/../assets/mindw0h0du/*.js) \
        $$quote($$BASEDIR/../assets/mindw0h0du/*.qs)

    HEADERS += \
        $$quote($$BASEDIR/../src/*.h) \
        $$quote($$BASEDIR/../src/*.h++) \
        $$quote($$BASEDIR/../src/*.hh) \
        $$quote($$BASEDIR/../src/*.hpp) \
        $$quote($$BASEDIR/../src/*.hxx)
}

TRANSLATIONS = $$quote($${TARGET}.ts)