.class public interface abstract Lcom/oplus/log/uploader/UploadManager$ReportUploaderListener;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ReportUploaderListener"
.end annotation


# virtual methods
.method public abstract onReporterFailed(Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V
.end method

.method public abstract onReporterSuccess(Lcom/oplus/log/uploader/ResponseWrapper;)V
.end method
