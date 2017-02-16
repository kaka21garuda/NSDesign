# NSDesign for iOS

NSDesign is animation library that contains ready to use of animation classes. Check out the animations below and Enjoy!



<img style="float: left;" src="https://cloud.githubusercontent.com/assets/17153572/22798083/8b77bf06-eeb5-11e6-8fa1-8d1f5dd2a933.gif">

<img style="float: center;" src="https://cloud.githubusercontent.com/assets/17153572/23037578/b7ff41c6-f43b-11e6-9337-4a3ea4306759.gif">






---
## Table of Contents
* [Animations](#app-design)
  * [Circular Transition](#objective)
  * [Loading Animation](#objective)


---
### How to use it

#### Circular Transition
Goal: create A circle transition from one view into another
* Drag and drop ```CircularTransition.swift``` into your project.

* Use ```UIViewControllerTransitioningDelegate``` in your initial ViewController

* Make an object of CircularTransition

* add these functions to conform the protocol
``` swift
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        transition.transitionMode = .present
        transition.startingPoint = (buttonSender?.center)!
        transition.circleColor = (buttonSender?.backgroundColor)!

        return transition
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {

        transition.transitionMode = .dismiss
        transition.startingPoint = (buttonSender?.center)!
        transition.circleColor = (buttonSender?.backgroundColor)!

        return transition
    }
```
* Go to prepare for segue to set delegate to self:
```swift
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "segueID" {
         let destinationViewController: DestinationViewController = segue.destination as! DestinationViewController
         destinationViewController.transitioningDelegate = self
         destinationViewController.modalPresentationStyle = .custom
     }
 }
```
* For any reference, your can checkout the sample project: ```ViewController.swift``` and ```DestinationViewController.swift```

#### Loading animation
* Drag and drop ```SkillLoaderView.swift```
* Subclass your view with SkillLoaderView
* Modify the animation as you wish from the storyboard

[Back to top ^](#)

---

## Contributing or Feature Request

Contributors are more than welcome. NSDesign accepts any kind of great animation in Swift. Just upload a pull request and add a description on your changes you made.

Feel free to add any issue and feature request to make NSDesign better in the future.
