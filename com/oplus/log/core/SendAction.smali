.class Lcom/oplus/log/core/SendAction;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public date:Ljava/lang/String;

.field public fileSize:J

.field public sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

.field public uploadPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isValid()Z
    .registers 7

    iget-object v0, p0, Lcom/oplus/log/core/SendAction;->sendLogRunnable:Lcom/oplus/log/core/SendLogRunnable;

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    goto :goto_10

    :cond_6
    iget-wide v2, p0, Lcom/oplus/log/core/SendAction;->fileSize:J

    const-wide/16 v4, 0x0

    cmp-long p0, v2, v4

    if-lez p0, :cond_f

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return v1
.end method
