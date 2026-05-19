.class public Lcom/android/quickstep/util/OplusBaseTransformParams;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private mAlreadyPostCallback:Z

.field private final mCallback:Landroid/view/Choreographer$FrameCallback;

.field private mCurrentProgress:F

.field private mCurrentScrollOffset:F

.field private mParams:Lcom/android/quickstep/util/SurfaceTransaction;

.field public mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/quickstep/util/g;

    invoke-direct {v0, p0}, Lcom/android/quickstep/util/g;-><init>(Lcom/android/quickstep/util/OplusBaseTransformParams;)V

    iput-object v0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method

.method public static synthetic a(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback$lambda$0(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V

    return-void
.end method

.method private static final mCallback$lambda$0(Lcom/android/quickstep/util/OplusBaseTransformParams;J)V
    .registers 3

    const-string/jumbo p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    iget p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentProgress:F

    sput p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentProgress:F

    iget p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentScrollOffset:F

    sput p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->currentScrollOffset:F

    iget-object p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mParams:Lcom/android/quickstep/util/SurfaceTransaction;

    if-eqz p1, :cond_1c

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    if-eqz p0, :cond_1c

    invoke-virtual {p0, p1}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->scheduleApply(Lcom/android/quickstep/util/SurfaceTransaction;)V

    :cond_1c
    return-void
.end method


# virtual methods
.method public final needApplyNextFrame(Lcom/android/quickstep/util/SurfaceTransaction;)Z
    .registers 6

    iget-object v0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mSyncTransactionApplier:Lcom/android/quickstep/util/SurfaceTransactionApplier;

    const/4 v1, 0x0

    if-eqz v0, :cond_21

    sget-boolean v2, Lcom/oplus/quickstep/utils/AppWindowHelper;->updateParamsNextFrame:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_21

    iput-object p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mParams:Lcom/android/quickstep/util/SurfaceTransaction;

    iget-boolean p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    if-nez p1, :cond_1d

    iput-boolean v3, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mAlreadyPostCallback:Z

    sget-object p1, Lcom/oplus/quickstep/utils/AppWindowHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-virtual {p1}, Lcom/oplus/quickstep/utils/AppWindowHelper;->getChoreographer()Landroid/view/Choreographer;

    move-result-object p1

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {p1, p0}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    :cond_1d
    invoke-virtual {v0}, Lcom/android/quickstep/util/SurfaceTransactionApplier;->invalidateIfPossible()V

    move v1, v3

    :cond_21
    return v1
.end method

.method public final removeFrameCallback()V
    .registers 2

    sget-object v0, Lcom/oplus/quickstep/utils/AppWindowHelper;->INSTANCE:Lcom/oplus/quickstep/utils/AppWindowHelper;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AppWindowHelper;->getChoreographer()Landroid/view/Choreographer;

    move-result-object v0

    iget-object p0, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCallback:Landroid/view/Choreographer$FrameCallback;

    invoke-virtual {v0, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final setCurrentProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentProgress:F

    return-void
.end method

.method public final setCurrentScrollOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/quickstep/util/OplusBaseTransformParams;->mCurrentScrollOffset:F

    return-void
.end method
