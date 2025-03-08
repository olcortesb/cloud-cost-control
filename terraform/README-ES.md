# Guía para Iniciar en la Nube con Terraform

## 🌟 Introducción a Terraform
Terraform es una herramienta de infraestructura como código (IaC) que permite definir, provisionar y gestionar infraestructura en la nube de manera declarativa. Con Terraform, puedes crear y administrar recursos en diferentes proveedores de nube como AWS, Azure y Google Cloud.

## 📚 Requisitos Previos
Antes de comenzar, asegúrate de tener lo siguiente:

1. **Terraform instalado**: Puedes descargarlo desde [HashiCorp Terraform](https://developer.hashicorp.com/terraform/downloads)
2. **Cuenta en un proveedor de nube**: (AWS, Azure, Google Cloud, etc.)
3. **Credenciales configuradas**: Terraform necesita permisos para desplegar recursos en la nube.

## 🌐 Instalación de Terraform

### Windows
1. Descarga el binario de Terraform desde el sitio oficial.
2. Extrae el binario y agrégalo al `PATH` del sistema.
3. Verifica la instalación con:
   ```sh
   terraform version
   ```

### macOS/Linux
1. Usa Homebrew en macOS:
   ```sh
   brew tap hashicorp/tap
   brew install hashicorp/tap/terraform
   ```
2. En Linux, usa `wget` y mueve el binario a `/usr/local/bin`:
   ```sh
   wget https://releases.hashicorp.com/terraform/X.Y.Z/terraform_X.Y.Z_linux_amd64.zip
   unzip terraform_X.Y.Z_linux_amd64.zip
   sudo mv terraform /usr/local/bin/
   ```

## 🛠️ Primeros Pasos con Terraform

### 1. Inicializar un Proyecto Terraform
Crea una carpeta para tu proyecto y dentro de ella, un archivo `main.tf` con la configuración de infraestructura deseada.

```sh
mkdir mi-proyecto-terraform
cd mi-proyecto-terraform
```

### 2. Escribir la Configuración
Ejemplo de un archivo `main.tf` para definir un presupuesto en AWS:

```hcl
provider "aws" {
  region = "us-east-1"
}

resource "aws_budgets_budget" "mi_presupuesto" {
  name              = "Presupuesto Mensual"
  budget_type       = "COST"
  limit_amount      = "100"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  notification {
    comparison_operator = "GREATER_THAN"
    threshold           = 90
    threshold_type      = "PERCENTAGE"
    notification_type   = "ACTUAL"
    subscriber_email_addresses = ["tu-email@example.com"]
  }
}
```

### 3. Inicializar Terraform
Ejecuta:
```sh
terraform init
```
Esto descargará los plugins necesarios para el proveedor de nube.

### 4. Planificar la Infraestructura
```sh
terraform plan
```
Esto muestra un resumen de los cambios que se aplicarán.

### 5. Aplicar la Configuración
```sh
terraform apply
```
Confirma con `yes` cuando se te pida.

### 6. Destruir Recursos (Opcional)
Si deseas eliminar los recursos creados, usa:
```sh
terraform destroy
```

## 📄 Recursos Adicionales
- Documentación oficial: [Terraform Docs](https://developer.hashicorp.com/terraform/docs)
- Tutoriales prácticos: [Learn Terraform](https://learn.hashicorp.com/terraform)
- Códigos de ejemplo: [GitHub Terraform Examples](https://github.com/hashicorp/terraform-provider-aws/tree/main/examples)