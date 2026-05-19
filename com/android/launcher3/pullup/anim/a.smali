.class public final synthetic Lcom/android/launcher3/pullup/anim/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

.field public final synthetic b:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:I

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/pullup/anim/a;->a:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    iput-object p2, p0, Lcom/android/launcher3/pullup/anim/a;->b:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

    iput-object p3, p0, Lcom/android/launcher3/pullup/anim/a;->c:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/launcher3/pullup/anim/a;->d:I

    iput p5, p0, Lcom/android/launcher3/pullup/anim/a;->e:F

    iput p6, p0, Lcom/android/launcher3/pullup/anim/a;->f:F

    iput p7, p0, Lcom/android/launcher3/pullup/anim/a;->g:F

    iput-object p8, p0, Lcom/android/launcher3/pullup/anim/a;->h:Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/pullup/anim/a;->a:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;

    iget-object v1, p0, Lcom/android/launcher3/pullup/anim/a;->b:Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;

    iget-object v2, p0, Lcom/android/launcher3/pullup/anim/a;->c:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/launcher3/pullup/anim/a;->d:I

    iget v4, p0, Lcom/android/launcher3/pullup/anim/a;->e:F

    iget v5, p0, Lcom/android/launcher3/pullup/anim/a;->f:F

    iget v6, p0, Lcom/android/launcher3/pullup/anim/a;->g:F

    iget-object v7, p0, Lcom/android/launcher3/pullup/anim/a;->h:Landroid/view/RemoteAnimationTarget;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;->c(Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$Runner;Lcom/android/launcher3/pullup/anim/ActivityLaunchAnimator$State;Landroid/graphics/Rect;IFFFLandroid/view/RemoteAnimationTarget;Landroid/animation/ValueAnimator;)V

    return-void
.end method
