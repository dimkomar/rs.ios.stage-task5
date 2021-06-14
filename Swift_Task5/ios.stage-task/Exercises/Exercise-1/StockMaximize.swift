import Foundation

class StockMaximize {

    func countProfit(prices: [Int]) -> Int {
        var valueStocks : Int = 0
        
        if prices.count == 0 || prices.count == 1 || prices.dropLast().allSatisfy({ $0 == prices.last }) {
            return 0
        } else {
            var mutablePrices = prices
            var max = mutablePrices.max() ?? 0
            for value in prices {
             //   print("Значение акции сегодня: \(value)")
             //   print("Значение ближайшего максимума: \(max)")
                if (value < max && mutablePrices.firstIndex(of: value)! < mutablePrices.firstIndex(of: max)!){
                //    print("Добавлено: \(max - value)")
                    valueStocks += max - value
                } else if (value == max) {
                    let indexValueForRemove = mutablePrices.firstIndex(of: max)
                    mutablePrices.remove(at:indexValueForRemove!)
                    max = mutablePrices.max() ?? 0
                }
              //  print("Значение в стоке : \(valueStocks)")
            }
            //print("Финальное значение в стоке : \(valueStocks)")
            return valueStocks
        }
        
    }
}
