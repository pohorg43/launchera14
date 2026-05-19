.class public final synthetic Lcom/android/launcher/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(ZI)V
    .registers 3

    iput p2, p0, Lcom/android/launcher/i;->a:I

    packed-switch p2, :pswitch_data_5a

    goto :goto_54

    :pswitch_6  #0xd
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_c  #0xc
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_12  #0xb
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_18  #0xa
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_1e  #0x9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_24  #0x8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_2a  #0x7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_30  #0x6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_36  #0x5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_3c  #0x4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_42  #0x3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_48  #0x2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_4e  #0x1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :goto_54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/launcher/i;->b:Z

    return-void

    :pswitch_data_5a
    .packed-switch 0x1
        :pswitch_4e  #00000001
        :pswitch_48  #00000002
        :pswitch_42  #00000003
        :pswitch_3c  #00000004
        :pswitch_36  #00000005
        :pswitch_30  #00000006
        :pswitch_2a  #00000007
        :pswitch_24  #00000008
        :pswitch_1e  #00000009
        :pswitch_18  #0000000a
        :pswitch_12  #0000000b
        :pswitch_c  #0000000c
        :pswitch_6  #0000000d
    .end packed-switch
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher/i;->a:I

    packed-switch v0, :pswitch_data_76

    goto :goto_6e

    :pswitch_6  #0xc
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->h(ZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_e  #0xb
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyDirectionTypeListener$1;->a(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void

    :pswitch_16  #0xa
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController$mVirtualKeyCombinationTypeListener$1;->a(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void

    :pswitch_1e  #0x9
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/navigation/NavigationController$mStashedHandlerHiddenListener$1;->a(ZLjava/util/function/Consumer;)V

    return-void

    :pswitch_26  #0x8
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/common/AbstractObserver;->a(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void

    :pswitch_2e  #0x7
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;

    invoke-static {p0, p1}, Lcom/android/wm/shell/common/TabletopModeController;->b(ZLcom/android/wm/shell/common/TabletopModeController$OnTabletopModeChangedListener;)V

    return-void

    :pswitch_36  #0x6
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Landroid/animation/ValueAnimator;

    invoke-static {p0, p1}, Lcom/android/quickstep/AbsSwipeUpHandler;->f(ZLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_3e  #0x5
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/util/SinglePageAlignManager;->a(ZLandroid/view/View;)V

    return-void

    :pswitch_46  #0x4
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/quickstep/common/IObserverListener;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/navbar/RegionSamplingUtils;->a(ZLcom/oplus/quickstep/common/IObserverListener;)V

    return-void

    :pswitch_4e  #0x3
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsController$TaskbarAllAppsProxyView;->a(ZLcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsViewController;)V

    return-void

    :pswitch_56  #0x2
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/android/launcher3/iconrender/ITitleRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->f(ZLcom/android/launcher3/iconrender/ITitleRenderer;)V

    return-void

    :pswitch_5e  #0x1
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/android/launcher3/iconrender/IIconRenderer;

    invoke-static {p0, p1}, Lcom/android/launcher3/iconrender/RenderManager;->j(ZLcom/android/launcher3/iconrender/IIconRenderer;)V

    return-void

    :pswitch_66  #0x0
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Ljava/util/function/Consumer;

    invoke-static {p0, p1}, Lcom/android/launcher/Launcher;->G0(ZLjava/util/function/Consumer;)V

    return-void

    :goto_6e
    iget-boolean p0, p0, Lcom/android/launcher/i;->b:Z

    check-cast p1, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static {p0, p1}, Lcom/oplus/zoom/ZoomRootTaskController;->b(ZLcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void

    :pswitch_data_76
    .packed-switch 0x0
        :pswitch_66  #00000000
        :pswitch_5e  #00000001
        :pswitch_56  #00000002
        :pswitch_4e  #00000003
        :pswitch_46  #00000004
        :pswitch_3e  #00000005
        :pswitch_36  #00000006
        :pswitch_2e  #00000007
        :pswitch_26  #00000008
        :pswitch_1e  #00000009
        :pswitch_16  #0000000a
        :pswitch_e  #0000000b
        :pswitch_6  #0000000c
    .end packed-switch
.end method
