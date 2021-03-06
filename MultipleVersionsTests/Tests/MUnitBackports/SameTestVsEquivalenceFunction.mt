(* Mathematica Test File *)

(******************************************************************************

    This file is part of WWBCommon
    Copyright (C) 2014 Jakub Kuczmarski <Jakub.Kuczmarski@gmail.com>

    WWBCommon is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.

    WWBCommon is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.

    You should have received a copy of the GNU General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>.

******************************************************************************)


(* ::Section:: *)
(*SetUp*)


BeginPackage[
	"TestEnvironment`MUnitBackports`SameTestVsEquivalenceFunction`",
	{"MUnit`"}
]


Get["MultipleVersionsTests`MUnitBackports`"]


(* ::Section:: *)
(*Tests*)


Test[
	2.
	,
	2
	,
	TestID -> "SameTest option"
	,
	SameTest -> Equal
]


Test[
	2.
	,
	2
	,
	TestID -> "EquivalenceFunction option"
	,
	EquivalenceFunction -> Equal
]


(* ::Section:: *)
(*TearDown*)


Unprotect["`*"]
Quiet[Remove["`*"], {Remove::rmnsm}]


EndPackage[]
$ContextPath = Rest[$ContextPath]
