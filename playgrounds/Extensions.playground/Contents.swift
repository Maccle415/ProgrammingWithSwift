/*

Normal extension just extending the Double type

*/

extension Double {
    
    // Computed properties
    var fahrenheitToCelsius: Double
    {
        let converted: Double = (self - 32) / 1.8
        return converted
    }
    
    var celsiusToFahrenheit: Double
    {
        let converted: Double = (self * 1.8) + 32
        return converted
    }
}

print("34,5 degress Celsius is \(34.5.celsiusToFahrenheit) Fahrenheit")
print("98,2 degress Fahrenheit is \(98.2.fahrenheitToCelsius) Celsius")

/*

Class extension

*/

class TestExtensionClass
{
    var testInt: Int = 123
    var testString: String = "The int value is : "
}

extension TestExtensionClass {
    var outputString: String {
        let output: String = testString + String(testInt)
        return output
    }
}

var extClass = TestExtensionClass()
print("Output string from class extension : \(extClass.outputString)")

/*

Struct extension

*/

struct TestExtensionStruct
{
    var testInt: Int = 10
    var testString: String = "The int value is : "
}

extension TestExtensionStruct {
    var outputString: String {
        let output: String = testString + String(testInt)
        return output
    }
}

var extStruct: TestExtensionStruct = TestExtensionStruct()

print("Output string from struct extension : \(extStruct.outputString)")


/*

Notes:
---------------------------------
- Computed properties always need to return the same type as the type that is being extended

*/
