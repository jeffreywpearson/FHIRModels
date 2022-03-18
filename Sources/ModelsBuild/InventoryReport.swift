//
//  InventoryReport.swift
//  HealthSoftware
//
//  Generated from FHIR 4.6.0-048af26 (http://hl7.org/fhir/StructureDefinition/InventoryReport)
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
 A report of inventory or stock items.
 */
open class InventoryReport: DomainResource {
	
	override open class var resourceType: ResourceType { return .inventoryReport }
	
	/// Identifiers for the report
	public var identifier: [Identifier]?
	
	/// The status of the inventory check or notification - whether this is draft (e.g. the report is still pending some
	/// updates) or active.
	public var status: FHIRPrimitive<InventoryReportStatus>
	
	/// Whether the report is about the current inventory count (snapshot) or a differential change in inventory
	/// (change).
	public var countType: FHIRPrimitive<InventoryCountType>
	
	/// addition | subtraction
	public var operationType: CodeableConcept?
	
	/// The reason for this count - regular count, ad-hoc count, new arrivals, etc.
	public var operationTypeReason: CodeableConcept?
	
	/// When the report has been submitted
	public var reportedDateTime: FHIRPrimitive<DateTime>
	
	/// Who submits the report
	public var reporter: Reference?
	
	/// The period the report refers to
	public var reportingPeriod: Period?
	
	/// An inventory listing section (grouped by any of the attributes)
	public var inventoryListing: [InventoryReportInventoryListing]?
	
	/// A note associated with the InventoryReport
	public var note: Annotation?
	
	/// Designated initializer taking all required properties
	public init(countType: FHIRPrimitive<InventoryCountType>, reportedDateTime: FHIRPrimitive<DateTime>, status: FHIRPrimitive<InventoryReportStatus>) {
		self.countType = countType
		self.reportedDateTime = reportedDateTime
		self.status = status
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		contained: [ResourceProxy]? = nil,
		countType: FHIRPrimitive<InventoryCountType>,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		identifier: [Identifier]? = nil,
		implicitRules: FHIRPrimitive<FHIRURI>? = nil,
		inventoryListing: [InventoryReportInventoryListing]? = nil,
		language: FHIRPrimitive<FHIRString>? = nil,
		meta: Meta? = nil,
		modifierExtension: [Extension]? = nil,
		note: Annotation? = nil,
		operationType: CodeableConcept? = nil,
		operationTypeReason: CodeableConcept? = nil,
		reportedDateTime: FHIRPrimitive<DateTime>,
		reporter: Reference? = nil,
		reportingPeriod: Period? = nil,
		status: FHIRPrimitive<InventoryReportStatus>,
		text: Narrative? = nil
	) {
		self.init(countType: countType, reportedDateTime: reportedDateTime, status: status)
		self.contained = contained
		self.`extension` = `extension`
		self.id = id
		self.identifier = identifier
		self.implicitRules = implicitRules
		self.inventoryListing = inventoryListing
		self.language = language
		self.meta = meta
		self.modifierExtension = modifierExtension
		self.note = note
		self.operationType = operationType
		self.operationTypeReason = operationTypeReason
		self.reporter = reporter
		self.reportingPeriod = reportingPeriod
		self.text = text
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countType; case _countType
		case identifier
		case inventoryListing
		case note
		case operationType
		case operationTypeReason
		case reportedDateTime; case _reportedDateTime
		case reporter
		case reportingPeriod
		case status; case _status
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countType = try FHIRPrimitive<InventoryCountType>(from: _container, forKey: .countType, auxiliaryKey: ._countType)
		self.identifier = try [Identifier](from: _container, forKeyIfPresent: .identifier)
		self.inventoryListing = try [InventoryReportInventoryListing](from: _container, forKeyIfPresent: .inventoryListing)
		self.note = try Annotation(from: _container, forKeyIfPresent: .note)
		self.operationType = try CodeableConcept(from: _container, forKeyIfPresent: .operationType)
		self.operationTypeReason = try CodeableConcept(from: _container, forKeyIfPresent: .operationTypeReason)
		self.reportedDateTime = try FHIRPrimitive<DateTime>(from: _container, forKey: .reportedDateTime, auxiliaryKey: ._reportedDateTime)
		self.reporter = try Reference(from: _container, forKeyIfPresent: .reporter)
		self.reportingPeriod = try Period(from: _container, forKeyIfPresent: .reportingPeriod)
		self.status = try FHIRPrimitive<InventoryReportStatus>(from: _container, forKey: .status, auxiliaryKey: ._status)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countType.encode(on: &_container, forKey: .countType, auxiliaryKey: ._countType)
		try identifier?.encode(on: &_container, forKey: .identifier)
		try inventoryListing?.encode(on: &_container, forKey: .inventoryListing)
		try note?.encode(on: &_container, forKey: .note)
		try operationType?.encode(on: &_container, forKey: .operationType)
		try operationTypeReason?.encode(on: &_container, forKey: .operationTypeReason)
		try reportedDateTime.encode(on: &_container, forKey: .reportedDateTime, auxiliaryKey: ._reportedDateTime)
		try reporter?.encode(on: &_container, forKey: .reporter)
		try reportingPeriod?.encode(on: &_container, forKey: .reportingPeriod)
		try status.encode(on: &_container, forKey: .status, auxiliaryKey: ._status)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryReport else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return countType == _other.countType
		    && identifier == _other.identifier
		    && inventoryListing == _other.inventoryListing
		    && note == _other.note
		    && operationType == _other.operationType
		    && operationTypeReason == _other.operationTypeReason
		    && reportedDateTime == _other.reportedDateTime
		    && reporter == _other.reporter
		    && reportingPeriod == _other.reportingPeriod
		    && status == _other.status
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countType)
		hasher.combine(identifier)
		hasher.combine(inventoryListing)
		hasher.combine(note)
		hasher.combine(operationType)
		hasher.combine(operationTypeReason)
		hasher.combine(reportedDateTime)
		hasher.combine(reporter)
		hasher.combine(reportingPeriod)
		hasher.combine(status)
	}
}

