import socket

with socket.socket() as sock:
    # Привязка сокета к адресу и порту
    sock.bind(("127.0.0.1", 3000))
    # Установка сокета в режим прослушивания
    sock.listen()
    # Приём входящего соединения
    conn, addr = sock.accept()
    
    with conn:
        # Получение данных от клиента
        recieved = conn.recv(1024)
        # Вывод полученных данных в кодировке utf-8
        print(recieved.decode("utf-8"))
        # Отправка ответа клиенту
        conn.send(b"Hello, client")
