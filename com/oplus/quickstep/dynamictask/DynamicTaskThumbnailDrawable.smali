.class public final Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;
.super Lcom/android/launcher3/icons/FastBitmapDrawable;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nDynamicTaskThumbnailDrawable.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DynamicTaskThumbnailDrawable.kt\ncom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,97:1\n1#2:98\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable$Companion;

.field private static final DEGREES_90:F = 90.0f

.field private static final ROTATION_COUNT:I = 0x4

.field private static final TAG:Ljava/lang/String; = "RDT_Drawable"


# instance fields
.field private matrix:Landroid/graphics/Matrix;

.field private final taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->Companion:Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/android/quickstep/views/OplusTaskViewImpl;)V
    .registers 3

    const-string v0, "taskView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getThumbnail()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/icons/FastBitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-direct {p0}, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->initMatrix()V

    return-void
.end method

.method private final initMatrix()V
    .registers 11

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskView;->getThumbnail()Lcom/android/quickstep/views/TaskThumbnailView;

    move-result-object v0

    if-nez v0, :cond_e

    return-void

    :cond_e
    iget-object v1, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mThumbnailData:Lcom/android/systemui/shared/recents/model/ThumbnailData;

    if-nez v1, :cond_13

    return-void

    :cond_13
    iget v1, v1, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    if-eqz v1, :cond_fa

    const/4 v2, 0x2

    if-eq v1, v2, :cond_fa

    iget-object v3, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    iget v4, v0, Lcom/android/quickstep/views/TaskThumbnailView;->mDimColor:I

    invoke-virtual {v0}, Lcom/android/quickstep/views/TaskThumbnailView;->getDimAlpha()F

    move-result v5

    invoke-static {v4, v5}, Lcom/android/launcher3/Utilities;->makeColorTintingColorFilter(IF)Landroid/graphics/ColorFilter;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v3, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    invoke-virtual {v3}, Lcom/android/quickstep/views/TaskView;->getRecentsView()Lcom/android/quickstep/views/RecentsView;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/views/RecentsView;->getPagedViewOrientedState()Lcom/android/quickstep/util/RecentsOrientedState;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/quickstep/util/RecentsOrientedState;->getRecentsActivityRotation()I

    move-result v3

    sub-int v4, v1, v3

    if-gez v4, :cond_3d

    add-int/lit8 v4, v4, 0x4

    :cond_3d
    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eq v4, v5, :cond_4c

    if-eq v4, v2, :cond_45

    move v5, v6

    goto :goto_52

    :cond_45
    iget-object v5, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    goto :goto_52

    :cond_4c
    iget-object v5, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    :goto_52
    if-eq v4, v2, :cond_5f

    const/4 v2, 0x3

    if-eq v4, v2, :cond_58

    goto :goto_65

    :cond_58
    iget-object v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    goto :goto_65

    :cond_5f
    iget-object v2, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    :goto_65
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v7, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    div-float/2addr v2, v7

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v7

    if-eqz v7, :cond_e4

    const-string v7, "initMatrix(), mBitmap["

    invoke-static {v7}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v9}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", thumbnailView["

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "], currentRotation="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailRotation="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", detalRotation="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", translateX="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", translateY="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", scale="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RDT_Drawable"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    int-to-float v1, v4

    const/high16 v3, 0x42b40000  # 90.0f

    mul-float/2addr v1, v3

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->setRotate(F)V

    int-to-float v1, v5

    int-to-float v3, v6

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    iput-object v0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->matrix:Landroid/graphics/Matrix;

    :cond_fa
    return-void
.end method


# virtual methods
.method public drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .registers 5

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_a

    return-void

    :cond_a
    iget-object v1, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->matrix:Landroid/graphics/Matrix;

    if-eqz v1, :cond_14

    iget-object p0, p0, Lcom/android/launcher3/icons/FastBitmapDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    goto :goto_17

    :cond_14
    invoke-super {p0, p1, p2}, Lcom/android/launcher3/icons/FastBitmapDrawable;->drawInternal(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    :goto_17
    return-void
.end method

.method public final getTaskView()Lcom/android/quickstep/views/OplusTaskViewImpl;
    .registers 1

    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/DynamicTaskThumbnailDrawable;->taskView:Lcom/android/quickstep/views/OplusTaskViewImpl;

    return-object p0
.end method
