import socket
from threading import Thread


# Бесконечное прослушивание входящих данных от клиента через сокет sock
def listening_to_client(sock):
    while True:
        try:
            data = sock.recv(1024).decode()
        # Выполняется в случае, если клиент отключился
        except Exception as e:
            u_sockets.remove(sock)

        for u_socket in u_sockets:
            if u_socket != sock:
                u_socket.send(data.encode())


with socket.socket() as sock:
    sock.bind(("127.0.0.1", 4000))
    sock.listen()
    u_sockets = set()
    # Этот цикл ожидает подключение клиентов 
    while True:
        u_socket, u_address = sock.accept()
        # Множество всех подключенных клиентов
        u_sockets.add(u_socket)
        # Создание демон потока (фонового потока)
        thread = Thread(target=listening_to_client, args=(u_socket,), daemon=True)
        # Запуск потока
        thread.start()

    for u_sock in u_sockets:
        u_sock.close()
