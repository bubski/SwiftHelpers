import XCTest
import Nimble
import SwiftHelpers

private final class String_NSStringBridge: XCTestCase {

	func testNSStringPathWithComponents() {
		let components = ["/", "User", "Files", "file.png"]
		let a = NSString.pathWithComponents(components)
		let b = String(pathComponents: components)
		expect(a) == b
	}

	func testStringByDeletingPathExtension() {
		let fileWithExtension = "file.png"
		let a = NSString(string: fileWithExtension).stringByDeletingPathExtension
		let b = fileWithExtension.stringByDeletingPathExtension
		expect(a) == b
	}

	func testPathComponents() {
		let path = "/User/Files/file.png"
		let a = NSString(string: path).pathComponents
		let b = path.pathComponents
		expect(a) == b
	}

	func testStringByAppendingPathComponent() {
		let path = "/User/Files"
		let a = NSString(string: path).stringByAppendingPathComponent("file.png")
		let b = path.stringByAppendingPathComponent("file.png")
		expect(a) == b
	}
	
}