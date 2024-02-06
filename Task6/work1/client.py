import socket

with socket.socket() as sock:
    # Устанавка соединения с сервером
    sock.connect(("127.0.0.1", 3000))
    # Отправка сообщения серверу в бинарном формате
    sock.send(b"Hello, server")
    # Получение ответа от сервера
    recieved = sock.recv(1024)
    # Вывод полученного ответа, декодируя его из бинарного формата в строку
    print(recieved.decode("utf-8"))
