import Foundation

extension Double {
    var bytes:[UInt8] {
        var value:Double = self
        return withUnsafePointer(&value) {
            Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: sizeof(Double.self)))
        }
    }
    
    init(bytes:[UInt8]) {
        self = bytes.withUnsafeBufferPointer {
            return UnsafePointer<Double>($0.baseAddress).memory
        }
    }
}

extension UInt16 {
    var bytes:[UInt8] {
        var value:UInt16 = self
        return withUnsafePointer(&value) {
            Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: sizeof(UInt16.self)))
        }
    }
    
    init(bytes:[UInt8]) {
        self = bytes.withUnsafeBufferPointer {
            return UnsafePointer<UInt16>($0.baseAddress).memory
        }
    }
}

extension Int32 {
    var bytes:[UInt8] {
        var value:Int32 = self
        return withUnsafePointer(&value) {
            Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: sizeof(Int32.self)))
        }
    }
    
    init(bytes:[UInt8]) {
        self = bytes.withUnsafeBufferPointer {
            return UnsafePointer<Int32>($0.baseAddress).memory
        }
    }
}

extension UInt32 {
    var bytes:[UInt8] {
        var value:UInt32 = self
        return withUnsafePointer(&value) {
            Array(UnsafeBufferPointer(start: UnsafePointer<UInt8>($0), count: sizeof(UInt32.self)))
        }
    }
    
    init(bytes:[UInt8]) {
        self = bytes.withUnsafeBufferPointer {
            return UnsafePointer<UInt32>($0.baseAddress).memory
        }
    }
}