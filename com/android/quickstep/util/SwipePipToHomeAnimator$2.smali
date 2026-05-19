.class Lcom/android/quickstep/util/SwipePipToHomeAnimator$2;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SwipePipToHomeAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SwipePipToHomeAnimator;Landroid/os/Looper;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$2;->this$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    iget-object p1, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$2;->this$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-static {p1}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->access$400(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)Landroid/view/SurfaceControl;

    move-result-object p1

    if-eqz p1, :cond_37

    :try_start_8
    invoke-static {}, Lcom/android/systemui/shared/pip/PipSurfaceTransactionHelper;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_c} :catch_28

    :try_start_c
    iget-object p0, p0, Lcom/android/quickstep/util/SwipePipToHomeAnimator$2;->this$0:Lcom/android/quickstep/util/SwipePipToHomeAnimator;

    invoke-static {p0}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->access$400(Lcom/android/quickstep/util/SwipePipToHomeAnimator;)Landroid/view/SurfaceControl;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_1c

    :try_start_18
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1b} :catch_28

    goto :goto_37

    :catchall_1c
    move-exception p0

    if-eqz p1, :cond_27

    :try_start_1f
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_22
    .catchall {:try_start_1f .. :try_end_22} :catchall_23

    goto :goto_27

    :catchall_23
    move-exception p1

    :try_start_24
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_27
    :goto_27
    throw p0
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_28} :catch_28

    :catch_28
    move-exception p0

    invoke-static {}, Lcom/android/quickstep/util/SwipePipToHomeAnimator;->access$500()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "release content overlay exp: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_37
    :goto_37
    return-void
.end method
