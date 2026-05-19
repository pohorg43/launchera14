.class public final synthetic Lcom/android/wm/shell/splitscreen/s0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 3

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/ArrayList;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/s0;->a:I

    packed-switch v0, :pswitch_data_3e

    goto :goto_36

    :pswitch_6  #0x5
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->p(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    return-void

    :pswitch_e  #0x4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :pswitch_16  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->a(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V

    return-void

    :pswitch_1e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/DividerOrientationController;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/DividerOrientationController;->b(Lcom/android/wm/shell/splitscreen/DividerOrientationController;)V

    return-void

    :pswitch_26  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$6;->b(Ljava/util/ArrayList;)V

    return-void

    :pswitch_2e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;->a(Lcom/android/wm/shell/splitscreen/SplitScreenControllerExt$2$1;)V

    return-void

    :goto_36
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/s0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V

    return-void

    :pswitch_data_3e
    .packed-switch 0x0
        :pswitch_2e  #00000000
        :pswitch_26  #00000001
        :pswitch_1e  #00000002
        :pswitch_16  #00000003
        :pswitch_e  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
