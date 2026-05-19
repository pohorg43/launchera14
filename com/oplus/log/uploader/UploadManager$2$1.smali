.class Lcom/oplus/log/uploader/UploadManager$2$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/uploader/UploadManager$2;->onComplete()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/oplus/log/uploader/UploadManager$2;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager$2;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$2$1;->this$1:Lcom/oplus/log/uploader/UploadManager$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZipError(ILjava/lang/String;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$2$1;->this$1:Lcom/oplus/log/uploader/UploadManager$2;

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$2;->val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->access$600(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/lang/String;)V

    return-void
.end method

.method public onZipOk(ILjava/io/File;)V
    .registers 4

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$2$1;->this$1:Lcom/oplus/log/uploader/UploadManager$2;

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$2;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$2;->val$body:Lcom/oplus/log/uploader/UploadManager$ReportBody;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->access$500(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$ReportBody;ILjava/io/File;)V

    return-void
.end method
