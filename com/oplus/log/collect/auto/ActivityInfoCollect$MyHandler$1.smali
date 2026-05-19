.class Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;


# direct methods
.method public constructor <init>(Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler$1;->this$0:Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$000()Lcom/oplus/log/log/ICollectLog;

    move-result-object p0

    if-eqz p0, :cond_2f

    new-instance p0, Lcom/oplus/log/collect/LoggingEvent;

    invoke-static {}, Lcom/oplus/log/util/BaseInfoUtil;->getNetWorkInfo()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-string v1, "Network_Info"

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$100()Lcom/oplus/log/log/SimpleLog;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$100()Lcom/oplus/log/log/SimpleLog;

    move-result-object v0

    const/16 v1, 0x68

    invoke-virtual {v0, p0, v1}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_2f

    :cond_26
    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$000()Lcom/oplus/log/log/ICollectLog;

    move-result-object v0

    const/16 v1, 0x67

    invoke-interface {v0, p0, v1}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    :cond_2f
    :goto_2f
    return-void
.end method
