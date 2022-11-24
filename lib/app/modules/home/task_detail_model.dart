class TaskDetail {
  String? eventId;
  String? title;
  String? description;
  String? payout;
  bool? isCompleted;
  int? payoutAmt;
  String? payoutCurrency;

  TaskDetail({this.eventId, this.title, this.description, this.payout, this.isCompleted, this.payoutAmt, this.payoutCurrency});

  TaskDetail.fromJson(Map<String, dynamic> json) {
    eventId = json['eventId'];
    title = json['title'];
    description = json['description'];
    payout = json['payout'];
    isCompleted = json['isCompleted'];
    payoutAmt = json['payout_amt'];
    payoutCurrency = json['payout_currency'];
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['eventId'] = eventId;
    data['title'] = title;
    data['description'] = description;
    data['payout'] = payout;
    data['isCompleted'] = isCompleted;
    data['payout_amt'] = payoutAmt;
    data['payout_currency'] = payoutCurrency;
    return data;
  }
}
