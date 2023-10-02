# Backup 

## How to backup your configuration

Define an environment variable that points to the forked repository

```bash
export $REPOSITORY="~/path-to-your-forked-repository"
```

Run the `backup.yaml` playbook

```bash
cd $REPOSITORY
ansible-playbook $REPOSITORY/backup.yaml -e "project_path=$REPOSITORY"
```

## Caveats

I am not yet able to automatically backup the configuration for all of the applications that I use.

### Contexts

I have not found a way to backup Contexts configuration

### Rectangle-pro

- You must export the configuration for Retangle-Pro before running the `backup.yaml` playbook. Another option is open rectangle-pro preferences, settings and select "Sync configuration to iCloud".
  