FROM python:3.9-bookworm

ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

WORKDIR /app

COPY requirements.txt /app/
RUN pip install --no-cache-dir -r requirements.txt

# EXPOSE 6969

# HEALTHCHECK --interval=30s --timeout=10s \
#   CMD curl -f http://localhost:8000/health/ || exit 1

CMD ["python3", "manage.py", "runserver", "0.0.0.0:8000"]
