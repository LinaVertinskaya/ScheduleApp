//
//  PhotoCameraAlert.swift
//  MySchedule
//
//  Created by Лина Вертинская on 16.07.22.
//

import UIKit

extension UIViewController {

    func alertPhotoOrCamera(completionHandler: @escaping (UIImagePickerController.SourceType) -> Void) {

        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)

        let camera = UIAlertAction(title: "Camera", style: .default) { _ in
            let camera = UIImagePickerController.SourceType.camera
            completionHandler(camera)
        }

        let photoLibrary = UIAlertAction(title: "Photo Library", style: .default) { _ in
            let photoLibrary = UIImagePickerController.SourceType.photoLibrary
            completionHandler(photoLibrary)
        }

        let cancel = UIAlertAction(title: "Cancel", style: .cancel)

        alertController.negativeWidthConstraint()

        alertController.addAction(camera)
        alertController.addAction(photoLibrary)
        alertController.addAction(cancel)

        present(alertController, animated: true)
    }
}
