///////////////////////////////////////////////////////////
//  Dyspozytor.cs
//  Implementation of the Class Dyspozytor
//  Generated by Enterprise Architect
//  Created on:      05-kwi-2024 21:24:29
//  Original author: Damian W�jcik
///////////////////////////////////////////////////////////

using System;
using System.Collections.Generic;
using System.Text;
using System.IO;



public class Dyspozytor : Osoba {

	private List<Zlecenie> przyj�te zlecenia;
	private Lista zlece� m_Lista zlece�;

	public Dyspozytor(){

	}

	~Dyspozytor(){

	}

	public Lista zlece� Lista zlece�{
		get{
			return m_Lista zlece�;
		}
		set{
			m_Lista zlece� = value;
		}
	}

}//end Dyspozytor