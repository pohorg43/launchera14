.class public final synthetic Lcom/android/quickstep/p0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivity;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RecentsActivityCommand;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/RemoteAnimationTargets;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V
    .registers 3

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V
    .registers 3

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/util/RectFSpringAnim;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/quickstep/p0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/quickstep/p0;->a:I

    packed-switch v0, :pswitch_data_4e

    goto :goto_46

    :pswitch_6  #0x7
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;

    invoke-static {p0}, Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay$OverlayUICallbacksImpl;->b(Lcom/android/quickstep/TaskOverlayFactory$TaskOverlay;)V

    return-void

    :pswitch_e  #0x6
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RemoteAnimationTargets;

    invoke-virtual {p0}, Lcom/android/quickstep/RemoteAnimationTargets;->release()V

    return-void

    :pswitch_16  #0x5
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;

    invoke-virtual {p0}, Lcom/android/systemui/shared/system/SystemGestureExclusionListenerCompat;->unregister()V

    return-void

    :pswitch_1e  #0x4
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivityCommand;

    invoke-virtual {p0}, Lcom/android/quickstep/RecentsActivityCommand;->onTransitionComplete()V

    return-void

    :pswitch_26  #0x3
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    invoke-static {p0}, Lcom/android/quickstep/RecentsActivity;->j(Lcom/android/quickstep/RecentsActivity;)V

    return-void

    :pswitch_2e  #0x2
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/RectFSpringAnim;

    invoke-virtual {p0}, Lcom/android/quickstep/util/RectFSpringAnim;->onTargetPositionChanged()V

    return-void

    :pswitch_36  #0x1
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/views/RecentsView;

    invoke-virtual {p0}, Lcom/android/quickstep/views/RecentsView;->resetTaskVisuals()V

    return-void

    :pswitch_3e  #0x0
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;

    invoke-static {p0}, Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;->b(Lcom/android/quickstep/LauncherBackAnimationController$IStaticOnBackInvokedCallback;)V

    return-void

    :goto_46
    iget-object p0, p0, Lcom/android/quickstep/p0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;

    invoke-static {p0}, Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;->a(Lcom/android/quickstep/TopTaskTrackerExtOplusImpl;)V

    return-void

    :pswitch_data_4e
    .packed-switch 0x0
        :pswitch_3e  #00000000
        :pswitch_36  #00000001
        :pswitch_2e  #00000002
        :pswitch_26  #00000003
        :pswitch_1e  #00000004
        :pswitch_16  #00000005
        :pswitch_e  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
