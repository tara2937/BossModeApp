//
//  SleepTrackerViewController.swift
//  BossModeApp
//
//  Created by Scholar on 6/30/22.
//

//import UIKit
//import Charts
//import SwiftUI
//
//class SleepTrackerViewController: UIViewController {
//
//    @IBOutlet weak var txtTextBox: UITextField!
//
//    @IBOutlet weak var chtChart: LineChartView!
//    var numbers : [Double] = [] //This is where we are going to store all the numbers. This can be a set of numbers that come from a Realm database, Core data, External API's or where ever else
//    override func viewDidLoad() {
//      super.viewDidLoad()
//      // Do any additional setup after loading the view.
//
//
//    }
//    override func didReceiveMemoryWarning() {
//      super.didReceiveMemoryWarning()
//      // Dispose of any resources that can be recreated.
//    }
//
//    @IBAction func btnButton(_ sender: Any) {
//        let input = Double(txtTextBox.text!) //gets input from the textbox - expects input as double/int
//
//        numbers.append(input!) //here we add the data to the array.
//        updateGraph()
//    }
//    func updateGraph(){
//      var lineChartEntry = [ChartDataEntry]() //this is the Array that will eventually be displayed on the graph.
//
//
//
//      //here is the for loop
//      for i in 0..<numbers.count {
//
//        let value = ChartDataEntry(x: Double(i), y: numbers[i]) // here we set the X and Y status in a data chart entry
//
//        lineChartEntry.append(value) // here we add it to the data set
//      }
//
//      let line1 = LineChartDataSet(entries: lineChartEntry, label: "Hours of sleep") //Here we convert lineChartEntry to a LineChartDataSet
//
//      line1.colors = [NSUIColor.red] //Sets the colour to blue
//
//
//      let data = LineChartData() //This is the object that will be added to the chart
//
//      // data.addDataSet(line1) //Adds the line to the dataSet
//      data.append(line1) //Adds the line to the dataSet
//
//      chtChart.data = data //finally - it adds the chart data to the chart and causes an update
//
//    }
//}
