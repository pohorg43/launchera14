.class public abstract Lcom/oplus/quickstep/utils/SimpleCancellableTask;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private volatile mCancelled:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final cancel()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->mCancelled:Z

    return-void
.end method

.method public abstract doRun()V
.end method

.method public run()V
    .registers 2

    iget-boolean v0, p0, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->mCancelled:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SimpleCancellableTask;->doRun()V

    return-void
.end method
