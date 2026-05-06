@main
struct TestRunner {
    static func main() {
        let signalcase_1 = Signal(demand: 73, capacity: 78, latency: 13, risk: 6, weight: 5)
        precondition(Policy.score(signalcase_1) == 165)
        precondition(Policy.classify(signalcase_1) == "accept")
        let signalcase_2 = Signal(demand: 83, capacity: 95, latency: 18, risk: 11, weight: 6)
        precondition(Policy.score(signalcase_2) == 164)
        precondition(Policy.classify(signalcase_2) == "accept")
        let signalcase_3 = Signal(demand: 86, capacity: 89, latency: 19, risk: 6, weight: 12)
        precondition(Policy.score(signalcase_3) == 198)
        precondition(Policy.classify(signalcase_3) == "accept")
        let domainReview = DomainReview(signal: 45, slack: 53, drag: 10, confidence: 79)
        precondition(DomainReviewLens.score(domainReview) == 192)
        precondition(DomainReviewLens.lane(domainReview) == "ship")
    }
}
