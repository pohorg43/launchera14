.class public final synthetic Lcom/android/wm/shell/back/d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/back/BackAnimationController$4;

.field public final synthetic b:Landroid/window/IBackAnimationFinishedCallback;

.field public final synthetic c:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic d:[Landroid/view/RemoteAnimationTarget;

.field public final synthetic e:[Landroid/view/RemoteAnimationTarget;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/back/d;->a:Lcom/android/wm/shell/back/BackAnimationController$4;

    iput-object p2, p0, Lcom/android/wm/shell/back/d;->b:Landroid/window/IBackAnimationFinishedCallback;

    iput-object p3, p0, Lcom/android/wm/shell/back/d;->c:[Landroid/view/RemoteAnimationTarget;

    iput-object p4, p0, Lcom/android/wm/shell/back/d;->d:[Landroid/view/RemoteAnimationTarget;

    iput-object p5, p0, Lcom/android/wm/shell/back/d;->e:[Landroid/view/RemoteAnimationTarget;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/back/d;->a:Lcom/android/wm/shell/back/BackAnimationController$4;

    iget-object v1, p0, Lcom/android/wm/shell/back/d;->b:Landroid/window/IBackAnimationFinishedCallback;

    iget-object v2, p0, Lcom/android/wm/shell/back/d;->c:[Landroid/view/RemoteAnimationTarget;

    iget-object v3, p0, Lcom/android/wm/shell/back/d;->d:[Landroid/view/RemoteAnimationTarget;

    iget-object p0, p0, Lcom/android/wm/shell/back/d;->e:[Landroid/view/RemoteAnimationTarget;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/android/wm/shell/back/BackAnimationController$4;->b(Lcom/android/wm/shell/back/BackAnimationController$4;Landroid/window/IBackAnimationFinishedCallback;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;)V

    return-void
.end method