/**
 An inventory listing section (grouped by any of the attributes).
 */
open class InventoryReportInventoryListing: BackboneElement {
	
	/// Location of the inventory items
	public var location: Reference?
	
	/// The status of the items
	public var itemStatus: CodeableConcept?
	
	/// The date and time when the items were counted
	public var countingDateTime: FHIRPrimitive<DateTime>?
	
	/// The item or items in this listing
	public var items: [InventoryReportInventoryListingItems]?
	
	/// Designated initializer taking all required properties
	override public init() {
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		countingDateTime: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		itemStatus: CodeableConcept? = nil,
		items: [InventoryReportInventoryListingItems]? = nil,
		location: Reference? = nil,
		modifierExtension: [Extension]? = nil
	) {
		self.init()
		self.countingDateTime = countingDateTime
		self.`extension` = `extension`
		self.id = id
		self.itemStatus = itemStatus
		self.items = items
		self.location = location
		self.modifierExtension = modifierExtension
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case countingDateTime; case _countingDateTime
		case itemStatus
		case items
		case location
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.countingDateTime = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .countingDateTime, auxiliaryKey: ._countingDateTime)
		self.itemStatus = try CodeableConcept(from: _container, forKeyIfPresent: .itemStatus)
		self.items = try [InventoryReportInventoryListingItems](from: _container, forKeyIfPresent: .items)
		self.location = try Reference(from: _container, forKeyIfPresent: .location)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try countingDateTime?.encode(on: &_container, forKey: .countingDateTime, auxiliaryKey: ._countingDateTime)
		try itemStatus?.encode(on: &_container, forKey: .itemStatus)
		try items?.encode(on: &_container, forKey: .items)
		try location?.encode(on: &_container, forKey: .location)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryReportInventoryListing else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return countingDateTime == _other.countingDateTime
		    && itemStatus == _other.itemStatus
		    && items == _other.items
		    && location == _other.location
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(countingDateTime)
		hasher.combine(itemStatus)
		hasher.combine(items)
		hasher.combine(location)
	}
}

/**
 The item or items in this listing.
 */
open class InventoryReportInventoryListingItems: BackboneElement {
	
	/// The category of the item or items
	public var category: CodeableConcept?
	
	/// The quantity of the item or items
	public var quantity: Quantity
	
	/// The code or reference to the item type
	public var item: CodeableReference
	
