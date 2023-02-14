DATADIRS = var/minio_data \
					 var/receiver1_data \
					 var/receiver2_data


$(DATADIRS):
	mkdir -p $(DATADIRS)

up: clean $(DATADIRS)
	podman-compose up --force-recreate -d --remove-orphans

down:
	podman-compose down

clean:
	rm -rf $(DATADIRS)
