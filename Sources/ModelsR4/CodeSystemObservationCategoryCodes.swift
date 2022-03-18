//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.0.1-9346c8cc45
//  Copyright 2022 Apple Inc.
//
//  Licensed under the Apache License, Version 2.0 (the "License");
//  you may not use this file except in compliance with the License.
//  You may obtain a copy of the License at
//
//    http://www.apache.org/licenses/LICENSE-2.0
//
//  Unless required by applicable law or agreed to in writing, software
//  distributed under the License is distributed on an "AS IS" BASIS,
//  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
//  See the License for the specific language governing permissions and
//  limitations under the License.

import FMCore

/**
 Observation Category codes.
 
 URL: http://terminology.hl7.org/CodeSystem/observation-category
 ValueSet: http://hl7.org/fhir/ValueSet/observation-category
 */
public enum ObservationCategoryCodes: String, FHIRPrimitiveType {
	
	/// Social History Observations define the patient's occupational, personal (e.g., lifestyle), social, familial, and
	/// environmental history and health risk factors that may impact the patient's health.
	case socialHistory = "social-history"
	
	///  Clinical observations measure the body's basic functions such as blood pressure, heart rate, respiratory rate,
	/// height, weight, body mass index, head circumference, pulse oximetry, temperature, and body surface area.
	case vitalSigns = "vital-signs"
	
	/// Observations generated by imaging. The scope includes observations regarding plain x-ray, ultrasound, CT, MRI,
	/// angiography, echocardiography, and nuclear medicine.
	case imaging
	
	/// The results of observations generated by laboratories.  Laboratory results are typically generated by
	/// laboratories providing analytic services in areas such as chemistry, hematology, serology, histology, cytology,
	/// anatomic pathology (including digital pathology), microbiology, and/or virology. These observations are based on
	/// analysis of specimens obtained from the patient and submitted to the laboratory.
	case laboratory
	
	/// Observations generated by other procedures.  This category includes observations resulting from interventional
	/// and non-interventional procedures excluding laboratory and imaging (e.g., cardiology catheterization, endoscopy,
	/// electrodiagnostics, etc.).  Procedure results are typically generated by a clinician to provide more granular
	/// information about component observations made during a procedure.  An example would be when a gastroenterologist
	/// reports the size of a polyp observed during a colonoscopy.
	case procedure
	
	/// Assessment tool/survey instrument observations (e.g., Apgar Scores, Montreal Cognitive Assessment (MoCA)).
	case survey
	
	/// Observations generated by physical exam findings including direct observations made by a clinician and use of
	/// simple instruments and the result of simple maneuvers performed directly on the patient's body.
	case exam
	
	/// Observations generated by non-interventional treatment protocols (e.g. occupational, physical, radiation,
	/// nutritional and medication therapy)
	case therapy
	
	/// Observations that measure or record any bodily activity that enhances or maintains physical fitness and overall
	/// health and wellness.  Not under direct supervision of practitioner such as a physical therapist. (e.g., laps
	/// swum, steps, sleep data)
	case activity
}
