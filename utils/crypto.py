from Crypto.Cipher import AES
from binascii import b2a_hex


def decode_user_name(text):
    cryptor = AES.new('keyskeyskeyskeys', AES.MODE_CBC, b'0000000000000000')
    length = 16
    count = len(text)
    if count < length:
        add = (length - count)
        text = text + ('\0' * add)
    elif count > length:
        add = (length - (count % length))
        text = text + ('\0' * add)
    ciphertext = cryptor.encrypt(text)
    return b2a_hex(ciphertext)
