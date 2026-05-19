.class public final synthetic Lcom/android/wm/shell/common/split/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic b:Landroid/view/SurfaceControl;

.field public final synthetic c:Landroid/graphics/Rect;

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:F

.field public final synthetic g:F

.field public final synthetic h:F

.field public final synthetic i:F

.field public final synthetic j:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/common/split/c;->a:Lcom/android/wm/shell/common/split/SplitLayout;

    iput-object p2, p0, Lcom/android/wm/shell/common/split/c;->b:Landroid/view/SurfaceControl;

    iput-object p3, p0, Lcom/android/wm/shell/common/split/c;->c:Landroid/graphics/Rect;

    iput p4, p0, Lcom/android/wm/shell/common/split/c;->d:F

    iput p5, p0, Lcom/android/wm/shell/common/split/c;->e:F

    iput p6, p0, Lcom/android/wm/shell/common/split/c;->f:F

    iput p7, p0, Lcom/android/wm/shell/common/split/c;->g:F

    iput p8, p0, Lcom/android/wm/shell/common/split/c;->h:F

    iput p9, p0, Lcom/android/wm/shell/common/split/c;->i:F

    iput-object p10, p0, Lcom/android/wm/shell/common/split/c;->j:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 13

    iget-object v0, p0, Lcom/android/wm/shell/common/split/c;->a:Lcom/android/wm/shell/common/split/SplitLayout;

    iget-object v1, p0, Lcom/android/wm/shell/common/split/c;->b:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/wm/shell/common/split/c;->c:Landroid/graphics/Rect;

    iget v3, p0, Lcom/android/wm/shell/common/split/c;->d:F

    iget v4, p0, Lcom/android/wm/shell/common/split/c;->e:F

    iget v5, p0, Lcom/android/wm/shell/common/split/c;->f:F

    iget v6, p0, Lcom/android/wm/shell/common/split/c;->g:F

    iget v7, p0, Lcom/android/wm/shell/common/split/c;->h:F

    iget v8, p0, Lcom/android/wm/shell/common/split/c;->i:F

    iget-object v9, p0, Lcom/android/wm/shell/common/split/c;->j:Landroid/view/SurfaceControl$Transaction;

    move-object v10, p1

    invoke-static/range {v0 .. v10}, Lcom/android/wm/shell/common/split/SplitLayout;->f(Lcom/android/wm/shell/common/split/SplitLayout;Landroid/view/SurfaceControl;Landroid/graphics/Rect;FFFFFFLandroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
