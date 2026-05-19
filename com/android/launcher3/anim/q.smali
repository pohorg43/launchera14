.class public final synthetic Lcom/android/launcher3/anim/q;
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
.method public synthetic constructor <init>(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;)V
    .registers 5

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;)V
    .registers 5

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;)V
    .registers 5

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 5

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/BiConsumer;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;)V
    .registers 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/anim/q;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget v0, p0, Lcom/android/launcher3/anim/q;->a:I

    packed-switch v0, :pswitch_data_74

    goto :goto_64

    :pswitch_6  #0x5
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/SurfaceControl;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->c(Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_16  #0x4
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Landroid/view/SurfaceControl$Transaction;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/desktopmode/EnterDesktopTaskTransitionHandler;->b(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/graphics/Rect;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_26  #0x3
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/compatui/ReachabilityEduLayout;->b(Ljava/util/function/BiConsumer;Landroid/widget/FrameLayout$LayoutParams;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_36  #0x2
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/quickstep/views/RecentsView;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, [Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/util/SurfaceTransactionApplier;

    invoke-static {v0, v1, p0, p1}, Lcom/android/quickstep/views/RecentsView;->v(Lcom/android/quickstep/views/RecentsView;[Lcom/android/systemui/shared/system/RemoteAnimationTargetCompat;Lcom/android/quickstep/util/SurfaceTransactionApplier;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_46  #0x1
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/view/View;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->i(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;Landroid/animation/ValueAnimator;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_56  #0x0
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/launcher3/anim/SpringAnimationBuilder;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/util/FloatProperty;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    invoke-static {v0, v1, p0, p1}, Lcom/android/launcher3/anim/SpringAnimationBuilder;->a(Lcom/android/launcher3/anim/SpringAnimationBuilder;Landroid/util/FloatProperty;Ljava/lang/Object;Landroid/animation/ValueAnimator;)V

    return-void

    :goto_64
    iget-object v0, p0, Lcom/android/launcher3/anim/q;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/windowdecor/ResizeVeil;

    iget-object v1, p0, Lcom/android/launcher3/anim/q;->c:Ljava/lang/Object;

    check-cast v1, Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/launcher3/anim/q;->d:Ljava/lang/Object;

    check-cast p0, Landroid/animation/ValueAnimator;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/windowdecor/ResizeVeil;->b(Lcom/android/wm/shell/windowdecor/ResizeVeil;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_74
    .packed-switch 0x0
        :pswitch_56  #00000000
        :pswitch_46  #00000001
        :pswitch_36  #00000002
        :pswitch_26  #00000003
        :pswitch_16  #00000004
        :pswitch_6  #00000005
    .end packed-switch
.end method
