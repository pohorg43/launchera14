.class public final synthetic Lcom/android/launcher3/card/groupcard/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/card/groupcard/d;->a:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/card/groupcard/d;->a:Landroid/view/View;

    invoke-static {p0, p1}, Lcom/android/launcher3/card/groupcard/GroupCardView$playSmartCardAnimator$2;->b(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method
