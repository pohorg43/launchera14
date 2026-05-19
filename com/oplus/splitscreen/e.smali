.class public final synthetic Lcom/oplus/splitscreen/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;Lcom/oplus/zoom/common/ZoomPositionInfo;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/oplus/splitscreen/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/splitscreen/e;->a:I

    packed-switch v0, :pswitch_data_5a

    goto :goto_4e

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/common/ZoomPositionInfo;

    invoke-static {v0, p0}, Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;->f(Lcom/oplus/zoom/pointerhandler/ZoomScalePointerHandler;Lcom/oplus/zoom/common/ZoomPositionInfo;)V

    return-void

    :pswitch_12  #0x4
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/utrace/hlog/ULoggerImpl;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/utrace/hlog/ULoggerImpl;->b(Lcom/oplus/utrace/hlog/ULoggerImpl;Ljava/lang/String;)V

    return-void

    :pswitch_1e  #0x3
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/util/OplusLauncherAnimExecutor;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Runnable;

    invoke-static {v0, p0}, Lcom/oplus/util/OplusLauncherAnimExecutor;->c(Lcom/oplus/util/OplusLauncherAnimExecutor;Ljava/lang/Runnable;)V

    return-void

    :pswitch_2a  #0x2
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;

    invoke-static {v0, p0}, Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;->c(Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController;Lcom/oplus/systemui/shared/system/OplusBaseInputConsumerController$InputEventReceiver;)V

    return-void

    :pswitch_36  #0x1
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitToggleHelper;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitToggleHelper;->g(Lcom/oplus/splitscreen/SplitToggleHelper;Ljava/lang/String;)V

    return-void

    :pswitch_42  #0x0
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/splitscreen/SplitScreenGuideManager;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/oplus/splitscreen/SplitScreenGuideManager;->a(Lcom/oplus/splitscreen/SplitScreenGuideManager;Ljava/lang/String;)V

    return-void

    :goto_4e
    iget-object v0, p0, Lcom/oplus/splitscreen/e;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;

    iget-object p0, p0, Lcom/oplus/splitscreen/e;->c:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;

    invoke-static {v0, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;->b(Lcom/oplus/zoom/ui/floathandle/FloatHandleViewManager;Lcom/oplus/zoom/ui/floathandle/FloatHandleInfo;)V

    return-void

    :pswitch_data_5a
    .packed-switch 0x0
        :pswitch_42  #00000000
        :pswitch_36  #00000001
        :pswitch_2a  #00000002
        :pswitch_1e  #00000003
        :pswitch_12  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
