import socket

a_base = input("Введите длину основания a: ")
b_base = input("Введите длину основания b: ")
h_height = input("Введите высоту трапеции: ")

data = [a_base, b_base, h_height]
data = list(map(str, data))
data = b" ".join(map(str.encode, data))

with socket.socket() as sock:
    sock.connect(("127.0.0.1", 3000))

    sock.send(data)
    recieved = sock.recv(1024)
    print("Площадь трапеции равна: ", recieved.decode("utf-8"))
