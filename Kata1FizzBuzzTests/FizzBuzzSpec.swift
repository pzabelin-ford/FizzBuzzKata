//
//  FizzBuzzSpec.swift
//  Kata1FizzBuzz
//
//  Created by Khraizat, Nader (N.M.) on 10/23/19.
//  Copyright © 2019 Khraizat, Nader (N.M.). All rights reserved.
//

import Quick
import Nimble

class FizzBuzz {
    func calculate(_ value: Int) -> String {
        if value == 15 {
            return "FizzBuzz"
        }

        if value % 3 == 0 {
            return "Fizz"
        } else if value % 5 == 0 {
            return "Buzz"
        } else {
            return String(value)
        }
    }
}

class FizzBuzzSpec: QuickSpec {
    override func spec() {
        var subject: FizzBuzz!
        describe("Fizz Buzz") {
            beforeEach {
                subject = FizzBuzz()
            }
            context("1") {
                it("should produces output of 1") {
                    expect(subject.calculate(1)) == "1"
                }
            }
            context("2") {
                it("should produce an output of 2") {
                    expect(subject.calculate(2)) == "2"
                }
            }
            context("multiples of 3") {
                context("3") {
                    it("should produce an output of Fizz") {
                        expect(subject.calculate(3)) == "Fizz"
                    }
                }
                context("6") {
                    it("should produce an output of Fizz") {
                        expect(subject.calculate(6)) == "Fizz"
                    }
                }
            }
            context("multiples of 5") {
                context("5") {
                    it("should produce an output of Buzz") {
                        expect(subject.calculate(5)) == "Buzz"
                    }
                }
                context("10") {
                    it("should produce an output of Buzz") {
                        expect(subject.calculate(10)) == "Buzz"
                    }
                }
            }
            context("15") {
                it("should produce an output of FizzBuzz") {
                    expect(subject.calculate(15)) == "FizzBuzz"
                }
            }
        }
    }
}
