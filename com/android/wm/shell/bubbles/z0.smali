.class public final synthetic Lcom/android/wm/shell/bubbles/z0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/z0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/pip/phone/PipMotionHelper;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/z0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/z0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .registers 4

    iget v0, p0, Lcom/android/wm/shell/bubbles/z0;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->y(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/z0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/pip/phone/PipMotionHelper;

    check-cast p1, Landroid/graphics/Rect;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/pip/phone/PipMotionHelper;->a(Lcom/android/wm/shell/pip/phone/PipMotionHelper;Landroid/graphics/Rect;Landroid/util/ArrayMap;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
