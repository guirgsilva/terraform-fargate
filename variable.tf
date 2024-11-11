# variables.tf

// AWS access key for authentication
variable "aws_access_key" {
    description = "The IAM public access key"
}

// AWS secret key for authentication
variable "aws_secret_key" {
    description = "IAM secret access key"
}

// AWS region where resources will be created
variable "aws_region" {
    description = "The AWS region things are created in"
}

// Name of the ECS task execution role
variable "ec2_task_execution_role_name" {
    description = "ECS task execution role name"
    default = "myEcsTaskExecutionRole"
}

// Name of the ECS auto scale role
variable "ecs_auto_scale_role_name" {
    description = "ECS auto scale role name"
    default = "myEcsAutoScaleRole"
}

// Number of Availability Zones to use
variable "az_count" {
    description = "Number of AZs to cover in a given region"
    default = "2"
}

// Docker image for the application
variable "app_image" {
    description = "Docker image to run in the ECS cluster"
    default = "bradfordhamilton/crystal_blockchain:latest"
}

// Port on which the application will run
variable "app_port" {
    description = "Port exposed by the docker image to redirect traffic to"
    default = 3000
}

// Number of application containers to run
variable "app_count" {
    description = "Number of docker containers to run"
    default = 3
}

// Path for health check
variable "health_check_path" {
  default = "/"
}

// CPU units for Fargate instances
variable "fargate_cpu" {
    description = "Fargate instance CPU units to provision (1 vCPU = 1024 CPU units)"
    default = "1024"
}

// Memory for Fargate instances
variable "fargate_memory" {
    description = "Fargate instance memory to provision (in MiB)"
    default = "2048"
}