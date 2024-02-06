import socket

with socket.socket() as sock:
    sock.bind(("127.0.0.1", 3000))
    sock.listen()

    conn, addr = sock.accept()
    with conn:
        recieved = conn.recv(1024)

        recieved = recieved.decode("utf-8")
        a_base, b_base, h_height = list(map(float, recieved.split()))

        data = (a_base+b_base)/2*h_height
        data = str.encode(str(data))

        conn.send(data)
