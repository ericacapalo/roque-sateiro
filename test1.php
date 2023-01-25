<!DOCTYPE html>
<html>
<head>
    <title>Botão que muda de estado</title>
</head>
<body>
<?php
if (isset($_POST['estado'])) {
    $estado = (int)$_POST['estado'];
} else {
    $estado = 1;
}
if ($estado == 4) {
    // se o estado for 4, desabilita o botão
    echo '<button disabled>Entregue</button>';
} else {
    // se o estado não for 4, exibe o botão e armazena o estado atual no formulário
    echo '<form method="post">';
    echo '<button name="botao">';
    if ($estado == 1) {
        $estado++;
        echo 'Enviar';
    } else if ($estado == 2) {
        $estado++;
        echo 'Enviando';
    } else if ($estado == 3) {
        $estado++;
        echo 'Entregue';
    }
    echo '</button>';
    echo '<input type="hidden" name="estado" value="' . $estado . '">';
    echo '</form>';
}
?>
</body>
</html>