.class public final synthetic Lcom/android/quickstep/util/w;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

.field public final synthetic b:Landroid/window/TransitionInfo;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic d:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/util/w;->a:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iput-object p2, p0, Lcom/android/quickstep/util/w;->b:Landroid/window/TransitionInfo;

    iput-object p3, p0, Lcom/android/quickstep/util/w;->c:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/android/quickstep/util/w;->d:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/w;->a:Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;

    iget-object v1, p0, Lcom/android/quickstep/util/w;->b:Landroid/window/TransitionInfo;

    iget-object v2, p0, Lcom/android/quickstep/util/w;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object p0, p0, Lcom/android/quickstep/util/w;->d:Ljava/lang/Runnable;

    invoke-static {v0, v1, v2, p0}, Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;->b(Lcom/android/quickstep/util/SplitSelectStateController$RemoteSplitLaunchTransitionRunner;Landroid/window/TransitionInfo;Landroid/view/SurfaceControl$Transaction;Ljava/lang/Runnable;)V

    return-void
.end method
