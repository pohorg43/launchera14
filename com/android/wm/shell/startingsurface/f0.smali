.class public final synthetic Lcom/android/wm/shell/startingsurface/f0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

.field public final synthetic b:Landroid/animation/ValueAnimator;

.field public final synthetic c:Landroid/view/SurfaceControl$Transaction;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/f0;->a:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/f0;->b:Landroid/animation/ValueAnimator;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/f0;->c:Landroid/view/SurfaceControl$Transaction;

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/f0;->a:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/f0;->b:Landroid/animation/ValueAnimator;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/f0;->c:Landroid/view/SurfaceControl$Transaction;

    invoke-static {v0, v1, p0, p1}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->b(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method
