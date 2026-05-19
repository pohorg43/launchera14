.class public Lcom/oplus/log/uploader/UploadManager$UploadBody;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UploadBody"
.end annotation


# instance fields
.field public business:Ljava/lang/String;

.field public endTime:J

.field public startTime:J

.field public subType:Ljava/lang/String;

.field public traceId:Ljava/lang/String;

.field public useWifi:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->business:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->startTime:J

    iput-wide p4, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->endTime:J

    iput-boolean p6, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->useWifi:Z

    iput-object p7, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->traceId:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/log/uploader/UploadManager$UploadBody;->subType:Ljava/lang/String;

    return-void
.end method
