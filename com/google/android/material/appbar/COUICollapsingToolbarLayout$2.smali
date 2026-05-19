.class Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->startFadeAnimation(ZLandroid/widget/TextView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

.field public final synthetic val$isFadeIn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    iput-boolean p2, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->val$isFadeIn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$402(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Landroid/animation/ObjectAnimator;)Landroid/animation/ObjectAnimator;

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    iget-boolean p1, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->val$isFadeIn:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$202(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z

    goto :goto_13

    :cond_e
    iget-object p0, p0, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout$2;->this$0:Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;

    invoke-static {p0, v0}, Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;->access$302(Lcom/google/android/material/appbar/COUICollapsingToolbarLayout;Z)Z

    :goto_13
    return-void
.end method
