.class public Lcom/android/systemui/shared/recents/model/ThumbnailData;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEFAULT_TASK_SIZE_X:I = 0x118

.field private static final DEFAULT_TASK_SIZE_Y:I = 0x271

.field private static final TAG:Ljava/lang/String; = "ThumbnailData"


# instance fields
.field public appearance:I

.field public captureTime:J

.field public insets:Landroid/graphics/Rect;

.field public isInGrounp:Z

.field public isRealSnapshot:Z

.field public isTranslucent:Z

.field public letterboxInsets:Landroid/graphics/Rect;

.field public orientation:I

.field public reducedResolution:Z

.field public rotation:I

.field public scale:F

.field public snapshotId:J

.field public thumbnail:Landroid/graphics/Bitmap;

.field public windowingMode:I


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    const/high16 v1, 0x3f800000  # 1.0f

    iput v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    return-void
.end method

.method public constructor <init>(Landroid/window/TaskSnapshot;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/android/systemui/shared/recents/model/ThumbnailData;->makeThumbnail(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->insets:Landroid/graphics/Rect;

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->letterboxInsets:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->orientation:I

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getRotation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->rotation:I

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isLowResolution()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->reducedResolution:Z

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_4d

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    goto :goto_51

    :cond_4d
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->scale:F

    :goto_51
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isRealSnapshot:Z

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->isTranslucent()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->isTranslucent:Z

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->windowingMode:I

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getAppearance()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->appearance:I

    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->snapshotId:J

    :try_start_6f
    invoke-virtual {p1}, Landroid/window/TaskSnapshot;->getCaptureTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->captureTime:J
    :try_end_75
    .catch Ljava/lang/Exception; {:try_start_6f .. :try_end_75} :catch_76

    goto :goto_7a

    :catch_76
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/systemui/shared/recents/model/ThumbnailData;->captureTime:J

    :goto_7a
    return-void
.end method

.method private static makeThumbnail(Landroid/window/TaskSnapshot;)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    const-string v1, "ThumbnailData"

    if-eqz p0, :cond_3e

    :try_start_5
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v2
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_9} :catch_27

    if-eqz v2, :cond_1e

    :try_start_b
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    move-result-object v3
    :try_end_13
    .catchall {:try_start_b .. :try_end_13} :catchall_14

    goto :goto_1f

    :catchall_14
    move-exception v3

    :try_start_15
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_19

    goto :goto_1d

    :catchall_19
    move-exception v2

    :try_start_1a
    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1d
    throw v3
    :try_end_1e
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1e} :catch_27

    :cond_1e
    move-object v3, v0

    :goto_1f
    if-eqz v2, :cond_3f

    :try_start_21
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_24} :catch_25

    goto :goto_3f

    :catch_25
    move-exception v2

    goto :goto_29

    :catch_27
    move-exception v2

    move-object v3, v0

    :goto_29
    const-string v4, "Unexpected snapshot without USAGE_GPU_SAMPLED_IMAGE: "

    invoke-static {v4}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3f

    :cond_3e
    move-object v3, v0

    :cond_3f
    :goto_3f
    if-nez v3, :cond_9f

    if-eqz p0, :cond_47

    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    move-result-object v0

    :cond_47
    const/high16 v2, -0x1000000

    if-nez v0, :cond_92

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->getBaseDensity(I)I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "makeThumbnail: baseDensityDpi:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    mul-int/lit16 v3, v0, 0x118

    mul-int/lit16 v0, v0, 0x271

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "makeThumbnail: taskSize is null for snapshot component: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez p0, :cond_83

    const-string/jumbo p0, "null"

    goto :goto_87

    :cond_83
    invoke-virtual {p0}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    move-result-object p0

    :goto_87
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9f

    :cond_92
    iget p0, v0, Landroid/graphics/Point;->x:I

    iget v0, v0, Landroid/graphics/Point;->y:I

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p0, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    :cond_9f
    :goto_9f
    return-object v3
.end method

.method public static wrap([I[Landroid/window/TaskSnapshot;)Ljava/util/HashMap;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([I[",
            "Landroid/window/TaskSnapshot;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/systemui/shared/recents/model/ThumbnailData;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-eqz p0, :cond_26

    if-eqz p1, :cond_26

    array-length v1, p0

    array-length v2, p1

    if-eq v1, v2, :cond_e

    goto :goto_26

    :cond_e
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    if-ltz v1, :cond_26

    aget v2, p0, v1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/shared/recents/model/ThumbnailData;

    aget-object v4, p1, v1

    invoke-direct {v3, v4}, Lcom/android/systemui/shared/recents/model/ThumbnailData;-><init>(Landroid/window/TaskSnapshot;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    :cond_26
    :goto_26
    return-object v0
.end method
