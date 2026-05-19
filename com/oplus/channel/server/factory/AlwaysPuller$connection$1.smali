.class public final Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ServiceConnection;


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
        "\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0007\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016J\u0012\u0010\b\u001a\u00020\u00062\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\t"
    }
    d2 = {
        "com/oplus/channel/server/factory/AlwaysPuller$connection$1",
        "Landroid/content/ServiceConnection;",
        "Landroid/content/ComponentName;",
        "name",
        "Landroid/os/IBinder;",
        "service",
        "Lh4/z;",
        "onServiceConnected",
        "onServiceDisconnected",
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

    iput-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 1

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->onServiceDisconnected$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void
.end method

.method private static final onServiceDisconnected$lambda-0(Lcom/oplus/channel/server/factory/AlwaysPuller;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$isDestroyed$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientConfig()Lcom/oplus/channel/server/ClientConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/channel/server/ClientConfig;->getNeedKeepAlive()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$rebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    :cond_18
    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceConnected name=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], clientName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-virtual {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", service=["

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], rebindCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AlwaysPuller"

    invoke-static {p2, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$setRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p0, p2}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$setCheckRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .registers 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onServiceDisconnected name=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "], clientName="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-virtual {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->getClientName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", rebindCount="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AlwaysPuller"

    invoke-static {v0, p1}, Lcom/oplus/channel/server/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I

    move-result p1

    const/4 v1, 0x5

    if-le p1, v1, :cond_41

    const-string p0, "onServiceDisconnected: reach the max rebind count, return"

    invoke-static {v0, p0}, Lcom/oplus/channel/server/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_41
    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getHandler$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)Landroid/os/Handler;

    move-result-object p1

    if-nez p1, :cond_4a

    goto :goto_5c

    :cond_4a
    iget-object v0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    new-instance v1, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    invoke-static {v0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I

    move-result v0

    int-to-long v2, v0

    const-wide/16 v4, 0x7d0

    mul-long/2addr v2, v4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_5c
    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p1}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$getRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$setRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V

    iget-object p1, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$setCheckRebindCount$p(Lcom/oplus/channel/server/factory/AlwaysPuller;I)V

    iget-object p0, p0, Lcom/oplus/channel/server/factory/AlwaysPuller$connection$1;->this$0:Lcom/oplus/channel/server/factory/AlwaysPuller;

    invoke-static {p0}, Lcom/oplus/channel/server/factory/AlwaysPuller;->access$checkRebindClient(Lcom/oplus/channel/server/factory/AlwaysPuller;)V

    return-void
.end method
