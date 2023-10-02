# Restore

## How to restore your configuration

Define an environment variable that points to the forked repository

```bash
export $REPOSITORY="~/path-to-your-forked-repository"
```

Run the `restore.yaml` playbook

```bash
cd $REPOSITORY
ansible-playbook $REPOSITORY/restore.yaml -e "project_path=$REPOSITORY"
```

## Caveats

I am not yet able to automatically restore the configuration for all of the applications that I use.
### Contexts

I have not found a way to restore Contexts configuration.