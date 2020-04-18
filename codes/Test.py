# HyperPlate of SVM. It contains variables including w and b, and convert input x vector to a single value y(+-1).
with tf.name_scope('SVMPlate'): #Noted that the dimension of y must be 1, so the constants should be 1 dimensional.
    self.constrain = tf.constant(SVMPrimalSolution.Domain, dtype=tf.float32, shape=[1], name='Constrain')
    self.w = self.weight_variable([1, self.xDim], name='Weight')
    bias = self.bias_variable([1], name='Bias')
    self.subjection = tf.multiply(self.y, tf.matmul(self.w, self.x) + bias)
    tf.add_to_collection('Weight', self.w)
    tf.add_to_collection('Bias', bias)

@staticmethod
def weight_variable(shape, name=None):
    '''weight_variable generates a weight variable of a given shape.'''
    initial = tf.truncated_normal(shape, stddev=0.1)
    if name is not None:
        return tf.Variable(initial, name=name)
    else:
        return tf.Variable(initial)
    
@staticmethod
def bias_variable(shape, name=None):
    ''''bias_variable generates a bias variable of a given shape.'''
    initial = tf.constant(0.1, dtype=tf.float32, shape=shape)
    if name is not None:
        return tf.Variable(initial, name=name)
    else:
        return tf.Variable(initial)