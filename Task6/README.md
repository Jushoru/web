## work1
Cодержит клиентскую и серверную часть приложения. Клиент отсылает серверу сообщение «Hello, server». Сообщение должно отражается на стороне сервера. Сервер в ответ отсылает клиенту сообщение «Hello, client». При этом сообщение отображается у клиента.

## work2
Cодержит клиентскую и серверную часть приложения. Клиент запрашивает у сервера рассчет площади, для этого необходимо ввести длины оснований трапеции и её высоту, после чего введённые данные отправляются на серверную часть приложения, где на основе полученных значений высчитывается площадь трапеции, после чего вычисленное значение площади отправляется на клиентскую часть.

## work3
Cодержит серверную часть приложения. Клиент подключается к серверу. В ответ клиент получает http-сообщение, содержащее html-страницу, которую сервер подгружает из файла "index.html".

## work4
Cодержит клиентскую и серверную часть приложения, реализующие многопользовательский чат при помощи модулей socket и threads.
Серверная часть содержит функцию «listening_to_client», которая используется для бесконечного прослушивания входящих данных от клиента через сокет «sock». Main блок кода помимо стандартных методов модуля «socket» содержит также бесконечный цикл while True, благодаря которому происходит постоянное ожидание подключения новых клиентов. При подключении нового клиента, происходит создание и запуск нового демона (демон потоки позволяют программе завершиться, не дожидаясь завершения всех созданных потоков.)  потока с использованием вышеописанной функции «listening_to_client», в которую в качестве аргумента передаются данные сокета нового клиента.
Клиентская часть содержит функцию «listening_to_messages», которая используется для приема и вывода сообщений от сервера. В основном потоке бесконечный цикл while true ожидает ввода пользователя и отправляет его сообщения на сервер. Параллельно этому, в отдельном потоке работает функция вышеописанная функция «listening_to_messages», которая принимает сообщения от сервера и выводит их на экран. Оба процесса выполняются параллельно, обеспечивая двустороннюю связь между клиентом и сервером.