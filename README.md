# NSDesign for iOS

NSDesign is animation library that contains ready to use of animation classes. Check out the animations below and Enjoy!

![giphycircular](https://cloud.githubusercontent.com/assets/17153572/22798083/8b77bf06-eeb5-11e6-8fa1-8d1f5dd2a933.gif)

---
## Table of Contents
* [Animations](#app-design)
  * [Circular Transition](#objective)

---
### How to use it

#### Circular Transition
Goal: create A circle transition from one view into another
1.  Drag and drop ```CircularTransition.swift``` into your project.

2. Use ```UIViewControllerTransitioningDelegate``` in your initial ViewController

3. Make an object of CircularTransition

4. add these functions to conform the protocol
``` java
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
5.  Go to prepare for segue to set delegate to self:
```java
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     if segue.identifier == "segueID" {
         let destinationViewController: DestinationViewController = segue.destination as! DestinationViewController
         destinationViewController.transitioningDelegate = self
         destinationViewController.modalPresentationStyle = .custom
     }
 }
```
6. For any reference, your can checkout the sample project: ```ViewController.swift``` and ```DestinationViewController.swift```

[Back to top ^](#)

---

## Contributing or Feature Request

Contributors are more than welcome. NSDesign accepts any kind of great animation in Swift. Just upload a pull request and add a description on your changes you made.

Feel free to add any issue and feature request to make NSDesign better in the future.
