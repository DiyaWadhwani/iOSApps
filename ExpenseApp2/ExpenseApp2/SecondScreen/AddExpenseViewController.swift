//
//  AddExpenseViewController.swift
//  ExpenseApp2
//
//  Created by Diya on 10/8/23.
//

import UIKit
import PhotosUI

class AddExpenseViewController: UIViewController {
    
    var delegate: ViewController!
    var selectedExpense:String? = nil
    
    var pickedImage: UIImage?
    
    let addExpenseView = AddExpenseView()
    
    override func loadView() {
        view = addExpenseView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        addExpenseView.selectTypeButton.menu = getMenuTypes()
        addExpenseView.choosePhotoButton.menu = getMenuImagePicker()
        addExpenseView.addButton.addTarget(self, action: #selector(addExpenseButtonTapped), for: .touchUpInside)
    }
    
    func getMenuTypes() -> UIMenu {
        var menuItems = [UIAction]()
        
        for type in Utilities.types {
            let menuItem = UIAction(
                title: type,
                handler: {(_) in
                    self.selectedExpense = type
                    self.addExpenseView.selectTypeButton.setTitle(self.selectedExpense, for: .normal)
                })
            menuItems.append(menuItem)
        }
        return UIMenu(title: "Select type", children: menuItems)
    }
    
    func getMenuImagePicker() -> UIMenu {
        var menuItems = [
            UIAction(title: "Camera", handler: {(_) in 
                self.pickUsingCamera()
            }),
            UIAction(title: "Gallery", handler: {(_) in
                self.pickUsingGallery()
            })
        ]
        return UIMenu(title: "Select Source", children: menuItems)
    }
    
    func pickUsingCamera() {
        let cameraController = UIImagePickerController()
        cameraController.sourceType = .camera
        cameraController.allowsEditing = true
        cameraController.delegate = self
        present(cameraController, animated: true)
    }
    
    func pickUsingGallery() {
        var configuration = PHPickerConfiguration()
        configuration.filter = PHPickerFilter.any(of: [.images])
        configuration.selectionLimit = 1
        
        let photoPicker = PHPickerViewController(configuration: configuration)
        
        photoPicker.delegate = self
        present(photoPicker, animated: true, completion: nil)
    }
    
    @objc func addExpenseButtonTapped() {
        
        var titleInput:String?
        var amountInput = 0.0
        
        if let unwrappedTitle = addExpenseView.titleTextField.text{
            if !unwrappedTitle.isEmpty{
                titleInput = unwrappedTitle
            }
            else {
                showTitleAlert()
            }
            
        }
        
        if let unwrappedAmount = addExpenseView.amountTextField.text{
            if !unwrappedAmount.isEmpty{
                if let convertedAmount = Double(unwrappedAmount){
                    amountInput = convertedAmount
                }
                else{
                    return
                }
            }
            else {
                showAmountAlert()
            }
        }
        
        
        
        let newExpense = Expense(title: titleInput, amount: amountInput, expenseType: selectedExpense, image: pickedImage ?? (UIImage(systemName: "photo"))!
        )
        delegate.delegateOnExpense(expense: newExpense)
        navigationController?.popViewController(animated: true)
    }
    
    func showTitleAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Title cannot be empty",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
    
    func showAmountAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Title cannot be empty",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

extension AddExpenseViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return Utilities.types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        selectedExpense = Utilities.types[row]
        return Utilities.types[row]
    }
}

extension AddExpenseViewController: UINavigationControllerDelegate, UIImagePickerControllerDelegate{
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        picker.dismiss(animated: true)
        
        if let image = info[.editedImage] as? UIImage{
            self.addExpenseView.choosePhotoButton.setImage(image.withRenderingMode(.alwaysOriginal), for: .normal)
            self.pickedImage = image
        }
        else{
            showImageAlert()
        }
    }
    
    func showImageAlert(){
        let alert = UIAlertController(
            title: "Error",
            message: "Please upload a valid image",
            preferredStyle: .alert
            )
        alert.addAction(UIAlertAction(title: "OK", style: .default))
        self.present(alert, animated: true)
    }
}

extension AddExpenseViewController: PHPickerViewControllerDelegate {
    func picker(_ picker: PHPickerViewController, didFinishPicking results: [PHPickerResult]) {
        
        dismiss(animated: true)
        print(results)
        
        let itemprovider = results.map(\.itemProvider)
        
        for item in itemprovider {
            if item.canLoadObject(ofClass: UIImage.self){
                item.loadObject(ofClass: UIImage.self, completionHandler: { (image, error) in DispatchQueue.main.async {
                        if let uwImage = image as? UIImage {
                            self.addExpenseView.choosePhotoButton.setImage(uwImage.withRenderingMode(.alwaysOriginal), for: .normal)
                            self.pickedImage = uwImage
                        }
                    }
                })
            }
        }
    }
}
