import socket
from threading import Thread


# Прием и вывод сообщений от сервера  
def listening_to_messages():
    while True:
        data = sock.recv(1024).decode()
        print(data)


with socket.socket() as sock:
    sock.connect(("127.0.0.1", 4000))
    username = input("Your name: ")
    thread = Thread(target=listening_to_messages, daemon=True)
    thread.start()
    while True:
        u_input = input()
        # Завершение чатинга
        if u_input.lower() == "q":
            break
        u_input = f"{username}: {u_input}"
        sock.send(u_input.encode())

    sock.close()
