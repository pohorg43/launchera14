.class Lcom/oplus/log/uploader/UploadManager$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/FileZipper$OnZipFileListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/uploader/UploadManager;->uploadFile(Lcom/oplus/log/uploader/UploadManager$UploadBody;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/uploader/UploadManager;

.field public final synthetic val$body:Lcom/oplus/log/uploader/UploadManager$UploadBody;


# direct methods
.method public constructor <init>(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;)V
    .registers 3

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$1;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iput-object p2, p0, Lcom/oplus/log/uploader/UploadManager$1;->val$body:Lcom/oplus/log/uploader/UploadManager$UploadBody;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onZipError(ILjava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$1;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$1;->val$body:Lcom/oplus/log/uploader/UploadManager$UploadBody;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->access$100(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/lang/String;)V

    return-void
.end method

.method public onZipOk(ILjava/io/File;)V
    .registers 4

    iget-object v0, p0, Lcom/oplus/log/uploader/UploadManager$1;->this$0:Lcom/oplus/log/uploader/UploadManager;

    iget-object p0, p0, Lcom/oplus/log/uploader/UploadManager$1;->val$body:Lcom/oplus/log/uploader/UploadManager$UploadBody;

    invoke-static {v0, p0, p1, p2}, Lcom/oplus/log/uploader/UploadManager;->access$000(Lcom/oplus/log/uploader/UploadManager;Lcom/oplus/log/uploader/UploadManager$UploadBody;ILjava/io/File;)V

    return-void
.end method
