//
//  MenuViewController.swift
//  PDFViewer
//
//  Created by Johan Nyman on 2022-02-04.
//

import UIKit
import PDFKit
import PDFViewer

class MenuViewController: UIViewController {
    
   
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func openPDFView() {
        let docURL = Bundle.main.url(forResource: "file-example_PDF_1MB", withExtension: "pdf")
        var pdfDocument:PDFDocument?
        if ((docURL) != nil) {
            pdfDocument = PDFDocument(url: docURL!)
        }
        let vc = PDFViewController()
        vc.pdfDocument = pdfDocument
        vc.pdfTitle = "Example PDF"
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
