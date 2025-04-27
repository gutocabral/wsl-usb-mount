# Montagem de Unidades do Windows no WSL

Este script permite montar drives do Windows no WSL (Windows Subsystem for Linux) facilmente, fornecendo a letra da unidade como argumento (por exemplo, `d` para a unidade D:).

## Como Funciona

O script monta a unidade do Windows (como D:, E:, etc.) no diretório `/mnt/{letra_do_drive}` dentro do WSL, permitindo o acesso aos arquivos dessa unidade diretamente pelo terminal do Linux no WSL.

## Requisitos

- **WSL (Windows Subsystem for Linux)**: Este script é para ser utilizado em ambientes WSL.
- **Permissões de Superusuário (sudo)**: O script precisa de permissões de administrador para criar o diretório de montagem e realizar a montagem da unidade.

## Como Usar

1. **Clone este repositório**:
```bash
git clone https://github.com/seu_usuario/wsl-drive-mount.git
```

2. **Acesse o diretório do repositório**:
```bash
cd wsl-drive-mount
```

3. **Torne o script executável**:
```bash
chmod +x drivemount.sh
```

4. **Execute o script, passando a letra do drive que deseja montar: Exemplo para montar a unidade D**:
```bash
./drivemount.sh d
```

Para outras unidades, substitua a letra do drive conforme necessário (por exemplo, e, f, etc.).

## Como Funciona o Script
- **Verificação de permissões:** O script verifica se você possui permissões de sudo antes de continuar.
- **Criação do diretório de montagem:** Se o diretório de montagem (como /mnt/d) não existir, o script o cria com permissões de superusuário.
- **Montagem do drive:** O script monta a unidade do Windows (D:, E:, etc.) no diretório /mnt/{letra_do_drive} no WSL, permitindo que você acesse os arquivos dessa unidade no seu ambiente Linux.

## Exemplo
Para montar a unidade D:, execute o comando:
```bash
./drivemount.sh d
```

Isso criará o diretório /mnt/d (se não existir) e montará a unidade D: no WSL.
