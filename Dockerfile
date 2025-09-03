FROM python:3.9-slim
WORKDIR /app
# Install deps
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy app code
COPY app.py .

# Flush logs immediately
ENV PYTHONUNBUFFERED=1

# Correct exec-form CMD (each arg in quotes)
CMD ['python', 'app.py']
