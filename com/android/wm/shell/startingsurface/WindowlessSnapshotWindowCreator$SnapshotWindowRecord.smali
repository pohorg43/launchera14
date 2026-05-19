.class Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;
.super Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SnapshotWindowRecord"
.end annotation


# instance fields
.field private mChildSurface:Landroid/view/SurfaceControl;

.field private final mHasImeSurface:Z

.field private mViewHost:Landroid/view/SurfaceControlViewHost;

.field public final synthetic this$0:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;Landroid/view/SurfaceControlViewHost;Landroid/view/SurfaceControl;IZILcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    invoke-direct {p0, p6, p7}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;-><init>(ILcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    iput-object p3, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    iput p4, p0, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$StartingWindowRecord;->mBGColor:I

    iput-boolean p5, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mHasImeSurface:Z

    return-void
.end method

.method public static synthetic access$100(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;)Landroid/view/SurfaceControl;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    return-object p1
.end method

.method public static synthetic access$200(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;)Landroid/view/SurfaceControlViewHost;
    .registers 1

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p0
.end method

.method public static synthetic access$202(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/view/SurfaceControlViewHost;)Landroid/view/SurfaceControlViewHost;
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mViewHost:Landroid/view/SurfaceControlViewHost;

    return-object p1
.end method

.method public static synthetic b(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->lambda$fadeoutThenRelease$0(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private synthetic lambda$fadeoutThenRelease$0(Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;Landroid/animation/ValueAnimator;)V
    .registers 5

    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_1e

    :cond_b
    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mChildSurface:Landroid/view/SurfaceControl;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {p2, p0, p1}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    invoke-virtual {p2}, Landroid/view/SurfaceControl$Transaction;->apply()V

    return-void

    :cond_1e
    :goto_1e
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method


# virtual methods
.method public fadeoutThenRelease()V
    .registers 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_2e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0xe9

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->this$0:Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;

    invoke-static {v1}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;->access$000(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator;)Lcom/android/wm/shell/common/TransactionPool;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/wm/shell/common/TransactionPool;->acquire()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    new-instance v2, Lcom/android/wm/shell/startingsurface/f0;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/startingsurface/f0;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord$1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord$1;-><init>(Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;Landroid/animation/ValueAnimator;Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_2e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method public hasImeSurface()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->mHasImeSurface:Z

    return p0
.end method

.method public removeImmediately()V
    .registers 1

    invoke-super {p0}, Lcom/android/wm/shell/startingsurface/StartingSurfaceDrawer$SnapshotRecord;->removeImmediately()V

    invoke-virtual {p0}, Lcom/android/wm/shell/startingsurface/WindowlessSnapshotWindowCreator$SnapshotWindowRecord;->fadeoutThenRelease()V

    return-void
.end method
