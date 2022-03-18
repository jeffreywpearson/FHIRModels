//
//  CodeSystems.swift
//  HealthRecords
//
//  Generated from FHIR 4.6.0-048af26
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
 The outcome of the processing.
 
 URL: http://hl7.org/fhir/remittance-outcome
 ValueSet: http://hl7.org/fhir/ValueSet/remittance-outcome
 */
public enum RemittanceOutcome: String, FHIRPrimitiveType {
	
	/// The processing completed without errors.
	case complete
	
	/// The processing identified errors.
	case error
	
	/// No errors have been detected and some of the adjudication has been performed.
	case partial
}
