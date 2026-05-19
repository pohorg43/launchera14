.class public abstract Lcom/oplus/log/core/SendLogRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;
    }
.end annotation


# static fields
.field public static final FINISH:I = 0x2712

.field public static final SENDING:I = 0x2711


# instance fields
.field private mCallBackListener:Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;

.field private mSendAction:Lcom/oplus/log/core/SendAction;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    iget-object p0, p0, Lcom/oplus/log/core/SendLogRunnable;->mCallBackListener:Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;

    if-eqz p0, :cond_9

    const/16 v0, 0x2712

    invoke-interface {p0, v0}, Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;->onCallBack(I)V

    :cond_9
    return-void
.end method

.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/log/core/SendLogRunnable;->mSendAction:Lcom/oplus/log/core/SendAction;

    if-eqz v0, :cond_28

    iget-object v0, v0, Lcom/oplus/log/core/SendAction;->date:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_28

    :cond_d
    iget-object v0, p0, Lcom/oplus/log/core/SendLogRunnable;->mSendAction:Lcom/oplus/log/core/SendAction;

    iget-object v0, v0, Lcom/oplus/log/core/SendAction;->uploadPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/oplus/log/core/SendLogRunnable;->finish()V

    return-void

    :cond_1b
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/oplus/log/core/SendLogRunnable;->mSendAction:Lcom/oplus/log/core/SendAction;

    iget-object v1, v1, Lcom/oplus/log/core/SendAction;->uploadPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/oplus/log/core/SendLogRunnable;->sendLog(Ljava/io/File;)V

    return-void

    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/oplus/log/core/SendLogRunnable;->finish()V

    return-void
.end method

.method public abstract sendLog(Ljava/io/File;)V
.end method

.method public setCallBackListener(Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/SendLogRunnable;->mCallBackListener:Lcom/oplus/log/core/SendLogRunnable$OnSendLogCallBackListener;

    return-void
.end method

.method public setSendAction(Lcom/oplus/log/core/SendAction;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/core/SendLogRunnable;->mSendAction:Lcom/oplus/log/core/SendAction;

    return-void
.end method
