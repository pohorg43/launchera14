.class public interface abstract Lcom/oplus/log/uploader/IHttpDelegate;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract checkUpload(Ljava/lang/String;)Ly3/a;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract uploadCode(Ljava/lang/String;)Lcom/oplus/log/uploader/ResponseWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract uploadFile(Ljava/lang/String;Ljava/io/File;)Lcom/oplus/log/uploader/ResponseWrapper;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
