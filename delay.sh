#!/bin/sh

echo "⏳ Waiting for MySQL to be ready..."
until nc -z $DB_HOST 3306; do
  sleep 1
done

echo "✅ MySQL is ready. Starting server..."
npm run dev
