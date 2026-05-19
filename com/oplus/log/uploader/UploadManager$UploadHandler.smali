.class public Lcom/oplus/log/uploader/UploadManager$UploadHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UploadHandler"
.end annotation


# instance fields
.field public settings:Lcom/oplus/log/Settings;

.field public final synthetic this$0:Lcom/oplus/log/uploader/UploadManager;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method

.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Landroid/os/Looper;Lcom/oplus/log/Settings;)V
    .registers 4

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->settings:Lcom/oplus/log/Settings;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez p1, :cond_8

    return-void

    :cond_8
    instance-of v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;

    if-eqz v0, :cond_25

    check-cast p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;

    invoke-static {}, Lcom/oplus/log/util/SPUtil;->getInstance()Lcom/oplus/log/util/SPUtil;

    move-result-object v0

    iget-object v1, p1, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oplus/log/util/SPUtil;->hasBeenUpload(J)Z

    move-result v0

    if-eqz v0, :cond_1f

    return-void

    :cond_1f
    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-static {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->access$700(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;)V

    goto :goto_56

    :cond_25
    instance-of v0, p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;

    if-eqz v0, :cond_31

    check-cast p1, Lcom/oplus/log/uploader/UploadManager$ReportBody;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    invoke-static {p0, p1}, Lcom/oplus/log/uploader/UploadManager;->access$800(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;)V

    goto :goto_56

    :cond_31
    instance-of v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;

    if-eqz v0, :cond_43

    check-cast p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->business:Ljava/lang/String;

    iget-object v1, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->subType:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckBody;->uploadCheckerListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;

    invoke-static {p0, v0, v1, p1}, Lcom/oplus/log/uploader/UploadManager;->access$900(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerListener;)V

    goto :goto_56

    :cond_43
    instance-of v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;

    if-eqz v0, :cond_56

    check-cast p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$UploadHandler;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object v0, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->business:Ljava/lang/String;

    iget-object p1, p1, Lcom/oplus/log/uploader/UploadManager$UploadCheckForCdnBody;->uploadCheckerForCdnListener:Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;

    invoke-static {}, Lcom/oplus/log/util/AppUtil;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {p0, v0, p1, v1}, Lcom/oplus/log/uploader/UploadManager;->access$1000(Lcom/oplus/log/uploader/UploadManager;Ljava/lang/String;Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;Landroid/content/Context;)V

    :cond_56
    :goto_56
    return-void
.end method
