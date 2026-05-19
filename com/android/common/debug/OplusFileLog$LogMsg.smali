.class Lcom/android/common/debug/OplusFileLog$LogMsg;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/common/debug/OplusFileLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LogMsg"
.end annotation


# instance fields
.field public append:Z

.field public fileLogInfo:Lcom/android/common/debug/FileLogHelper$FileLogInfo;

.field public printInfo:Ljava/lang/String;

.field public targetFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/common/debug/OplusFileLog$LogMsg;->append:Z

    iput-object p1, p0, Lcom/android/common/debug/OplusFileLog$LogMsg;->printInfo:Ljava/lang/String;

    return-void
.end method
