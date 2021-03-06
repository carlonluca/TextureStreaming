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

import java.io.IOException;

import javax.microedition.khronos.opengles.GL10;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.opengl.GLES11Ext;
import android.opengl.GLES20;
import android.util.Log;
import android.view.Surface;

public class TextureHelper {
	private static final String TAG = "TextureStreaming";
	private static Surface mSurface;
	private static MySurfaceTexture mTexture;
	private static MediaPlayer mp;
	public static Context context = null;
	
        public static SurfaceTexture loadVideoTexture(/* final Context c */ int textureId) {
		mTexture = new MySurfaceTexture(textureId);
		mSurface = new Surface(mTexture);
		mp = new MediaPlayer();
		try {
                        // lcarlon: chenge this to play a different video.
                        mp.setDataSource("/data/big_buck_bunny_1080p_h264_120s.mov");
			mp.prepare();
			mp.start();
		} catch (IllegalArgumentException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (SecurityException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalStateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
                mp.setSurface(mSurface);
		return mTexture;
	}
}
