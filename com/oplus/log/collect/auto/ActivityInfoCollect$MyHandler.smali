.class Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/log/collect/auto/ActivityInfoCollect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyHandler"
.end annotation


# instance fields
.field private final mActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 12

    iget-object v0, p0, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;->mActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    if-eqz v0, :cond_5e

    iget v1, p1, Landroid/os/Message;->what:I

    const/16 v2, 0x7b

    if-ne v1, v2, :cond_4d

    invoke-static {v0}, Lcom/oplus/log/util/BaseInfoUtil;->getScreenshot(Landroid/app/Activity;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$000()Lcom/oplus/log/log/ICollectLog;

    move-result-object p0

    if-eqz p0, :cond_5e

    if-eqz v5, :cond_5e

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    const-string p1, "activity_name"

    invoke-virtual {v8, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Lcom/oplus/log/collect/LoggingEvent;

    const/4 v6, 0x4

    const/4 v7, 0x0

    const/4 v9, 0x0

    const-string v4, "screenshot"

    move-object v3, p0

    invoke-direct/range {v3 .. v9}, Lcom/oplus/log/collect/LoggingEvent;-><init>(Ljava/lang/String;Ljava/lang/Object;BLjava/lang/String;Ljava/util/HashMap;Lcom/oplus/log/appender/Layout/Layout;)V

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$100()Lcom/oplus/log/log/SimpleLog;

    move-result-object p1

    const/16 v0, 0x68

    if-eqz p1, :cond_45

    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$100()Lcom/oplus/log/log/SimpleLog;

    move-result-object p1

    invoke-virtual {p1, p0, v0}, Lcom/oplus/log/log/SimpleLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_5e

    :cond_45
    invoke-static {}, Lcom/oplus/log/collect/auto/ActivityInfoCollect;->access$000()Lcom/oplus/log/log/ICollectLog;

    move-result-object p1

    invoke-interface {p1, p0, v0}, Lcom/oplus/log/log/ICollectLog;->append(Lcom/oplus/log/collect/LoggingEvent;I)V

    goto :goto_5e

    :cond_4d
    const/16 p1, 0x7c

    if-ne v1, p1, :cond_5e

    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler$1;

    invoke-direct {v0, p0}, Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler$1;-><init>(Lcom/oplus/log/collect/auto/ActivityInfoCollect$MyHandler;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    :cond_5e
    :goto_5e
    return-void
.end method
