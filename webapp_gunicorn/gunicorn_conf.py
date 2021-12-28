def worker_exit(server, worker):
    from prometheus_client import multiprocess

    # Defined in https://github.com/prometheus/client_python#multiprocess-mode-eg-gunicorn
    multiprocess.mark_process_dead(worker.pid)