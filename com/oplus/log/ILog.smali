.class public interface abstract Lcom/oplus/log/ILog;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract checkUpload(Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract d(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract e(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract exit()V
.end method

.method public abstract flush(Z)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract i(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract init(Landroid/content/Context;)V
.end method

.method public abstract initUploaderManager(Lcom/oplus/log/uploader/IHttpDelegate;)V
.end method

.method public abstract setSettings(Lcom/oplus/log/Settings;)V
.end method

.method public abstract setUploaderListener(Lcom/oplus/log/uploader/UploadManager$UploaderListener;)V
.end method

.method public abstract statAppenderFlush(Z)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract statAppenderOpen(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract statWrite(Ljava/lang/String;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract upload(Ljava/lang/String;Ljava/lang/String;JJZ)V
.end method

.method public abstract upload(Ljava/lang/String;Ljava/util/Map;JJZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;JJZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract v(Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract w(Ljava/lang/String;Ljava/lang/String;Z)V
.end method
