package main

import "fmt"

// --- TEIL 1: Architektur-Veranschaulichung (Klassen & Vererbung) ---

/*
Ein 'Stabilisator' ist die Basis-Struktur (Eltern-Klasse).

	Er definiert, dass jede Maschine eine Kennung und einen Status hat.
*/
type Stabilisator struct {
	Kennung  string
	IstAktiv bool
}

/*
Der 'GigaStabilisator' ist eine spezialisierte Form (Kind-Klasse).

	Er "erbt" durch Embedding alle Eigenschaften des einfachen Stabilisators.
*/
type GigaStabilisator struct {
	Stabilisator       // Vererbung: Übernimmt Kennung und IstAktiv
	MaximaleLast   int // Spezifische Eigenschaft für das Riesen-Modell
	AktuellerDruck float64
}

func main() {
	fmt.Println("=== INITIALISIERUNG: GIGA-STABILISATOR KERN ===")

	// --- TEIL 2: Initialisierung der Objekte ---
	// Hier erstellen (initialisieren) wir den Giga-Stabilisator vollständig.
	herzStueck := GigaStabilisator{
		Stabilisator: Stabilisator{
			Kennung:  "GS-ALPHA-9",
			IstAktiv: true,
		},
		MaximaleLast:   5000,
		AktuellerDruck: 420.5,
	}

	// Lokale Variablen für die Steuerung
	var energie int = 85
	var modus string = "Aufstieg" // Optionen: "Aufstieg", "Standby", "Notstopp"

	// --- TEIL 3: IHRE IMPLEMENTIERUNG ---

	// AUFGABE A: Sicherheits-Check (If-Else)
	// Prüfen Sie, ob der 'AktuellerDruck' des herzStuecks kleiner als 500.0 ist
	// UND ob 'energie' grösser als 20 ist.
	if herzStueck.AktuellerDruck < 500.0 && energie > 20 {
		fmt.Println("[STATUS]: Sicherheitsprotokolle grün. Bereit für Operation.")

		// AUFGABE B: Modus-Steuerung (Switch)
		switch modus {
		case "Aufstieg":
			fmt.Println("Die Stadt erhebt sich majestätisch!")
		case "Standby":
			fmt.Println("System im Leerlauf. Warte auf Befehl.")
		default:
			fmt.Println("Warnung: Unbekannter Modus!")
		}

	} else {
		// AUFGABE C: Fehlerbehandlung
		fmt.Println("[WARNUNG]: Bedingungen nicht erfüllt. Aufstieg abgebrochen.")
	}

	// --- TEIL 4: Abschlussbericht ---
	fmt.Printf("\n--- Protokoll für Einheit %s abgeschlossen ---\n", herzStueck.Kennung)
}
