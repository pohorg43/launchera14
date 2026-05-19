.class public Lcom/android/launcher3/graphics/Scrim;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final SCRIM_PROGRESS:Landroid/util/FloatProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/FloatProperty<",
            "Lcom/android/launcher3/graphics/Scrim;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final mRoot:Landroid/view/View;

.field public mScrimAlpha:I

.field public mScrimColor:I

.field public mScrimProgress:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/graphics/Scrim$1;

    const-string/jumbo v1, "scrimProgress"

    invoke-direct {v0, v1}, Lcom/android/launcher3/graphics/Scrim$1;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    iput-object p1, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f060871

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/graphics/Scrim;F)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/launcher3/graphics/Scrim;->lambda$setScrimProgressAsync$0(Lcom/android/launcher3/graphics/Scrim;F)V

    return-void
.end method

.method private static synthetic lambda$setScrimProgressAsync$0(Lcom/android/launcher3/graphics/Scrim;F)V
    .registers 3

    sget-object v0, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    return-void
.end method

.method public static setScrimProgressAsync(Lcom/android/launcher3/graphics/Scrim;F)V
    .registers 4

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_14

    sget-object v0, Lcom/android/launcher3/graphics/Scrim;->SCRIM_PROGRESS:Landroid/util/FloatProperty;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p0, p1}, Landroid/util/FloatProperty;->set(Ljava/lang/Object;Ljava/lang/Float;)V

    goto :goto_1e

    :cond_14
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Lcom/android/launcher3/graphics/h;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/graphics/h;-><init>(Lcom/android/launcher3/graphics/Scrim;F)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_1e
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    if-lez v0, :cond_d

    iget p0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimColor:I

    invoke-static {p0, v0}, Lcom/android/launcher3/icons/GraphicsUtils;->setColorAlphaBound(II)I

    move-result p0

    invoke-virtual {p1, p0}, Landroid/graphics/Canvas;->drawColor(I)V

    :cond_d
    return-void
.end method

.method public getScrimProgress()F
    .registers 1

    iget p0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    return p0
.end method

.method public setScrimProgress(F)V
    .registers 3

    iget v0, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_16

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimProgress:F

    const/high16 v0, 0x437f0000  # 255.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/graphics/Scrim;->mScrimAlpha:I

    iget-object p0, p0, Lcom/android/launcher3/graphics/Scrim;->mRoot:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_16
    return-void
.end method
