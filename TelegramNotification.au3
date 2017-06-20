; Algunas variables
$TITLE = "Telegram Notification"
$PROMPT = "Introduce el mensaje"
$DEFAULT = "Hola mundo"

; Nos pregunta el texto a enviar
$TEXT = InputBox($TITLE, $PROMPT, $DEFAULT)

; Token que nos da @BotFather al crear nuestro bot
$TOKEN = ""

; ID del chat dónde queremos las notificaciones
$CHATID = ""

; Llamamos a la API con una URL
$OUTPUT1 = InetRead("https://api.telegram.org/bot" & $TOKEN & "/sendMessage?chat_id=" & $CHATID & "&text=" & $TEXT)
; Capturamos la salida y la pasamos de Binario a String
$OUTPUT2 = BinaryToString($OUTPUT1)

; Mensaje de confirmación (no necesario, se peude comentar), formato JSON
MsgBox(64, $TITLE, $OUTPUT2)
