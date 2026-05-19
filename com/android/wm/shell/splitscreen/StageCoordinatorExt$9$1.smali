.class Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/splitscreen/animation/SurfaceAnimator$SurfaceAnimationFinishedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;->onAnimationStart(I[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;[Landroid/view/RemoteAnimationTarget;Landroid/view/IRemoteAnimationFinishedCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$1:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;

.field public final synthetic val$closeAppLeashes:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;Ljava/util/ArrayList;)V
    .registers 3

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;->this$1:Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9;

    iput-object p2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;->val$closeAppLeashes:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationFinished()V
    .registers 5

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;->val$closeAppLeashes:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_27

    new-instance v1, Landroid/view/SurfaceControl$Transaction;

    invoke-direct {v1}, Landroid/view/SurfaceControl$Transaction;-><init>()V

    iget-object v2, p0, Lcom/android/wm/shell/splitscreen/StageCoordinatorExt$9$1;->val$closeAppLeashes:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/SurfaceControl;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v3

    if-eqz v3, :cond_21

    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Transaction;->hide(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    :cond_21
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_27
    return-void
.end method
