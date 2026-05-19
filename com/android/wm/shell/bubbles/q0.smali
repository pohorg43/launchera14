.class public final synthetic Lcom/android/wm/shell/bubbles/q0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:F


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;F)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;F)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;F)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/q0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    iput p2, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/q0;->a:I

    packed-switch v0, :pswitch_data_24

    goto :goto_1a

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;

    iget p0, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    invoke-static {v0, p0, p1}, Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;->a(Lcom/oplus/quickstep/anim/TaskViewPressedAnimation;FLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_10  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->s(Lcom/android/wm/shell/bubbles/BubbleStackView;FLandroid/animation/ValueAnimator;)V

    return-void

    :goto_1a
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/q0;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;

    iget p0, p0, Lcom/android/wm/shell/bubbles/q0;->c:F

    invoke-static {v0, p0, p1}, Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;->a(Lcom/oplus/zoom/draganimation/view/FlexibleEnterThreeSplitView;FLandroid/animation/ValueAnimator;)V

    return-void

    :pswitch_data_24
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
