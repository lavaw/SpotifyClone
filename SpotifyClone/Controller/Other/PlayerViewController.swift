//
//  PlayerViewController.swift
//  SpotifyClone
//
//  Created by Rudolf Amiryan on 29.11.23.
//

import UIKit

class PlayerViewController: UIViewController {

    private let imageVIew: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFill
        imageView.backgroundColor = .systemBlue
        return imageView
    }()
    
    private let controlsView = PlayerControlsView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemBackground
        view.addSubview(imageVIew)
        view.addSubview(controlsView)
        controlsView.delegate = self
        configureBarButtons()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        imageVIew.frame = CGRect(x: 0, y: view.safeAreaInsets.top, width: view.width, height: view.width)
        controlsView.frame = CGRect(x: 10,
                                    y: imageVIew.buttom+10,
                                    width: view.width-20,
                                    height: view.height-imageVIew.height-view.safeAreaInsets.top-view.safeAreaInsets.bottom-15)
    }
    
    private func configureBarButtons() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(barButtonSystemItem: .close, target: self, action: #selector(didTapClose))
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .action, target: self, action: #selector(didTapAction))

    }
    
    @objc private func didTapClose() {
        dismiss(animated: true, completion: nil)
    }
    
    @objc private func didTapAction() {
        // Actions
    }
    
}

extension PlayerViewController: PlayerControlsViewDelegate {
    func playerCotrolsViewDidTapPlayPauseButton(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    func playerCotrolsViewDidTapFrowardButton(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    func playerCotrolsViewDidTapBackwardButton(_ playerControlsView: PlayerControlsView) {
        <#code#>
    }
    
    
}
