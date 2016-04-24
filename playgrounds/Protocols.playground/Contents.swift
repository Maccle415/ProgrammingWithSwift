protocol StringToUpperCase
{
    func toUpper(input: String) -> String
}

class StringClass: StringToUpperCase
{
    /*
    
    If you comment out this protocol function you will get an error
    
    */
    func toUpper(input: String) -> String
    {
        return input.uppercaseString
    }
}

var stringVar: StringClass = StringClass()
var uppcaseString: String = stringVar.toUpper("test string")

print(uppcaseString)



// Testing protocol properties

protocol testProperties
{
    var propOne: Int { get }
    var propTwo: Int { get set }
    
    static var typePropEg: Int { get set }
}

class TestProtocolProperties: testProperties
{
    var propOne: Int = 10
    var propTwo: Int = 15
    
    static var typePropEg: Int = 32
}

var testPropClass: TestProtocolProperties = TestProtocolProperties()

print("Prop One : \(testPropClass.propOne)")
print("Prop Two : \(testPropClass.propTwo)")
print("Type Property : \(TestProtocolProperties.typePropEg)")





















