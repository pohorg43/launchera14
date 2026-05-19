.class public Lcom/oplus/log/appender/FileAppender;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/appender/IAppender;


# static fields
.field public static final LIMIT_FILE_NUM:I = 0x64

.field public static final LIMIT_FILE_TIME:J = 0x240c8400L

.field public static final LIMIT_LOG_NUMBER:I = 0xa


# instance fields
.field private mSettings:Lcom/oplus/log/Settings;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public append(Lcom/oplus/log/collect/LoggingEvent;)V
    .registers 2

    return-void
.end method

.method public appendSync(Lcom/oplus/log/collect/LoggingEvent;)V
    .registers 2

    return-void
.end method

.method public appenderFlush(Z)V
    .registers 2

    return-void
.end method

.method public checkAndUpload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
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

    return-void
.end method

.method public exit()V
    .registers 1

    return-void
.end method

.method public getSettings()Lcom/oplus/log/Settings;
    .registers 1

    iget-object p0, p0, Lcom/oplus/log/appender/FileAppender;->mSettings:Lcom/oplus/log/Settings;

    return-object p0
.end method

.method public setName(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public setSettings(Lcom/oplus/log/Settings;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/appender/FileAppender;->mSettings:Lcom/oplus/log/Settings;

    return-void
.end method

.method public upload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 9

    return-void
.end method

.method public upload(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/util/Map;JJZLjava/lang/String;)V
    .registers 10
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

    return-void
.end method
