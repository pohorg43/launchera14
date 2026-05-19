.class public final synthetic Lcom/oplus/zoom/transition/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:[Z

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic d:Landroid/view/SurfaceControl;

.field public final synthetic e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;


# direct methods
.method public synthetic constructor <init>(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oplus/zoom/transition/b;->a:I

    iput-object p2, p0, Lcom/oplus/zoom/transition/b;->b:[Z

    iput-object p3, p0, Lcom/oplus/zoom/transition/b;->c:Landroid/view/SurfaceControl$Transaction;

    iput-object p4, p0, Lcom/oplus/zoom/transition/b;->d:Landroid/view/SurfaceControl;

    iput-object p5, p0, Lcom/oplus/zoom/transition/b;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 8

    iget v0, p0, Lcom/oplus/zoom/transition/b;->a:I

    iget-object v1, p0, Lcom/oplus/zoom/transition/b;->b:[Z

    iget-object v2, p0, Lcom/oplus/zoom/transition/b;->c:Landroid/view/SurfaceControl$Transaction;

    iget-object v3, p0, Lcom/oplus/zoom/transition/b;->d:Landroid/view/SurfaceControl;

    iget-object v4, p0, Lcom/oplus/zoom/transition/b;->e:Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;

    move-object v5, p1

    check-cast v5, Lcom/oplus/zoom/ZoomRootTaskManager;

    invoke-static/range {v0 .. v5}, Lcom/oplus/zoom/transition/ZoomTransitionController;->b(I[ZLandroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Lcom/android/wm/shell/transition/Transitions$TransitionFinishCallback;Lcom/oplus/zoom/ZoomRootTaskManager;)V

    return-void
.end method
