.class public final synthetic Lcom/android/wm/shell/bubbles/animation/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsAnimationController$ChildAnimationConfigurator;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ZZZ)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/d;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/d;->b:Z

    iput-boolean p3, p0, Lcom/android/wm/shell/bubbles/animation/d;->c:Z

    iput-boolean p4, p0, Lcom/android/wm/shell/bubbles/animation/d;->d:Z

    return-void
.end method


# virtual methods
.method public final configureAnimationForChildAtIndex(ILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V
    .registers 9

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/d;->a:Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/animation/d;->b:Z

    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/animation/d;->c:Z

    iget-boolean v3, p0, Lcom/android/wm/shell/bubbles/animation/d;->d:Z

    move v4, p1

    move-object v5, p2

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;->f(Lcom/android/wm/shell/bubbles/animation/ExpandedAnimationController;ZZZILcom/android/wm/shell/bubbles/animation/PhysicsAnimationLayout$PhysicsPropertyAnimator;)V

    return-void
.end method
