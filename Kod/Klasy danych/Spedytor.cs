///////////////////////////////////////////////////////////
//  Spedytor.cs
//  Implementation of the Class Spedytor
//  Generated by Enterprise Architect
//  Created on:      05-kwi-2024 21:24:30
//  Original author: Damian W�jcik
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Spedytor : Osoba {

	private List<Zlecenie> dodane zlecenia;
	private string firma spedycyjna;
	private Zlecenie m_Zlecenie;

	public Spedytor(){

	}

	~Spedytor(){

	}

	public Zlecenie Zlecenie{
		get{
			return m_Zlecenie;
		}
		set{
			m_Zlecenie = value;
		}
	}

}//end Spedytor