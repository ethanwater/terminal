package main

import (
	"bytes"
	"errors"
	"fmt"
	"log"
	"os/exec"
	"path/filepath"
)

func main() {
	archiveOriginRepositories()
}

func archiveOriginRepositories() {
	fmt.Println("🌐 Archiving origin repositories...")
	repositories := fetchLocalUserRepositories()	
	for _, repository := range repositories {
		fmt.Print(repository, "...")
		err := downloadRepository(repository); if err != nil {
			fmt.Print("    already installed ✅\n")
			continue
		}
		fmt.Print("    done ⭐\n")
	}
}

func fetchOriginRepositories() {
	fmt.Println("🌐 Updating origin repositories...")
	repositories := fetchLocalUserRepositories()
	for _, repository := range repositories {
		fmt.Println(repository, "...")	
		err := updateRepository(repository); if err != nil {
			fmt.Print("    already installed ✅\n")
			continue
		}					
		fmt.Print("    done ⭐\n")
	}
}

func fetchLocalUserRepositories() []string {
	out, err := exec.Command("gh", "repo", "list").Output()
	if err != nil {
		log.Fatal(err)
	}

	outputResponse := bytes.Split(out, []byte("\n"))
	var repositories []string

	for _, repoDesc := range outputResponse {
		fields := bytes.Fields(repoDesc)
		if len(fields) > 0 {
			repositories = append(repositories, string(fields[0]))
		}
	}

	return repositories
}

func downloadRepository(repositoryName string) error {
	cmd := exec.Command("gh", "repo", "clone", repositoryName)
	err := cmd.Run()
	if err != nil {
		return errors.New("fuck!")
	}
	return nil
}

func updateRepository(repositoryName string) error {
	archiveDirectory, err := filepath.Abs(".") 
	if err != nil {
		return errors.New("unable to detect current working directory")
	}

	directToRepositoryCmd := exec.Command("cd", "repositoryName")
	err = directToRepositoryCmd.Run(); if err != nil {
		return errors.New("failed to direct to repository")
	}

	pullOriginCmd := exec.Command("gh", "pull", "origin", "main")
	err = pullOriginCmd.Run(); if err != nil {
		return errors.New("repository already to date")
	}

	returnToArchiveCmd := exec.Command("cd", string(archiveDirectory))
	err = returnToArchiveCmd.Run(); if err != nil {
		return errors.New("fuck man we're lost'")
	}

	return nil
}

