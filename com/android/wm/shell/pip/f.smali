.class public final synthetic Lcom/android/wm/shell/pip/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/media/MediaMetadata;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockViewController;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/pip/f;->a:I

    packed-switch v0, :pswitch_data_52

    goto :goto_48

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->a(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockViewController;

    check-cast p1, Ljava/lang/Float;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockViewController;->c(Lcom/oplus/quickstep/dock/DockViewController;Ljava/lang/Float;)V

    return-void

    :pswitch_18  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    return-void

    :pswitch_26  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    return-void

    :pswitch_34  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;->c(Lcom/android/wm/shell/pip/phone/PipResizeGestureHandler;Landroid/graphics/Rect;)V

    return-void

    :pswitch_3e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Landroid/media/MediaMetadata;

    check-cast p1, Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->c(Landroid/media/MediaMetadata;Lcom/android/wm/shell/pip/PipMediaController$MetadataListener;)V

    return-void

    :goto_48
    iget-object p0, p0, Lcom/android/wm/shell/pip/f;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoomwindow/OplusZoomTaskInfo;

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->g(Lcom/oplus/zoomwindow/OplusZoomTaskInfo;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_52
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_34  #00000001
        :pswitch_26  #00000002
        :pswitch_18  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
