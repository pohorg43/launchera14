.class public Lcom/oplus/log/appender/Layout/BitmapLayout;
.super Lcom/oplus/log/appender/Layout/Layout;
.source ""


# instance fields
.field private mLimitBitmapNumber:I

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0}, Lcom/oplus/log/appender/Layout/Layout;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/appender/Layout/BitmapLayout;->mUrl:Ljava/lang/String;

    iput p2, p0, Lcom/oplus/log/appender/Layout/BitmapLayout;->mLimitBitmapNumber:I

    return-void
.end method

.method private getFileList(Ljava/lang/String;)[Ljava/io/File;
    .registers 2

    invoke-static {p1}, Lcom/oplus/log/util/FileUtil;->getDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_8

    const/4 p0, 0x0

    return-object p0

    :cond_8
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method private getMessage(Lcom/oplus/log/collect/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p2, :cond_4

    const/4 p0, 0x0

    return-object p0

    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Lcom/oplus/log/appender/Layout/Layout;->getExtra(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "url"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private writeBitmap(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/oplus/log/appender/Layout/BitmapLayout;->mUrl:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "opluslog_"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getTimeStamp()J

    move-result-wide p0

    const-string v2, "yyyy_MM_dd_HH_mm_ss"

    invoke-static {p0, p1, v2}, Lcom/oplus/log/util/BaseInfoUtil;->convertTimeForName(JLjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :try_start_27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/log/util/FileUtil;->getFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object p0

    new-instance p1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    sget-object p0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x50

    invoke-virtual {v0, p0, v2, p1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_49
    .catchall {:try_start_27 .. :try_end_49} :catchall_4e

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catchall_4e
    move-exception p0

    const-string p1, "writeBitmap : "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BitmapLayout"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "snapshot save failed!"

    return-object p0
.end method


# virtual methods
.method public format(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;
    .registers 11

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4e

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getMessage()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/Bitmap;

    if-nez v0, :cond_10

    goto :goto_4e

    :cond_10
    iget-object v0, p0, Lcom/oplus/log/appender/Layout/BitmapLayout;->mUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oplus/log/appender/Layout/BitmapLayout;->getFileList(Ljava/lang/String;)[Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_19

    return-object v1

    :cond_19
    array-length v2, v0

    iget v3, p0, Lcom/oplus/log/appender/Layout/BitmapLayout;->mLimitBitmapNumber:I

    if-lt v2, v3, :cond_21

    invoke-static {v0}, Lcom/oplus/log/util/FileUtil;->deleteEarlyFile([Ljava/io/File;)V

    :cond_21
    invoke-direct {p0, p1}, Lcom/oplus/log/appender/Layout/BitmapLayout;->writeBitmap(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/oplus/log/appender/Layout/BitmapLayout;->getMessage(Lcom/oplus/log/collect/LoggingEvent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2c

    return-object v1

    :cond_2c
    new-instance p0, Lcom/oplus/log/collect/LoggingEvent;

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/oplus/log/collect/LoggingEvent;->getPriority()B

    move-result v5

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    new-instance p1, Lcom/oplus/log/appender/Layout/VerticalLayout;

    invoke-direct {p1}, Lcom/oplus/log/appender/Layout/VerticalLayout;-><init>()V

    invoke-virtual {p1, p0}, Lcom/oplus/log/appender/Layout/VerticalLayout;->format(Lcom/oplus/log/collect/LoggingEvent;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_4e
    :goto_4e
    return-object v1
.end method
