package main

import (
	"os/exec"
	"log"
	"fmt"
	"bytes"
	"errors"
)

func main() {
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
