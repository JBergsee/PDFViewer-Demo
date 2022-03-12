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
    
   
    var pdfView:PDFViewController?
    
    var pdf2View:PDFViewController?
    
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
        //Try with no pdf!
        //vc.pdfDocument = pdfDocument
        //vc.pdfTitle = "Example PDF"
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func openSavedPDFView() {
        if (pdfView == nil) {
            //Initialize the view controller first time
            let docURL = Bundle.main.url(forResource: "file-example_PDF_1MB", withExtension: "pdf")
            var pdfDocument:PDFDocument?
            if ((docURL) != nil) {
                pdfDocument = PDFDocument(url: docURL!)
            }
            let vc = PDFViewController(showPrint: false)
            vc.pdfDocument = pdfDocument
            vc.pdfTitle = "Example PDF"
            
            //Save the viewController
            pdfView = vc

        }
        self.navigationController?.pushViewController(pdfView!, animated: true)
    }
    
    @IBAction func openNoOutlinePDF() {
        if (pdf2View == nil) {
            //Initialize the view controller first time
            let docURL = Bundle.main.url(forResource: "noOutlineExample", withExtension: "pdf")
            var pdfDocument:PDFDocument?
            if ((docURL) != nil) {
                pdfDocument = PDFDocument(url: docURL!)
            }
            let vc = PDFViewController()
            vc.pdfDocument = pdfDocument
            vc.pdfTitle = "Example PDF"
            
            //Save the viewController
            pdf2View = vc

        }
        self.navigationController?.pushViewController(pdf2View!, animated: true)
    }
}
