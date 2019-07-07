# Measuring LOSS - Cross Entropy
## Binary Cross Entropy vs Catagorical Cross Entropy

### Loss
When training a machine learning model **LOSS** is essentially how a machine learning model **scores** itself. The model determines feedback from it's predicted answer to the actual answer with a **loss function**. This equation essentially gives the model a way to measure how "wrong" it was and that value is use to adjust node values in the model to improve accuracy.  
[Loss Functions][1]

### Cross-Entropy Loss
Cross-Entropy Loss is actually the only loss we are discussing here. Cross-entropy loss, or log loss, measures the performance of a classification model whose output is a probability value between 0 and 1. Cross-entropy loss increases as the predicted probability diverges from the actual label.  

![](../static/images/cross_entropy_graph.png)  
[source][2]


With **Categorical cross entropy**, you measure cross entropy loss across several classes.

**Binary cross entropy** refers to a special case of cross entropy that only classifies two classes from a single output node. Binary cross entropy is also sometimes refered to as the *negative log loss function*.

The equation for Binary cross entropy loss is the same as equation for Categorical cross entropy loss with one output node.


![](../static/images/cross_entropy_equation.gif)  
[source][3]


When using Binary Cross Entropy there is a mathematical function called the logistic function or also known as the *sigmoid*. Many researchers have experimented with it and find that it works well when there are 2 categories of target labels. For example, yes or no. Or spam not spam etc. **Sigmoid** is commonly used as the activation function for Binary Cross Entropy.

When there are more than 2 categories of target labels, researches had came up with generalized version of above logistic function. This is called *softmax* function. **Softmax** is used broadly and is typically used for Catagorical Cross Entropy.

#### Example of Softmax across catagories:

![](../static/images/softmax_layer.svg)  
[source][4]



[1]: https://ml-cheatsheet.readthedocs.io/en/latest/loss_functions.html "ml-cheatsheet"
[2]: https://ml-cheatsheet.readthedocs.io/en/latest/loss_functions.html "ml-cheatsheet"
[3]: https://gombru.github.io/2018/05/23/cross_entropy_loss/ "gombru.github.io"
[4]: https://developers.google.com/machine-learning/crash-course/multi-class-neural-networks/softmax "multi-class-neural-networks"