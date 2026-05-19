.class final Lcom/oplus/log/HLog$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/UploadManager$UploadCheckerForCdnListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/HLog;->innerCheckUpload()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDontNeedUpload(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Don\'t need to upload log,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NearX-HLog"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onNeedUpload(Ly3/a;)V
    .registers 2

    const/4 p0, 0x1

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->innerUpload(Ly3/a;Z)V

    return-void
.end method
