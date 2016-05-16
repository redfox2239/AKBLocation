//
//  ViewController.swift
//  AKBに会いにいけるアプリ
//
//  Created by HARADA REO on 2016/05/10.
//  Copyright © 2016年 reo harada. All rights reserved.
//

// デフォルトで用意されてるラベルとかボタン等の部品
import UIKit
// 地図を使いたい場合
import MapKit
// 現在地を使いたい場合
import CoreLocation


class ViewController: UIViewController,CLLocationManagerDelegate,MKMapViewDelegate {
    
    // 地図を表示してくれるだけ
    @IBOutlet weak var mapView: MKMapView!
    // 現在地を教えてくれる部品を用意
    var locationManager: CLLocationManager!
    
    var cordinateArray: [CLLocationCoordinate2D] = []
    
    var yamanote: [String] = [
        "大崎駅",
        "品川駅",
        "田町駅",
        "浜松町駅",
        "新橋駅",
        "有楽町駅",
        "東京駅",
        "神田駅",
        "秋葉原駅",
        "御徒町駅",
        "上野駅",
        "鶯谷駅",
        "日暮里駅",
        "西日暮里駅",
        "田端駅",
        "駒込駅",
        "巣鴨駅",
        "大塚駅",
        "池袋駅",
        "目白駅",
        "高田馬場駅",
        "新大久保駅",
        "新宿駅",
        "代々木駅",
        "原宿駅",
        "渋谷駅",
        "恵比寿駅",
        "目黒駅",
        "五反田駅",
    ]
    
    var yamanoteCordinate: [CLLocationCoordinate2D] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // locationManager初期化（位置情報を教えてくれる人を呼んでくる）
        self.locationManager = CLLocationManager()
        // 位置情報を取得する許可を取ります
        self.locationManager.requestAlwaysAuthorization()
        
        // mapViewに現在地を表示する
        self.mapView.showsUserLocation = true
        // 自分の位置を常に地図の中心にする
        self.mapView.userTrackingMode = MKUserTrackingMode.FollowWithHeading
        
        // 地図の座標にピン（AKBの誰か）を置いてく
        // どこにおくか、座標を決める
        let cordinate = CLLocationCoordinate2DMake(43.063968, 141.347899)
        // mapViewに上の座標で置いてもらう
        // ピンを用意する
        let pin = MKPointAnnotation()
        // 座標を設定
        pin.coordinate = cordinate
        // タイトルを設定する
        pin.title = "前田敦子"
        pin.subtitle = "161cm"
        // mapViewにpinを追加
        self.mapView.addAnnotation(pin)
        
        
        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder = CLGeocoder()
        geocoder.geocodeAddressString("ハワイ") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "大島優子"
            pin.subtitle = "152cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }
        
        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder2 = CLGeocoder()
        geocoder2.geocodeAddressString("東京") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "指原莉乃"
            pin.subtitle = "159cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }

        // ジオコーディングを使います
        // 例　東京→東京の緯度経度を教えてくれる
        let geocoder3 = CLGeocoder()
        geocoder3.geocodeAddressString("琵琶湖") { (result, error) in
            // ジオコーディングしてもらった座標にピンを置く
            // 結果の1番目のデータを取得
            let first = result![0]
            // 座標を取得　緯度を収得
            let lat = first.location?.coordinate.latitude
            // 座標を取得　経度を取得
            let long = first.location?.coordinate.longitude
            
            // 地図の座標にピン（AKBの誰か）を置いてく
            // どこにおくか、座標を決める
            let cordinate = CLLocationCoordinate2DMake(lat!, long!)
            // mapViewに上の座標で置いてもらう
            // ピンを用意する
            let pin = MKPointAnnotation()
            // 座標を設定
            pin.coordinate = cordinate
            // タイトルを設定する
            pin.title = "柏木由紀"
            pin.subtitle = "163cm"
            // mapViewにpinを追加
            self.mapView.addAnnotation(pin)
        }
        
        self.yamanote.forEach { (val) in
            let geocorder4 = CLGeocoder()
            geocorder4.geocodeAddressString(val) { (result, error) in
                // ジオコーディングしてもらった座標にピンを置く
                // 結果の1番目のデータを取得
                let first = result![0]
                // 座標を取得　緯度を収得
                let lat = first.location?.coordinate.latitude
                // 座標を取得　経度を取得
                let long = first.location?.coordinate.longitude
                
                // 地図の座標にピン（AKBの誰か）を置いてく
                // どこにおくか、座標を決める
                let cordinate = CLLocationCoordinate2DMake(lat!, long!)
                // mapViewに上の座標で置いてもらう
                // ピンを用意する
                let pin = MKPointAnnotation()
                // 座標を設定
                pin.coordinate = cordinate
                // タイトルを設定する
                pin.title = val
                // mapViewにpinを追加
                self.mapView.addAnnotation(pin)
                
                self.yamanoteCordinate.append((first.location?.coordinate)!)
                if self.yamanoteCordinate.count == self.yamanote.count {
                    let polygon = MKPolygon(coordinates: &self.yamanoteCordinate, count: self.yamanoteCordinate.count)
                    self.mapView.addOverlay(polygon)
                }
            }
        }
        
        self.locationManager.delegate = self
        self.locationManager.distanceFilter = 50
        self.locationManager.startUpdatingLocation()
        
        self.mapView.delegate = self
    }
    
    func locationManager(manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        //let lat = manager.location?.coordinate.latitude
        //let log = manager.location?.coordinate.longitude
        let cordinate = manager.location?.coordinate
        print(cordinate)
        
        // サークルを描く
        let distance = CLLocationDistance(400)
        let circle = MKCircle(centerCoordinate: cordinate!, radius: distance)
        self.mapView.addOverlay(circle)
        
        self.cordinateArray.append(cordinate!)
        let polyLine = MKPolyline(coordinates: &self.cordinateArray, count: self.cordinateArray.count)
        self.mapView.addOverlay(polyLine)
    }
    
    func mapView(mapView: MKMapView, rendererForOverlay overlay: MKOverlay) -> MKOverlayRenderer {
        if overlay is MKPolyline {
            let polyLineView = MKPolylineRenderer(overlay: overlay)
            polyLineView.strokeColor = UIColor.blueColor()
            polyLineView.lineWidth = 5.0
            return polyLineView
        }
        else if overlay is MKPolygon {
            let polygonView = MKPolygonRenderer(overlay: overlay)
            polygonView.fillColor = UIColor.greenColor()
            polygonView.alpha = 0.1
            polygonView.lineWidth = 5
            polygonView.strokeColor = UIColor.blackColor()
            return polygonView
        }
        else {
            let circleView = MKCircleRenderer(overlay: overlay)
            circleView.fillColor = UIColor.greenColor()
            circleView.alpha = 0.1
            circleView.strokeColor = UIColor.redColor()
            circleView.lineWidth = 1.5
            return circleView
        }
    }
    
    func mapView(mapView: MKMapView, viewForAnnotation annotation: MKAnnotation) -> MKAnnotationView? {
        if annotation is MKUserLocation {
            return nil
        }
        var pinView = mapView.dequeueReusableAnnotationViewWithIdentifier("pin") as? MKPinAnnotationView
        if pinView == nil {
            pinView = MKPinAnnotationView(annotation: annotation, reuseIdentifier: "pin")
            pinView?.animatesDrop = true
            pinView?.pinTintColor = UIColor.greenColor()
        }
        return pinView
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func tapNowPositionButton(sender: AnyObject) {
        // 自分の位置を常に地図の中心にする
        self.mapView.userTrackingMode = MKUserTrackingMode.FollowWithHeading
    }
}







