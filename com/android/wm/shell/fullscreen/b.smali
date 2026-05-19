.class public final synthetic Lcom/android/wm/shell/fullscreen/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/common/SyncTransactionQueue$TransactionRunnable;


# instance fields
.field public final synthetic a:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

.field public final synthetic b:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

.field public final synthetic c:Z

.field public final synthetic d:Landroid/app/ActivityManager$RunningTaskInfo;

.field public final synthetic e:Landroid/graphics/Point;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/fullscreen/b;->a:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iput-object p2, p0, Lcom/android/wm/shell/fullscreen/b;->b:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iput-boolean p3, p0, Lcom/android/wm/shell/fullscreen/b;->c:Z

    iput-object p4, p0, Lcom/android/wm/shell/fullscreen/b;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iput-object p5, p0, Lcom/android/wm/shell/fullscreen/b;->e:Landroid/graphics/Point;

    return-void
.end method


# virtual methods
.method public final runWithTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 8

    iget-object v0, p0, Lcom/android/wm/shell/fullscreen/b;->a:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;

    iget-object v1, p0, Lcom/android/wm/shell/fullscreen/b;->b:Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;

    iget-boolean v2, p0, Lcom/android/wm/shell/fullscreen/b;->c:Z

    iget-object v3, p0, Lcom/android/wm/shell/fullscreen/b;->d:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v4, p0, Lcom/android/wm/shell/fullscreen/b;->e:Landroid/graphics/Point;

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;->d(Lcom/android/wm/shell/fullscreen/FullscreenTaskListener;Lcom/android/wm/shell/fullscreen/FullscreenTaskListener$State;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Point;Landroid/view/SurfaceControl$Transaction;)V

    return-void
.end method
