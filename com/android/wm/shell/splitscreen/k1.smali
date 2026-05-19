.class public final synthetic Lcom/android/wm/shell/splitscreen/k1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/Animator;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;)V
    .registers 3

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/k1;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2e

    :pswitch_6  #0x4
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->w(Lcom/android/wm/shell/splitscreen/StageCoordinator;)V

    return-void

    :pswitch_e  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Landroid/animation/Animator;

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    return-void

    :pswitch_16  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->goToFullscreenFromSplit()V

    return-void

    :pswitch_1e  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;->a(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$8;)V

    return-void

    :pswitch_26  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinator$2;->a(Lcom/android/wm/shell/splitscreen/StageCoordinator$2;)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/k1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;

    invoke-virtual {p0}, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt;->resetIsEnteringMinimized()V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_26  #00000000
        :pswitch_1e  #00000001
        :pswitch_16  #00000002
        :pswitch_e  #00000003
        :pswitch_6  #00000004
    .end packed-switch
.end method
