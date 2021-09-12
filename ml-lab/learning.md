## Exercise1
* AIM:
> To implement linear regression in python from scratch using scikit learn
* How to write program:
  1. Importing Packages
  2. Defining a class
      * Def Fit
      * Def Predict
      * Def Evaluate
  3. Defining Function for Regression
  4. Loading and Processing the dataset

$$ \newcommand{\vect}{\mathbf} \begin{align} b_1 &= \frac{\displaystyle \sum_{i=1}^{m}(x_i-\bar{x})(y_i-\bar{y})}{\displaystyle \sum_{i=1}^{m}(x_i-\bar{x})^2} = \frac{(\vect{x}-\bar{x})^T(\vect{y}-\bar{y})}{(\vect{x}-\bar{x})^T(\vect{x}-\bar{x})} \\ b_0 &= \bar{y}-b_1\bar{x} \\ \text{RMSE} &= \sqrt{\frac{1}{m}\sum_{i=1}^{m}(y_i-\hat{y_i})^2} = \sqrt{\frac{(\vect{y}-\hat{\vect{y}})^T(\vect{y}-\hat{\vect{y}})}{m}} \\ \text{SS}_{\text{tot}} &= \sum_{i=1}^{m}(y_i - \bar{y})^2 = (\vect{y}-\bar{y})^T(\vect{y}-\bar{y}) \\ \text{SS}_{\text{res}} &= \sum_{i=1}^{m}(y_i - \hat{y}_i)^2 = (\vect{y}-\hat{\vect{y}})^T(\vect{y}-\hat{\vect{y}}) \\ R^{2} \text{score} &= 1-\frac{\text{SS}_{\text{res}}}{\text{SS}_{\text{tot}}} \end{align} $$
