.class public final Lcom/oplus/channel/server/factory/AlwaysPuller$handlerThread$1;
.super Landroid/os/HandlerThread;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/channel/server/factory/AlwaysPuller;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/oplus/channel/server/ClientConfig;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0011\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\b\u0010\u0003\u001a\u00020\u0002H\u0014¨\u0006\u0004"
    }
    d2 = {
        "com/oplus/channel/server/factory/AlwaysPuller$handlerThread$1",
        "Landroid/os/HandlerThread;",
        "Lh4/z;",
        "onLooperPrepared",
        "server_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;


# direct methods
.method public constructor <init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$handlerThread$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    const-string p1, "AlwaysPuller"

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onLooperPrepared()V
    .registers 3

    const-string v0, "AlwaysPuller"

    const-string v1, "onLooperPrepared."

    invoke-static {v0, v1}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V

    iget-object v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$handlerThread$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-static {v0, v1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$setHandler$p(Lcom/oplus/channel/server/factory/AlwaysPuller;Landroid/os/Handler;)V

    return-void
.end method
