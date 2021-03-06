from .base import BaseCommand


class SnapshotStatusCommand(BaseCommand):
    command_name = "elasticsearch:snapshot-status"

    def is_enabled(self):
        return True

    def run_request(self, repository=None, snapshot=None, **kwargs):
        if not repository:
            self.show_repository_list_panel(self.run)
            return

        if not snapshot:
            self.show_snapshot_list_panel(repository, self.run)
            return

        options = dict(
            repository=repository,
            snapshot=snapshot
        )

        return self.client.snapshot.status(**options)
