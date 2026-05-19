.class public final synthetic Lcom/android/wm/shell/activityembedding/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Landroid/window/TransitionInfo$Change;

.field public final synthetic b:Landroid/view/animation/Animation;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/activityembedding/e;->a:Landroid/window/TransitionInfo$Change;

    iput-object p2, p0, Lcom/android/wm/shell/activityembedding/e;->b:Landroid/view/animation/Animation;

    iput-object p3, p0, Lcom/android/wm/shell/activityembedding/e;->c:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/activityembedding/e;->a:Landroid/window/TransitionInfo$Change;

    iget-object v1, p0, Lcom/android/wm/shell/activityembedding/e;->b:Landroid/view/animation/Animation;

    iget-object p0, p0, Lcom/android/wm/shell/activityembedding/e;->c:Landroid/view/SurfaceControl$Transaction;

    check-cast p1, Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationRunner;->b(Landroid/window/TransitionInfo$Change;Landroid/view/animation/Animation;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
