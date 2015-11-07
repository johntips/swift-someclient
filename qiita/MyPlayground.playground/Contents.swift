//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

//
//let symbols:String = "^GSPC".stringByAddingPercentEncodingWithAllowedCharacters(NSCharacterSet.URLQueryAllowedCharacterSet())!
//let financeURL:String = "http://finance.yahoo.com/d/quotes.csv?s=\(symbols)&f=sl1c6p2"
let financeURL:String = "http://finance.yahoo.com/d/quotes.csv?s=&f=sl1c6p2"

let getNSURL: NSURL? = NSURL(string: financeURL)
if let url = getNSURL {
    let tickerNSData: NSData = NSData(contentsOfURL: url)!
    var output:NSString = NSString(data:tickerNSData, encoding:NSUTF8StringEncoding)!

}



//var jsonData: NSData = NSData(contentsOfURL: NSURL?(string: "google.com")!)!
//
//print(jsonData)


//https://s3-ap-northeast-1.amazonaws.com/image.uploaded-museadmin/musethumnail/thumnailmuse000001-55.png?X-Amz-Date=20151020T083252Z&X-Amz-Expires=300&X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Signature=9b2699ec8a26d8e2f518c571f414cc696c661f476e6ce63e56978e9ca0556665&X-Amz-Credential=ASIAIOQQC2Z6UWN6CG7A/20151020/ap-northeast-1/s3/aws4_request&X-Amz-SignedHeaders=Host&x-amz-security-token=AQoDYXdzEKL//////////wEagAPo2aNUFmjmczTgWd0tZwRVzGrjxwjt1Y354SDiy6l/koWI7NU3GLJUStNunXCrRDSxQhbTBltYOYZRRK3yTMyy0fZphT/psNFe4/qR7tFrSo9ZewpqSEaoH/LNpXcogDfdGTZjvm3LI%2BOAW2gxnZvJ70X4U9cP4JK12tls0acaiENoHxejl8%2BfPBGCmulvib84KTV7aQpSB0DJnLLaw70B32MZCi%2BboOAlZj8B/1PWSB6ANY4un00GvWfq9BzNYAwIMg2HRT25PLBQ2KUdHc%2BAIq2zLn/MPujZdhwJ0pr1wiG9m24lmrZUqJ820R4deFmDX9mNKOOJyiiyN%2Bo8yjtH8%2BBZD4cpJqS1lA2nmcDLdP31y59bplhEQiquxz7Eef4hnh3tvY6kz1aNpFsiBhkzXCsNRzvwJseSxB%2BzqTlJJ9xc%2BPTplXgp%2BjNuAmtGnu50o%2BGKjUG7xzhB6ja6py4k5uFYGXv8m66JP%2BKQdAQNo5P8iSuRTrqIRMlKuAn4OaAgh/eXsQU%3D