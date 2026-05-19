.class public Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;
.super Lcom/oplus/util/OplusConsumer;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/views/RecentsView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TaskLaunchEndCallBack"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oplus/util/OplusConsumer<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private final mCreateTimeMillis:J

.field private final mLaunchTaskId:I


# direct methods
.method public constructor <init>(Ljava/util/function/Consumer;I)V
    .registers 3
    .param p1  # Ljava/util/function/Consumer;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/oplus/util/OplusConsumer;-><init>(Ljava/util/function/Consumer;)V

    iput p2, p0, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->mLaunchTaskId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->mCreateTimeMillis:J

    return-void
.end method


# virtual methods
.method public getLaunchTaskId()I
    .registers 1

    iget p0, p0, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->mLaunchTaskId:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const-string v0, "TaskLaunchEndCallBack["

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->mCreateTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/quickstep/views/RecentsView$TaskLaunchEndCallBack;->mLaunchTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/util/OplusConsumer;->isAccepted()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
