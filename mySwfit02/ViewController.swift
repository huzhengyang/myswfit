//
//  ViewController.swift
//  mySwfit02
//
//  Created by kadis on 2021/9/18.
//

import UIKit
import RxCocoa
import RxSwift

struct Person {
    var name: String
    var age: Int
    
}

class ViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    @IBOutlet weak var tf: UITextField!
    @IBOutlet weak var silder: UISlider!
    var bag = DisposeBag()
    
    
    let persons = Observable.just([
        Person(name: "kadis", age: 22),
        Person(name: "kabis", age: 23),
        Person(name: "kad0s", age: 24),
        Person(name: "kafis", age: 25),
    ])
        
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let vc = ocViewController()
        
        vc.test()
        
        print(add(3)(4))
        
       
        //  绑定  rxswift 监听
        self.test2()
        
        
        
        //tableview
        //observerable   数据
        //observer

            
        persons.bind(to: tableview.rx.items(cellIdentifier: "cell",cellType: UITableViewCell.self)){ row, person, cell in
            cell.textLabel?.text = person.name
            cell.detailTextLabel?.text = String(person.age)   //UITableViewCell.self  ,如果是自定义的 就传自定义的
            
        }.disposed(by: bag)
        
        
        //点击
       let _ =  tableview.rx.modelSelected(Person.self).subscribe { person in
            
           print(person)
        
        let vc =  LoginVC()
        self.navigationController?.pushViewController(vc, animated: true)
//        self.present(vc, animated: true, completion: nil)

       }
        
        //数字遍历
        
        let array  = [1,2,3,4,5,6,7]
        array.filter({$0 > 3}).filter( {$0 % 2 == 0})
            .forEach { print("数组：",$0)
            }
        
        //网络请求
        let url = URL(string: "https://www.baidu.com")
        
//        URLSession.shared.rx.response(request: URLRequest(url:url! ))
//            .subscribe { (respons, data) in
//                print(respons)
//            }.disposed(by: bag)
//
//
     let _ =   URLSession.shared.rx.response(request: URLRequest(url:url! ))
            .subscribe { (respons, data) in
                print(respons)
            } onError: { error  in
                print(error)
            } onCompleted: {
                
            } onDisposed: {
                
            }

    }

    func test2()  {
        let btn = UIButton.init(type: .custom)
        btn.backgroundColor = .red
        btn.setTitle("kadis", for: .normal);
       
        btn.frame = CGRect(x: 100, y: 100, width: 100, height: 50);
        self.view .addSubview(btn)
        
        let  dog = Dog()
        dog.name = "kadis"
     
        
        
        //监听 按钮点击
     let _ =    btn.rx.controlEvent(.touchUpInside).subscribe { onNext in
            print( "btn touchi")
            dog.name = "kabos";
        } //.disposed(by: DisposeBag())
        
        //同上
     let _ =    btn.rx.tap.subscribe{
            onNext in
            print( "btn  tap touchi")
            dog.name = "kabos";
        }
    
        

        //kvo 监听 name 属性变化
      let _ =  dog.rx.observe(String.self, "name").subscribe { onNexgt in
            
            btn .setTitle(onNexgt, for: .normal)
        }
        
        
        //通知
      //        Notification.init(name: <#T##Notification.Name#>)
      let _ =   NotificationCenter.default.rx.notification(UIApplication.didEnterBackgroundNotification).subscribe {  notif in
            print(notif)
        
        }

        
        
        //
    //        Observable.just(0.8).bind(to: silder.rx.value).disposed(by: bag)

        silder.rx.value.map{"slider:\($0)"}.bind(to: tf.rx.text).disposed(by: bag) //绑定到 tf
        
       let _ = silder.rx.value.subscribe { value in
            print(value)
        } onError: { _ in
            
        } onCompleted: {
            
        } onDisposed: {
            
        }

        
        //监听文字改变
        tf.rx.text
//            .orEmpty //为空
//            .changed//发生改变
            .subscribe { onNext in
            print(onNext!)
        }.disposed(by: bag)
        
        
        
        //tf的文字 绑定到 按钮
        tf.rx.text.bind(to: btn
                            .rx.title(for: .normal)).disposed(by: bag)
    //        tf.rx.text.subscribe(btn.rx.title(for: .normal)).disposed(by: bag)
    }
}



class Dog: NSObject {
  @objc dynamic  var name: String?
 
}




//暴露给oc  必须继承nsobject  必须加速  @objcmembers  或 @objc
@objcMembers class Car :NSObject
{
//    @objc(numbers) //重命名
    var num: Int = 0
    override init() {
        
    }
    
    func test(){
        
    }
}

extension Car
{
    func testnew() {
        
    }
}


//函数式编程

let num5 = 3

func add(_ v: Int) -> (Int)->Int {
    { $0 + v }
}


