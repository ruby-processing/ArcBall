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

import java.io.IOException;
import org.jruby.Ruby;
import org.jruby.runtime.load.Library;


/**
 *
 * @author Martin Prout
 */
public class ArcBallLibrary implements Library{
  
    /**
     *
     * @param runtime
     */
    public static void load(final Ruby runtime) {
        Rarcball.createArcBall(runtime);
    } 
    
    /**
     *
     * @param runtime
     * @param wrap
     * @throws java.io.IOException
     */
    @Override
    public void load(final Ruby runtime, boolean wrap) throws IOException {
        load(runtime);
    }  
}
