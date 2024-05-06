func dailyRateFrom(hourlyRate: Int) -> Double {
  return Double(hourlyRate * 8)
}

func monthlyRateFrom(hourlyRate: Int, withDiscount discount: Double) -> Double {
  let total = 22.0 * dailyRateFrom(hourlyRate: hourlyRate)
  let discoutAsDceimail = discount / 100
  let discountAmount = total * discoutAsDceimail
  let finalAmount = total - discountAmount

  return finalAmount.rounded()
}

func workdaysIn(budget: Double, hourlyRate: Int, withDiscount discount: Double) -> Double {
  let discountedRate = Double(hourlyRate) * (1 - discount / 100)
  let dailyWage = discountedRate * 8.0
  let daysOfWork = budget / dailyWage

  return daysOfWork.rounded(.down)
}
