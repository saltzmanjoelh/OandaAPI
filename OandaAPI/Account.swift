//
//  SubAccount.swift
//  Forex Prediction
//
//  Created by Marcus Florentin on 27/11/2018.
//  Copyright © 2018 Marcus Florentin. All rights reserved.
//

import Foundation

struct SubAccount : Codable {

	/// The Oanda id of the account
	let id : String

	/// The tags related to the account
	let tags : [String]
}

struct Account : Codable {

	/// The Oanda id of the account
	let id : String

	/// The home currency of the Account
	let currency : String

	/// The current balance of the Account.
	let balance : String

	/// ID of the user that created the Account.
	let createdByUserID : Int

	/// The date/time when the Account was created.
	let createdTime : Date

	/// The current guaranteed Stop Loss Order mode of the Account.
	let guaranteedStopLossOrderMode : StopLossOrderMode

	/// The total profit/loss realized over the lifetime of the Account
	let pl : String

	/// The date/time that the Account’s resettablePL was last reset.
	let resettablePL : String

	/// The total amount of commission paid over the lifetime of the Account.
	let financing : String

	/// The total amount of commission paid over the lifetime of the Account.
	let commission : String

	/// The total amount of fees charged over the lifetime of the Account for the execution of guaranteed Stop Loss Orders.
	let guaranteedExecutionFees : String

	/// Client-provided margin rate override for the Account.
	/// The effective margin rate of the Account is the lesser of this value and the OANDA margin rate for the Account’s division.
	/// This value is only provided if a margin rate override exists for the Account.
	let marginRate : Double

	/// The date/time when the Account entered a margin call state.
	/// Only provided if the Account is in a margin call.
	let marginCallEnterTime : Date

	/// The number of times that the Account’s current margin call was extended.
	let marginCallExtensionCount : Int

	///  The date/time of the Account’s last margin call extension.
	let lastMarginCallExtensionTime : Date

	/// The number of Trades currently open in the Account.
	let openTradeCount : Int

	/// The number of Positions currently open in the Account.
	let openPositionCount : Int

	/// The number of Orders currently pending in the Account.
	let pendingOrderCount : Int

	/// Flag indicating that the Account has hedging enabled.
	let hedgingEnabled : Bool

	/// The total unrealized profit/loss for all Trades currently open in the Account
	let unrealizedPL : String

	/// The net asset value of the Account. Equal to Account balance + unrealizedPL.
	let NAV : String

	/// Margin currently used for the Account.
	let marginUsed : String

	/// Margin available for Account currency.
	let marginAvailable : String

	/// The value of the Account’s open positions represented in the Account’s home currency.
	let positionValue : String

	/// The Account’s margin closeout unrealized PL.
	let marginCloseoutUnrealizedPL : String

	/// The Account’s margin closeout NAV.
	let marginCloseoutNAV : String

	/// The Account’s margin closeout margin used.
	let marginCloseoutMarginUsed : String

	/// The Account’s margin closeout percentage.
	/// When this value is 1.0 or above the Account is in a margin closeout situation.
	let marginCloseoutPercent : Double

	/// The value of the Account’s open positions as used for margin closeout calculations represented in the Account’s home currency.
	let marginCloseoutPositionValue : Double

	/// The current WithdrawalLimit for the account which will be zero or a positive value indicating how much can be withdrawn from the account.
	let withdrawalLimit : String

	/// The Account’s margin call margin used.
	let marginCallMarginUsed : String

	/// The Account’s margin call percentage.
	/// When this value is 1.0 or above the Account is in a margin call situation.
	let marginCallPercent : Double

	/// The ID of the last Transaction created for the Account.
	let lastTransactionID : Int

	/// The details of the Trades currently open in the Account.
	let trades : [String]
	// TODO: Trade Structure

	/// The details all Account Positions.
	let positions : [String]
	// TODO: Position Structure

	/// The details of the Orders currently pending in the Account.
	let orders : [String]
	// TODO: Position Structure
}
