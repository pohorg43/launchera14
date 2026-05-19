.class public Lcom/oplus/log/uploader/UploadManager$ReportBody;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/uploader/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ReportBody"
.end annotation


# instance fields
.field public MDPName:Ljava/lang/String;

.field public MDPValue:Ljava/lang/String;

.field public business:Ljava/lang/String;

.field public endTime:J

.field public reportReason:Ljava/lang/String;

.field public specificId:Ljava/lang/String;

.field public startTime:J

.field public subType:Ljava/lang/String;

.field public useWifi:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JJZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->business:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->startTime:J

    iput-wide p4, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->endTime:J

    iput-boolean p6, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->useWifi:Z

    iput-object p7, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->specificId:Ljava/lang/String;

    iput-object p8, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->subType:Ljava/lang/String;

    iput-object p9, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPName:Ljava/lang/String;

    iput-object p10, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->reportReason:Ljava/lang/String;

    iput-object p11, p0, Lcom/oplus/log/uploader/UploadManager$ReportBody;->MDPValue:Ljava/lang/String;

    return-void
.end method
