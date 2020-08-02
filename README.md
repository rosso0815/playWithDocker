# lets play with Docker
Serrver

docker run -p 9000:9000 --name minio1 -v /Users/pfistera/workspace/ap-docker/server/data:/data minio/minio server /data

docker run -p 9000:9000 --name minio-s3 \
    -v /Users/pfistera/workspace/ap-docker/server/data:/data \
    -e "MINIO_ACCESS_KEY=aws_s3_access_key" \
    -e "MINIO_SECRET_KEY=aws_s3_secret_key" \
    minio/minio server /data

export MINIO_ACCESS_KEY=aws_s3_access_key
export MINIO_SECRET_KEY=miniosaws_s3_secret_keytorage

export MINIO_ACCESS_KEY=newminio
export MINIO_SECRET_KEY=newminio123
export MINIO_ACCESS_KEY_OLD=minio
export MINIO_SECRET_KEY_OLD=minio123
minio server ./data/

mc config host add minio http://127.0.0.1:9000 aws_s3_access_key aws_s3_secret_key