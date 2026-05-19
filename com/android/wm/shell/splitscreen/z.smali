.class public final synthetic Lcom/android/wm/shell/splitscreen/z;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/z;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/splitscreen/z;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_30

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;->e(Lcom/android/wm/shell/splitscreen/SplitScreenTransitions;Landroid/animation/ValueAnimator;Ljava/lang/Boolean;)V

    return-void

    :pswitch_14  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    check-cast p1, Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;->e(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt;Landroid/app/ActivityManager$RunningTaskInfo;Landroid/window/ScreenCapture$ScreenshotHardwareBuffer;)V

    return-void

    :pswitch_22  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    check-cast v0, [[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    check-cast p0, [Landroid/view/RemoteAnimationTarget;

    check-cast p1, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitScreenController$ISplitScreenImpl;->k([[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Lcom/android/wm/shell/splitscreen/SplitScreenController;)V

    return-void

    :goto_30
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/z;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/z;->c:Ljava/lang/Object;

    check-cast p0, Landroid/window/TransitionInfo;

    check-cast p1, Lcom/android/wm/shell/recents/RecentTasksController;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->B(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/window/TransitionInfo;Lcom/android/wm/shell/recents/RecentTasksController;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_14  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
