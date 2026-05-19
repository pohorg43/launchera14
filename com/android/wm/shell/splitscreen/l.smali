.class public final synthetic Lcom/android/wm/shell/splitscreen/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/l;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/splitscreen/l;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_26

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/StageCoordinator;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->C(Lcom/android/wm/shell/splitscreen/StageCoordinator;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_16  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;->a(Lcom/android/wm/shell/splitscreen/SplitMotionTaskPositioner;Landroid/view/animation/Animation;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_26
    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/l;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/l;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/l;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/splitscreen/StageCoordinator;->g(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
