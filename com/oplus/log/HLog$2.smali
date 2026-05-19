.class final Lcom/oplus/log/HLog$2;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/log/uploader/UploadManager$UploaderListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/HLog;->innerUpload(Ly3/a;Z)V
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
.method public onUploaderFailed(Ljava/lang/String;)V
    .registers 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "HLog failed to upload Log,"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NearX-HLog"

    invoke-static {p1, p0}, Lcom/oplus/log/HLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onUploaderSuccess()V
    .registers 2

    const-string p0, "NearX-HLog"

    const-string v0, "HLog has uploaded successfully."

    invoke-static {p0, v0}, Lcom/oplus/log/HLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
