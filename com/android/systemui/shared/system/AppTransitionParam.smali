.class public final Lcom/android/systemui/shared/system/AppTransitionParam;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/system/AppTransitionParam$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/systemui/shared/system/AppTransitionParam$Companion;

.field private static final NUMBER_9:I = 0x9

.field private static final TAG:Ljava/lang/String; = "AppTransitionParam"


# instance fields
.field private animProgress:F

.field private crop:Landroid/graphics/Rect;

.field private cropOffset:F

.field private volatile hasInterrupted:Z

.field private isFromFolder:Z

.field private isFromRecent:Z

.field private isHotSeatIcon:Z

.field private isOpening:Z

.field private isValid:Z

.field private matrix:Landroid/graphics/Matrix;

.field private volatile needInterceptIconSurface:Z

.field private realCropProgress:F

.field private windowAlpha:F

.field private windowCornerRadius:F

.field private windowScale:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/systemui/shared/system/AppTransitionParam$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/systemui/shared/system/AppTransitionParam$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/systemui/shared/system/AppTransitionParam;->Companion:Lcom/android/systemui/shared/system/AppTransitionParam$Companion;

    return-void
.end method

.method public constructor <init>(Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isOpening:Z

    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->crop:Landroid/graphics/Rect;

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowScale:F

    return-void
.end method


# virtual methods
.method public final applyToTaskLeashForInterrupt(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .registers 5

    const-string/jumbo v0, "taskLeash"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "transaction"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "applyToTaskLeashForInterrupt, params = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppTransitionParam"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isValid:Z

    if-eqz v0, :cond_3e

    iget v0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setAlpha(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    const/16 v0, 0x9

    new-array v0, v0, [F

    iget-object v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p2, p1, v1, v0}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    iget-object v0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->crop:Landroid/graphics/Rect;

    invoke-virtual {p2, p1, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowCornerRadius:F

    invoke-virtual {p2, p1, p0}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    :cond_3e
    return-void
.end method

.method public final getAnimProgress()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->animProgress:F

    return p0
.end method

.method public final getCrop()Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->crop:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getCropOffset()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->cropOffset:F

    return p0
.end method

.method public final getHasInterrupted()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->hasInterrupted:Z

    return p0
.end method

.method public final getMatrix()Landroid/graphics/Matrix;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    return-object p0
.end method

.method public final getNeedInterceptIconSurface()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->needInterceptIconSurface:Z

    return p0
.end method

.method public final getRealCropProgress()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->realCropProgress:F

    return p0
.end method

.method public final getWindowAlpha()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    return p0
.end method

.method public final getWindowCornerRadius()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowCornerRadius:F

    return p0
.end method

.method public final getWindowScale()F
    .registers 1

    iget p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowScale:F

    return p0
.end method

.method public final initForOpeningInterrupt(Landroid/graphics/RectF;I)V
    .registers 5

    const-string v0, "iconRectF"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initForOpeningInterrupt, iconRectF = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppTransitionParam"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    int-to-float p2, p2

    div-float/2addr v1, p2

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    invoke-virtual {v0, p2, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isValid:Z

    return-void
.end method

.method public final isFromFolder()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder:Z

    return p0
.end method

.method public final isFromRecent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromRecent:Z

    return p0
.end method

.method public final isHotSeatIcon()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isHotSeatIcon:Z

    return p0
.end method

.method public final isOpening()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isOpening:Z

    return p0
.end method

.method public final isValid()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isValid:Z

    return p0
.end method

.method public final setAnimProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->animProgress:F

    return-void
.end method

.method public final setCrop(Landroid/graphics/Rect;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->crop:Landroid/graphics/Rect;

    return-void
.end method

.method public final setCropOffset(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->cropOffset:F

    return-void
.end method

.method public final setFromFolder(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromFolder:Z

    return-void
.end method

.method public final setFromRecent(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromRecent:Z

    return-void
.end method

.method public final setHasInterrupted(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->hasInterrupted:Z

    return-void
.end method

.method public final setHotSeatIcon(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isHotSeatIcon:Z

    return-void
.end method

.method public final setMatrix(Landroid/graphics/Matrix;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    return-void
.end method

.method public final setNeedInterceptIconSurface(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->needInterceptIconSurface:Z

    return-void
.end method

.method public final setOpening(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isOpening:Z

    return-void
.end method

.method public final setRealCropProgress(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->realCropProgress:F

    return-void
.end method

.method public final setValid(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isValid:Z

    return-void
.end method

.method public final setWindowAlpha(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    return-void
.end method

.method public final setWindowCornerRadius(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowCornerRadius:F

    return-void
.end method

.method public final setWindowScale(F)V
    .registers 2

    iput p1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowScale:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "animProgress = "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->animProgress:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", windowScale = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowScale:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isValid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isValid:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isOpening = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isOpening:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", matrix = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->matrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowAlpha = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowAlpha:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", crop = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->crop:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", windowCornerRadius = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->windowCornerRadius:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", isFromRecent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shared/system/AppTransitionParam;->isFromRecent:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
