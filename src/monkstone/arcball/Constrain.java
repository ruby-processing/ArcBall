/**
 * The purpose of this library is to allow users to use ArcBall in processing
 * sketches Copyright (C) 2016 Martin Prout
 *
 *  This program is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  This program is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU General Public License for more details.
 * 
 *  You should have received a copy of the GNU General Public License
 *  along with this program.  If not, see http://www.gnu.org/licenses.
 */

package monkstone.arcball;

/**
 *
 * @author Martin Prout
 */
public enum Constrain {

    /**
     * Used to constrain arc-ball rotation about X axis
     */
    
    XAXIS(0),
    /**
     * Used to constrain arc-ball rotation about Y axis
     */
    YAXIS(1),
    /**
     * Used to constrain arc-ball rotation about Z axis
     */
    ZAXIS(2),
    /**
     * Used for default no constrain arc-ball about any axis
     */
    FREE(-1);
    private final int index;

    Constrain(int idx) {
        this.index = idx;
    }

    /**
     * Numeric value of constrained axis
     * @return index int
     */
    public int index() {
        return index;
    }
}
