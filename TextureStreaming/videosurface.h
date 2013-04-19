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

#ifndef VIDEOSURFACE_H
#define VIDEOSURFACE_H

/*----------------------------------------------------------------------
|    includes
+---------------------------------------------------------------------*/
#include <QDeclarativeItem>
#include <QPainter>
#include <QGLFramebufferObject>
#include <QGLContext>
#include <jni.h>


/*----------------------------------------------------------------------
|    VideoSource class
+---------------------------------------------------------------------*/
class VideoSurface : public QDeclarativeItem
{
   Q_OBJECT
public:
   explicit VideoSurface(QDeclarativeItem *parent = 0);
   void paint(QPainter *, const QStyleOptionGraphicsItem *, QWidget *);

public slots:
   void doUpdate();

private:
   QGLFramebufferObject* m_fbo;
   GLuint mTex;
   jobject mSurfaceTexture;
};

#endif // VIDEOSURFACE_H
