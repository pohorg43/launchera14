.class public final Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;
.super Lcom/android/launcher3/anim/AbsAppTransitionAnimator;
.source ""


# instance fields
.field private animator:Landroid/animation/Animator;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher3/anim/AbsAppTransitionAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnimator()Landroid/animation/Animator;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->animator:Landroid/animation/Animator;

    return-object p0
.end method

.method public setAnimator(Landroid/animation/Animator;)V
    .registers 3

    const-string v0, "animator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->animator:Landroid/animation/Animator;

    return-void
.end method

.method public setAnimatorUpdateLister(Landroid/animation/AnimatorListenerAdapter;)V
    .registers 3

    const-string v0, "listeners"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/launcher3/anim/DefaultAppTransitionAnimator;->animator:Landroid/animation/Animator;

    if-eqz p0, :cond_c

    invoke-virtual {p0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_c
    return-void
.end method
