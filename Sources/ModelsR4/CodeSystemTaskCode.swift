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
 Codes indicating the type of action that is expected to be performed
 
 URL: http://hl7.org/fhir/CodeSystem/task-code
 ValueSet: http://hl7.org/fhir/ValueSet/task-code
 */
public enum TaskCode: String, FHIRPrimitiveType {
	
	/// Take what actions are needed to transition the focus resource from 'draft' to 'active' or 'in-progress', as
	/// appropriate for the resource type.  This may involve additing additional content, approval, validation, etc.
	case approve
	
	/// Act to perform the actions defined in the focus request.  This might result in a 'more assertive' request (order
	/// for a plan or proposal, filler order for a placer order), but is intend to eventually result in events.  The
	/// degree of fulfillment requested might be limited by Task.restriction.
	case fulfill
	
	/// Abort, cancel or withdraw the focal resource, as appropriate for the type of resource.
	case abort
	
	/// Replace the focal resource with the specified input resource
	case replace
	
	/// Update the focal resource of the owning system to reflect the content specified as the Task.focus
	case change
	
	/// Transition the focal resource from 'active' or 'in-progress' to 'suspended'
	case suspend
	
	/// Transition the focal resource from 'suspended' to 'active' or 'in-progress' as appropriate for the resource
	/// type.
	case resume
}
