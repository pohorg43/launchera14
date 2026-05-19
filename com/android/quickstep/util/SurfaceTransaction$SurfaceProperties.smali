.class public Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/quickstep/util/SurfaceTransaction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SurfaceProperties"
.end annotation


# instance fields
.field private final mSurface:Landroid/view/SurfaceControl;

.field public final synthetic this$0:Lcom/android/quickstep/util/SurfaceTransaction;


# direct methods
.method public constructor <init>(Lcom/android/quickstep/util/SurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 3

    iput-object p1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    return-void
.end method


# virtual methods
.method public setAlpha(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_15
    return-object p0
.end method

.method public setCornerRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setHide()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setLayer(I)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setLayer(Landroid/view/SurfaceControl;I)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setMatrix(Landroid/graphics/Matrix;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 5

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    iget-object v2, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v2}, Lcom/android/quickstep/util/SurfaceTransaction;->access$100(Lcom/android/quickstep/util/SurfaceTransaction;)[F

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    :cond_1b
    return-object p0
.end method

.method public setRemove()V
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_24

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_24

    :cond_b
    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    monitor-enter v0

    :try_start_e
    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v1}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object p0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v1, p0}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_21

    throw p0

    :cond_24
    :goto_24
    return-void
.end method

.method public setShadowRadius(F)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setShow()Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 3

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setVisibility(Z)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    return-object p0
.end method

.method public setWindowCrop(Landroid/graphics/Rect;)Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;
    .registers 4

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->this$0:Lcom/android/quickstep/util/SurfaceTransaction;

    invoke-static {v0}, Lcom/android/quickstep/util/SurfaceTransaction;->access$000(Lcom/android/quickstep/util/SurfaceTransaction;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/quickstep/util/SurfaceTransaction$SurfaceProperties;->mSurface:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    :cond_15
    return-object p0
.end method
