/*
   Copyright (C) 2011-2013 Ghazi Triki <ghazi.nocturne@gmail.com>

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
package com.alkiteb.qurani
{
    import flash.events.EventDispatcher;

    use namespace quran_internal;

    [Bindable]
    public class Sura extends EventDispatcher
    {
        public var name : String;

        public var basmalah : Aya;

        public var makkia : Boolean;

        public var orderInMushaf : int;

        public var ayat : Array;

        quran_internal var startingAyaId : int;

    }
}
