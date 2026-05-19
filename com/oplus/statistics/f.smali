.class public final synthetic Lcom/oplus/statistics/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ls2/b;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/oplus/statistics/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget v0, p0, Lcom/oplus/statistics/f;->a:I

    packed-switch v0, :pswitch_data_7e

    goto :goto_4e

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget-object p0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    invoke-static {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->c(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void

    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;

    iget-object p0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;->a(Lcom/oplus/zoom/draganimation/OplusZoomToFlexibleController;Ljava/lang/String;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/utrace/hlog/PushData;

    invoke-static {v0, p0}, Lcom/oplus/utrace/hlog/HLogFilesCollector$Companion;->a(Landroid/content/Context;Lcom/oplus/utrace/hlog/PushData;)V

    return-void

    :pswitch_2a  #0x2
    iget-object v0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;

    iget-object p0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-static {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->b(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/statistics/strategy/ChattyEventTracker;

    iget-object p0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/oplus/statistics/strategy/ChattyEventTracker;->a(Lcom/oplus/statistics/strategy/ChattyEventTracker;Landroid/content/Context;)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/statistics/data/PeriodDataBean;

    invoke-static {v0, p0}, Lcom/oplus/statistics/OplusTrack;->o(Landroid/content/Context;Lcom/oplus/statistics/data/PeriodDataBean;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/oplus/statistics/f;->c:Ljava/lang/Object;

    check-cast v0, Ls2/b;

    iget-object p0, p0, Lcom/oplus/statistics/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    iget-object v1, v0, Ls2/b;->a:Lcom/oplus/app/OplusAppSwitchManager;

    iget-object v2, v0, Ls2/b;->b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    invoke-virtual {v1, p0, v2}, Lcom/oplus/app/OplusAppSwitchManager;->unregisterAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;)Z

    iget-object v1, v0, Ls2/b;->a:Lcom/oplus/app/OplusAppSwitchManager;

    iget-object v2, v0, Ls2/b;->b:Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;

    iget-object v0, v0, Ls2/b;->c:Lcom/oplus/app/OplusAppSwitchConfig;

    invoke-virtual {v1, p0, v2, v0}, Lcom/oplus/app/OplusAppSwitchManager;->registerAppSwitchObserver(Landroid/content/Context;Lcom/oplus/app/OplusAppSwitchManager$OnAppSwitchObserver;Lcom/oplus/app/OplusAppSwitchConfig;)Z

    move-result p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerAppSwitchObserver result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OplusAppSwitchManagerWrapper"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_data_7e
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_36  #00000001
        :pswitch_2a  #00000002
        :pswitch_1e  #00000003
        :pswitch_12  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
