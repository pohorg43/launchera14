.class public final synthetic Lcom/android/wm/shell/transition/g;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/animation/ValueAnimator;

.field public final synthetic b:Landroid/view/SurfaceControl$Transaction;

.field public final synthetic c:Landroid/view/SurfaceControl;

.field public final synthetic d:Landroid/view/animation/Animation;

.field public final synthetic e:Landroid/view/animation/Transformation;

.field public final synthetic f:[F

.field public final synthetic g:Landroid/graphics/Point;

.field public final synthetic h:F

.field public final synthetic i:Landroid/graphics/Rect;

.field public final synthetic j:Landroid/os/Bundle;

.field public final synthetic k:Lcom/android/wm/shell/common/TransactionPool;

.field public final synthetic l:Lcom/android/wm/shell/common/ShellExecutor;

.field public final synthetic m:Ljava/util/ArrayList;

.field public final synthetic n:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V
    .registers 15

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/transition/g;->a:Landroid/animation/ValueAnimator;

    iput-object p2, p0, Lcom/android/wm/shell/transition/g;->b:Landroid/view/SurfaceControl$Transaction;

    iput-object p3, p0, Lcom/android/wm/shell/transition/g;->c:Landroid/view/SurfaceControl;

    iput-object p4, p0, Lcom/android/wm/shell/transition/g;->d:Landroid/view/animation/Animation;

    iput-object p5, p0, Lcom/android/wm/shell/transition/g;->e:Landroid/view/animation/Transformation;

    iput-object p6, p0, Lcom/android/wm/shell/transition/g;->f:[F

    iput-object p7, p0, Lcom/android/wm/shell/transition/g;->g:Landroid/graphics/Point;

    iput p8, p0, Lcom/android/wm/shell/transition/g;->h:F

    iput-object p9, p0, Lcom/android/wm/shell/transition/g;->i:Landroid/graphics/Rect;

    iput-object p10, p0, Lcom/android/wm/shell/transition/g;->j:Landroid/os/Bundle;

    iput-object p11, p0, Lcom/android/wm/shell/transition/g;->k:Lcom/android/wm/shell/common/TransactionPool;

    iput-object p12, p0, Lcom/android/wm/shell/transition/g;->l:Lcom/android/wm/shell/common/ShellExecutor;

    iput-object p13, p0, Lcom/android/wm/shell/transition/g;->m:Ljava/util/ArrayList;

    iput-object p14, p0, Lcom/android/wm/shell/transition/g;->n:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 15

    iget-object v0, p0, Lcom/android/wm/shell/transition/g;->a:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/transition/g;->b:Landroid/view/SurfaceControl$Transaction;

    iget-object v2, p0, Lcom/android/wm/shell/transition/g;->c:Landroid/view/SurfaceControl;

    iget-object v3, p0, Lcom/android/wm/shell/transition/g;->d:Landroid/view/animation/Animation;

    iget-object v4, p0, Lcom/android/wm/shell/transition/g;->e:Landroid/view/animation/Transformation;

    iget-object v5, p0, Lcom/android/wm/shell/transition/g;->f:[F

    iget-object v6, p0, Lcom/android/wm/shell/transition/g;->g:Landroid/graphics/Point;

    iget v7, p0, Lcom/android/wm/shell/transition/g;->h:F

    iget-object v8, p0, Lcom/android/wm/shell/transition/g;->i:Landroid/graphics/Rect;

    iget-object v9, p0, Lcom/android/wm/shell/transition/g;->j:Landroid/os/Bundle;

    iget-object v10, p0, Lcom/android/wm/shell/transition/g;->k:Lcom/android/wm/shell/common/TransactionPool;

    iget-object v11, p0, Lcom/android/wm/shell/transition/g;->l:Lcom/android/wm/shell/common/ShellExecutor;

    iget-object v12, p0, Lcom/android/wm/shell/transition/g;->m:Ljava/util/ArrayList;

    iget-object v13, p0, Lcom/android/wm/shell/transition/g;->n:Ljava/lang/Runnable;

    invoke-static/range {v0 .. v13}, Lcom/android/wm/shell/transition/DefaultTransitionHandler;->k(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/view/animation/Animation;Landroid/view/animation/Transformation;[FLandroid/graphics/Point;FLandroid/graphics/Rect;Landroid/os/Bundle;Lcom/android/wm/shell/common/TransactionPool;Lcom/android/wm/shell/common/ShellExecutor;Ljava/util/ArrayList;Ljava/lang/Runnable;)V

    return-void
.end method
