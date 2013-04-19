/*
 * Author:  Luca Carlon
 * Company: -
 * Date:    02.09.2013
 * Project: TextureStreaming
 *
 * Copyright (c) 2012, 2013 Luca Carlon. All rights reserved.
 *
 * This file is part of TextureStreaming.
 *
 * TextureStreaming is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * TextureStreaming is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with TextureStreaming.  If not, see <http://www.gnu.org/licenses/>.
 */

/*----------------------------------------------------------------------
|    includes
+---------------------------------------------------------------------*/
#include <QApplication>
#include <QDeclarativeItem>
#include "qmlapplicationviewer.h"
#include "videosurface.h"


/*----------------------------------------------------------------------
|    main
+---------------------------------------------------------------------*/
Q_DECL_EXPORT int main(int argc, char *argv[])
{
    QScopedPointer<QApplication> app(createApplication(argc, argv));

    qmlRegisterType<VideoSurface>("com.luke.texturestreaming", 0, 1, "VideoSurface");

    QmlApplicationViewer viewer;
    viewer.setOrientation(QmlApplicationViewer::ScreenOrientationAuto);
    viewer.setMainQmlFile(QLatin1String("qml/TextureStreaming/main.qml"));
    viewer.showExpanded();

    return app->exec();
}
