.class public interface abstract Lcom/oplus/log/appender/IAppender;
.super Ljava/lang/Object;
.source ""


# virtual methods
.method public abstract append(Lcom/oplus/log/collect/LoggingEvent;)V
.end method

.method public abstract appendSync(Lcom/oplus/log/collect/LoggingEvent;)V
.end method

.method public abstract appenderFlush(Z)V
.end method

.method public abstract checkAndUpload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/log/uploader/UploadManager;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract exit()V
.end method

.method public abstract getSettings()Lcom/oplus/log/Settings;
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setSettings(Lcom/oplus/log/Settings;)V
.end method

.method public abstract upload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;JJZ)V
.end method

.method public abstract upload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/util/Map;JJZLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/log/uploader/UploadManager;",
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
