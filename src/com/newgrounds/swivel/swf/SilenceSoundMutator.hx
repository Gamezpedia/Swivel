/*
 * Swivel
 * Copyright (C) 2012-2017, Newgrounds.com, Inc.
 * https://github.com/Herschel/Swivel
 *
 * Swivel is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 * 
 * Swivel is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with Swivel.  If not, see <http://www.gnu.org/licenses/>.
 */

package com.newgrounds.swivel.swf;
import format.swf.Data;

/**
 * ...
 * @author Newgrounds.com, Inc.
 */

class SilenceSoundMutator implements ISWFMutator
{

	public function new() {
	}
	
	public function mutate(swf : SwivelSwf) : Void {
		swf.mapTags(removeSounds);
	}
	
	private function removeSounds(tag : SWFTag) : SWFTag {
		switch(tag) {
			case TStartSound(_,_), TSoundStream(_), TSoundStreamBlock(_):
				return null;
			default:
				return tag;
		}
	}
	
}