import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  TextEditingController costController = TextEditingController();
  TextEditingController quantityController = TextEditingController();

  bool isBuySelected = false;
  bool isSellSelected = false;

  double costPricePerShare = 0.0;
  double brokerCommission = 0.0;
  double otherCharges = 0.0;
  double totalAmount = 0.0;
  double totalPayableAmount = 0.0;

  TextEditingController unitsController = TextEditingController();
  TextEditingController bonusPercentageController = TextEditingController();
  TextEditingController cashPercentageController = TextEditingController();
  TextEditingController amountPaidUpController = TextEditingController();

  double bonusSharesTaxPercentage = 0.05;
  double otherChargePercentage = 0.03;

  double bonusSharesTax = 0.0;
  double otherChargesDividend = 0.0;
  double totalTaxAmount = 0.0;
  double cashDividendAmount = 0.0;
  double totalBonusSharesInUnits = 0.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: Text('Calculator',style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold,), ),
    centerTitle: true,
    backgroundColor: Colors.blueGrey,
        ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  children: [
                    Text(
                      'Transaction',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Checkbox(
                          value: isBuySelected,
                          onChanged: (value) {
                            setState(() {
                              isBuySelected = value!;
                              isSellSelected = !isBuySelected;
                            });
                          },
                        ),
                        Text('Buy'),
                        Checkbox(
                          value: isSellSelected,
                          onChanged: (value) {
                            setState(() {
                              isSellSelected = value!;
                              isBuySelected = !isSellSelected;
                            });
                          },
                        ),
                        Text('Sell'),
                      ],
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: costController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Cost',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    TextField(
                      controller: quantityController,
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        labelText: 'Quantity',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 16.0),
                    ElevatedButton(
                      onPressed: () {
                        calculateTransaction();
                      },
                      style: ButtonStyle(
                        backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.green),
                      ),
                      child: Text('Calculate'),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.green),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cost Price Per Share: $costPricePerShare'),
                    Text('Broker Commission: $brokerCommission'),
                    Text('Other Charges: $otherCharges'),
                    Text('Total Amount: $totalAmount'),
                    Text('Total Payable Amount: $totalPayableAmount'),
                  ],
                ),
              ),
              SizedBox(height: 16.0),
              Container(
                padding: EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blue),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Dividend Details',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 16.0),

                    // Container for Input Attributes with Rounded Corners
                    Container(
                      padding: EdgeInsets.all(16.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: Column(
                        children: [
                          TextField(
                            controller: unitsController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Number of Units',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: bonusPercentageController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Dividend Bonus (%)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: cashPercentageController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Dividend Cash (%)',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          TextField(
                            controller: amountPaidUpController,
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                              labelText: 'Amount Paid Up',
                              border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          SizedBox(height: 16.0),
                          ElevatedButton(
                            onPressed: () {
                              calculateDividend();
                              // Change to your desired color
                              // Navigator.pop(context); // Remove pop-up part
                            },
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all<Color>(
                                  Colors.green),
                            ),
                            child: Text('Calculate Dividend'),
                          ),
                        ],
                      ),
                    ),

                    SizedBox(height: 16.0),

                    // Container for Result Attributes
                    Center(
                      child: Container(
                        padding: EdgeInsets.all(16.0),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.green),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Result:'),
                            Text('Bonus Shares Tax (5%): $bonusSharesTax'),
                            Text('Other Charges (3%): $otherChargesDividend'),
                            Text('Total Tax Amount: $totalTaxAmount'),
                            Text('Cash Dividend Amount: $cashDividendAmount'),
                            Text(
                                'Total Bonus Shares in Units: $totalBonusSharesInUnits'),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // Remove FloatingActionButton and pop-up related code
    );
  }

  void calculateTransaction() {
    double cost = double.tryParse(costController.text) ?? 0.0;
    double quantity = double.tryParse(quantityController.text) ?? 0.0;

    setState(() {
      double amount = cost * quantity;

      costPricePerShare = cost;
      brokerCommission = 0.01 * amount; // Assuming 1% broker commission
      otherCharges = 0.005 * amount; // Assuming 0.5% other charges
      totalAmount = amount;
      totalPayableAmount = amount + brokerCommission + otherCharges;
    });
  }

  // Remove _showDividendCalculator method and related code

  void calculateDividend() {
    double units = double.tryParse(unitsController.text) ?? 0.0;
    double bonusPercentage =
        double.tryParse(bonusPercentageController.text) ?? 0.0;
    double cashPercentage =
        double.tryParse(cashPercentageController.text) ?? 0.0;
    double amountPaidUp = double.tryParse(amountPaidUpController.text) ?? 0.0;

    setState(() {
      double bonusAmount = (bonusPercentage / 100) * amountPaidUp;
      double cashAmount = (cashPercentage / 100) * amountPaidUp;

      bonusSharesTax = bonusSharesTaxPercentage * bonusAmount;
      otherChargesDividend = otherChargePercentage * (bonusAmount + cashAmount);
      totalTaxAmount = bonusSharesTax + otherChargesDividend;
      cashDividendAmount = cashAmount - totalTaxAmount;
      totalBonusSharesInUnits = bonusAmount / costPricePerShare;
    });
  }
}

