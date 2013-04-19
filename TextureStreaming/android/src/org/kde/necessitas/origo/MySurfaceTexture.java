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

package org.kde.necessitas.origo;

import android.graphics.SurfaceTexture;
import android.util.Log;

public class MySurfaceTexture extends SurfaceTexture {
	public MySurfaceTexture(int texName) {
		super(texName);
		Log.d(TAG, "SurfaceTexture received!");
		
		setOnFrameAvailableListener(new OnFrameAvailableListener() {
			@Override
			public void onFrameAvailable(SurfaceTexture surfaceTexture) {
				//Log.d(TAG, "Frame received!");				
			}
		});
	}
	
	@Override
	public void updateTexImage() {
		super.updateTexImage();
		//Log.d(TAG, "Updating tex image.");
	}
	
	private static final String TAG = "TextureStreaming";
}
