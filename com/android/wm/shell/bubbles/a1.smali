.class public final synthetic Lcom/android/wm/shell/bubbles/a1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/a1;->a:Lcom/android/wm/shell/bubbles/BubbleStackView;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdateForProperty(Ljava/lang/Object;Landroid/util/ArrayMap;)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/a1;->a:Lcom/android/wm/shell/bubbles/BubbleStackView;

    check-cast p1, Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleStackView;->I(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/animation/AnimatableScaleMatrix;Landroid/util/ArrayMap;)V

    return-void
.end method
