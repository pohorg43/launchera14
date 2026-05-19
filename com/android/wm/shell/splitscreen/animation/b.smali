.class public final synthetic Lcom/android/wm/shell/splitscreen/animation/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

.field public final synthetic b:Landroid/animation/Animator;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/animation/b;->a:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/animation/b;->b:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/wm/shell/splitscreen/animation/b;->a:Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;

    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/animation/b;->b:Landroid/animation/Animator;

    invoke-static {v0, p0}, Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;->b(Lcom/android/wm/shell/splitscreen/animation/AnimationRunner$AnimatorListenerWrapper;Landroid/animation/Animator;)V

    return-void
.end method
