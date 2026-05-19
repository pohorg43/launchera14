.class Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/collect/auto/NetworkChangeCollect;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/collect/auto/NetworkChangeCollect;


# direct methods
.method public constructor <init>(Lcom/oplus/log/collect/auto/NetworkChangeCollect;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;->this$0:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    iget-object v0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;->this$0:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    invoke-static {v0}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->access$000(Lcom/oplus/log/collect/auto/NetworkChangeCollect;)Lcom/oplus/log/log/ICollectLog;

    move-result-object v0

    if-eqz v0, :cond_27

    new-instance v0, Lcom/oplus/log/collect/LoggingEvent;

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->getNetWorkInfo()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-string v2, "Network_Info"

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    iget-object v1, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;->this$0:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    invoke-static {v1}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->access$000(Lcom/oplus/log/collect/auto/NetworkChangeCollect;)Lcom/oplus/log/log/ICollectLog;

    move-result-object v1

    iget-object p0, p0, Lcom/oplus/log/collect/auto/NetworkChangeCollect$1;->this$0:Lcom/oplus/log/collect/auto/NetworkChangeCollect;

    invoke-virtual {p0}, Lcom/oplus/log/collect/auto/NetworkChangeCollect;->getLogType()I

    move-result p0

    invoke-interface {v1, v0, p0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :cond_27
    return-void
.end method