	/// The lot number of the item or items
	public var lot: FHIRPrimitive<FHIRString>?
	
	/// The serial number of the item
	public var serial: FHIRPrimitive<FHIRString>?
	
	/// The expiry date of the item or items
	public var expiry: FHIRPrimitive<DateTime>?
	
	/// The manufacturingDate of the item or items
	public var manufacturingDate: FHIRPrimitive<DateTime>?
	
	/// Designated initializer taking all required properties
	public init(item: CodeableReference, quantity: Quantity) {
		self.item = item
		self.quantity = quantity
		super.init()
	}
	
	/// Convenience initializer
	public convenience init(
		category: CodeableConcept? = nil,
		expiry: FHIRPrimitive<DateTime>? = nil,
		`extension`: [Extension]? = nil,
		id: FHIRPrimitive<FHIRString>? = nil,
		item: CodeableReference,
		lot: FHIRPrimitive<FHIRString>? = nil,
		manufacturingDate: FHIRPrimitive<DateTime>? = nil,
		modifierExtension: [Extension]? = nil,
		quantity: Quantity,
		serial: FHIRPrimitive<FHIRString>? = nil
	) {
		self.init(item: item, quantity: quantity)
		self.category = category
		self.expiry = expiry
		self.`extension` = `extension`
		self.id = id
		self.lot = lot
		self.manufacturingDate = manufacturingDate
		self.modifierExtension = modifierExtension
		self.serial = serial
	}
	
	// MARK: - Codable
	
	private enum CodingKeys: String, CodingKey {
		case category
		case expiry; case _expiry
		case item
		case lot; case _lot
		case manufacturingDate; case _manufacturingDate
		case quantity
		case serial; case _serial
	}
	
	/// Initializer for Decodable
	public required init(from decoder: Decoder) throws {
		let _container = try decoder.container(keyedBy: CodingKeys.self)
		
		// Decode all our properties
		self.category = try CodeableConcept(from: _container, forKeyIfPresent: .category)
		self.expiry = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .expiry, auxiliaryKey: ._expiry)
		self.item = try CodeableReference(from: _container, forKey: .item)
		self.lot = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .lot, auxiliaryKey: ._lot)
		self.manufacturingDate = try FHIRPrimitive<DateTime>(from: _container, forKeyIfPresent: .manufacturingDate, auxiliaryKey: ._manufacturingDate)
		self.quantity = try Quantity(from: _container, forKey: .quantity)
		self.serial = try FHIRPrimitive<FHIRString>(from: _container, forKeyIfPresent: .serial, auxiliaryKey: ._serial)
		try super.init(from: decoder)
	}
	
	/// Encodable
	public override func encode(to encoder: Encoder) throws {
		var _container = encoder.container(keyedBy: CodingKeys.self)
		
		// Encode all our properties
		try category?.encode(on: &_container, forKey: .category)
		try expiry?.encode(on: &_container, forKey: .expiry, auxiliaryKey: ._expiry)
		try item.encode(on: &_container, forKey: .item)
		try lot?.encode(on: &_container, forKey: .lot, auxiliaryKey: ._lot)
		try manufacturingDate?.encode(on: &_container, forKey: .manufacturingDate, auxiliaryKey: ._manufacturingDate)
		try quantity.encode(on: &_container, forKey: .quantity)
		try serial?.encode(on: &_container, forKey: .serial, auxiliaryKey: ._serial)
		try super.encode(to: encoder)
	}
	
	// MARK: - Equatable & Hashable
	
	public override func isEqual(to _other: Any?) -> Bool {
		guard let _other = _other as? InventoryReportInventoryListingItems else {
			return false
		}
		guard super.isEqual(to: _other) else {
			return false
		}
		return category == _other.category
		    && expiry == _other.expiry
		    && item == _other.item
		    && lot == _other.lot
		    && manufacturingDate == _other.manufacturingDate
		    && quantity == _other.quantity
		    && serial == _other.serial
	}
	
	public override func hash(into hasher: inout Hasher) {
		super.hash(into: &hasher)
		hasher.combine(category)
		hasher.combine(expiry)
		hasher.combine(item)
		hasher.combine(lot)
		hasher.combine(manufacturingDate)
		hasher.combine(quantity)
		hasher.combine(serial)
	}
}
