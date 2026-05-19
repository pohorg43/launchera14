.class Lcom/oplus/log/uploader/UploadManager$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/core/LoganModel$OnActionCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/uploader/UploadManager;->reportUploadFile(Lcom/oplus/log/uploader/UploadManager$ReportBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/uploader/UploadManager;

.field public final synthetic val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager$2;->val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 12

    invoke-static {}, Lcom/oplus/log/HLog;->getFlushCallback()Lcom/oplus/log/Settings$IFlushCallback;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-interface {v0}, Lcom/oplus/log/Settings$IFlushCallback;->flushAllProcess()V

    :cond_9
    const-wide/16 v0, 0x1f4

    :try_start_b
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_b .. :try_end_e} :catch_37

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;

    iget-wide v1, v0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->startTime:J

    iget-wide v3, v0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->endTime:J

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-static {v0}, Lcom/oplus/log/uploader/UploadManager;->access$200(Lcom/oplus/log/uploader/UploadManager;)Lcom/oplus/log/Settings;

    move-result-object v5

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-static {v0}, Lcom/oplus/log/uploader/UploadManager;->access$300(Lcom/oplus/log/uploader/UploadManager;)Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;

    iget-object v7, v0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-static {v0}, Lcom/oplus/log/uploader/UploadManager;->access$400(Lcom/oplus/log/uploader/UploadManager;)Lcom/oplus/log/config/DynConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/log/config/DynConfigManager;->getZipMaxFile()J

    move-result-wide v8

    new-instance v10, Lcom/oplus/log/uploader/UploadManager$2$1;

    invoke-direct {v10, p0}, Lcom/oplus/log/uploader/UploadManager$2$1;-><init>(Lcom/oplus/log/uploader/UploadManager$2;)V

    invoke-static/range {v1 .. v10}, Lcom/oplus/log/uploader/FileZipper;->makeUploadFiles(JJLcom/oplus/log/Settings;Ljava/lang/String;Ljava/lang/String;JLcom/oplus/log/uploader/FileZipper$OnZipFileListener;)V

    return-void

    :catch_37
    move-exception p0

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
