provider "github" {
  token = "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"
}

resource "github_repository" "repo7" {
  name        = "Nginx-Dockerfile"
  description = "Dockerfile for Nginx with Project"
  visibility  = "public"
}

resource "github_repository" "repo6" {
  name        = "Java-Dockerfile"
  description = "Dockerfile for Java with Project"
  visibility  = "public"
}

resource "github_repository" "repo2" {
  name        = "NodeJS-Dockerfile"
  description = "Dockerfile for NodeJS with Project"
  visibility  = "public"
}

resource "github_repository" "repo3" {
  name        = "Python-Dockerfile"
  description = "Dockerfile for Python with Project"
  visibility  = "public"
}

resource "github_repository" "repo4" {
  name        = "Springboot-Dockerfile"
  description = "Dockerfile for SpringBoo with Project"
  visibility  = "public"
}

resource "github_repository" "repo5" {
  name        = "Tomcat-Dockerfile"
  description = "Dockerfile for Tomcat with Project"
  visibility  = "public"
}