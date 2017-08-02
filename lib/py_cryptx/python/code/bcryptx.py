""" Hash and Check password using Bcrypt """
import bcrypt

def hash_password(raw_password):
    """ This function hash raw password
    into hashed password
    """
    return bcrypt.hashpw(raw_password, bcrypt.gensalt())

def check_password(raw_password, hashed_password):
    """ The function that checks raw password
    against the hashed one
    """
    return bcrypt.checkpw(raw_password, hashed_password)
    