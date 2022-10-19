import org.jetbrains.kotlin.gradle.tasks.KotlinCompile

plugins {
    kotlin("jvm") version "1.7.10"
    id("org.springframework.boot") version "2.7.2"
    id("org.jetbrains.kotlin.plugin.spring") version "1.7.10"
    id("org.jetbrains.kotlin.plugin.jpa") version "1.7.10"
}

apply(plugin = "io.spring.dependency-management")

group = "com.epam.dogs"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.6.4")
    implementation("com.fasterxml.jackson.module:jackson-module-kotlin:2.13.3")

    implementation("org.springframework.boot:spring-boot-starter-data-r2dbc")
    implementation("org.springframework.boot:spring-boot-starter-webflux")
    implementation("org.jetbrains.kotlinx:kotlinx-coroutines-core:1.6.4")
    implementation("org.postgresql:r2dbc-postgresql:0.9.1.RELEASE")
    implementation("org.postgresql:postgresql:42.4.1")
    implementation("org.springframework.boot:spring-boot-starter-data-r2dbc")
    implementation("org.flywaydb:flyway-core:9.1.2")

    runtimeOnly("org.jetbrains.kotlin:kotlin-reflect")
    runtimeOnly("org.jetbrains.kotlinx:kotlinx-coroutines-reactor:1.6.4")
    runtimeOnly("org.jetbrains.kotlinx:kotlinx-coroutines-reactive:1.6.4")

    testImplementation(kotlin("test"))
}

tasks.test {
    useJUnitPlatform()
}

tasks.withType<KotlinCompile> {
    kotlinOptions.jvmTarget = "17"
}
