/*
   Copyright (C) 2011-2013 RIADVICE <ghazi.triki@riadvice.tn>

   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.

   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
   GNU General Public License for more details.

   You should have received a copy of the GNU General Public License
   along with this program. If not, see <http://www.gnu.org/licenses/>.
 */
package com.riadvice.qurani.converters
{

    import com.riadvice.qurani.Sura;
    import com.riadvice.qurani.quran_internal;

    import flash.utils.Dictionary;

    use namespace quran_internal;

    public class SuraConverter
    {
        public function convertArray( resultArray : Array ) : Array
        {
            var suraObj : Object;
            var sura : Sura;
            var suraIdByName : Dictionary = new Dictionary(true);
            var suraInfoById : Dictionary = new Dictionary(true);
            for each (suraObj in resultArray)
            {
                sura = new Sura();
                sura.orderInMushaf = suraObj.rowid;
                sura.makkia = suraObj.makki;
                sura.name = suraObj.sura_name;
                sura.startingAyaId = suraObj.starting_row;
                // TODO : add other_names and comment
                suraIdByName[sura.name] = sura;
                suraInfoById[sura.orderInMushaf] = sura;
            }
            return [suraIdByName, suraInfoById];
        }
    }
}
