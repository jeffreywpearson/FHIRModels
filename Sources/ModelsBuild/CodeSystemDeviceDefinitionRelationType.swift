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
 The type of relation between devices.
 
 URL: http://hl7.org/fhir/devicedefinition-relationtype
 ValueSet: http://hl7.org/fhir/ValueSet/device-relationtype
 */
public enum DeviceDefinitionRelationType: String, FHIRPrimitiveType {
	
	/// The linked device is a container for the current device.
	case container
	
	/// Gateway.
	case gateway
	
	/// The current device is a previous device and has been replaced by the linked device.
	case previous
	
	/// The current device replaces the linked device.
	case replaces
	
	/// The current device is supported by the linked device.
	case supported
}
