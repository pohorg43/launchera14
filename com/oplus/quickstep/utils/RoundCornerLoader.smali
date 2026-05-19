.class public final Lcom/oplus/quickstep/utils/RoundCornerLoader;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nRoundCornerLoader.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RoundCornerLoader.kt\ncom/oplus/quickstep/utils/RoundCornerLoader\n+ 2 ArraysJVM.kt\nkotlin/collections/ArraysKt__ArraysJVMKt\n*L\n1#1,122:1\n37#2,2:123\n*S KotlinDebug\n*F\n+ 1 RoundCornerLoader.kt\ncom/oplus/quickstep/utils/RoundCornerLoader\n*L\n91#1:123,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

.field private static final ROUND_CORNER_PROPERTY:Ljava/lang/String; = "ro.display.rc.size"

.field private static final ROUND_CORNER_PROPERTY_OPLUS:Ljava/lang/String; = "ro.oplus.display.rc.size"

.field private static final ROUND_CORNER_PROPERTY_SPLITTER:Ljava/lang/String; = ","

.field private static final TAG:Ljava/lang/String; = "RoundCornerLoader"

.field private static roundedCorner:I

.field private static sScreenWidth:I


# instance fields
.field private defaultScreenRoundCornerRadiusPx:I

.field private final screenCornerRadiusFraction:F

.field private screenRoundCornerRadiusPx:I

.field private splitScreenWindowRoundCornerRadiusPx:I

.field private width:I


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    sput v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->sScreenWidth:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    const v1, 0x3db33333  # 0.0875f

    iput v1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070ec0

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/quickstep/utils/RoundCornerLoader;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static final synthetic access$getRoundedCorner$cp()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->roundedCorner:I

    return v0
.end method

.method public static final synthetic access$getSScreenWidth$cp()I
    .registers 1

    sget v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->sScreenWidth:I

    return v0
.end method

.method public static final synthetic access$setRoundedCorner$cp(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->roundedCorner:I

    return-void
.end method

.method public static final synthetic access$setSScreenWidth$cp(I)V
    .registers 1

    sput p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->sScreenWidth:I

    return-void
.end method

.method private final readCornerRadiusFromProperty()I
    .registers 8

    const-string p0, "ro.display.rc.size"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "RoundCornerLoader"

    const-string v2, "QuickStep"

    const/4 v3, 0x0

    if-eqz v0, :cond_23

    const-string p0, "ro.oplus.display.rc.size"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_23

    const-string p0, "Radius property is empty"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_23
    const-string v0, "radiusProperty"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ","

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x6

    invoke-static {p0, v0, v3, v3, v4}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p0

    new-array v0, v3, [Ljava/lang/String;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    const v0, 0x7fffffff

    :try_start_3e
    array-length v4, p0

    move v5, v3

    :goto_40
    if-ge v5, v4, :cond_4e

    aget-object v6, p0, v5

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    if-ge v6, v0, :cond_4b

    move v0, v6

    :cond_4b
    add-int/lit8 v5, v5, 0x1

    goto :goto_40

    :cond_4e
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_50
    .catchall {:try_start_3e .. :try_end_50} :catchall_51

    goto :goto_56

    :catchall_51
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_56
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_71

    const-string v0, "getRoundCornerRadius e: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_71
    const-string p0, "Radius property is "

    invoke-static {p0, v0, v2, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method private final updateScaleRatioIfNeeded(I)I
    .registers 5

    invoke-static {}, Landroid/app/AppGlobals;->getInitialApplication()Landroid/app/Application;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {v1}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v1

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v2

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    if-eqz v2, :cond_1b

    iget v1, v1, Landroid/graphics/Point;->x:I

    goto :goto_23

    :cond_1b
    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    :goto_23
    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isSupportResolutionSwitch:Z

    if-eqz v2, :cond_51

    iget v2, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    if-eq v2, v1, :cond_51

    iput v1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    const-string v1, "display"

    invoke-virtual {v0, v1}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.hardware.display.DisplayManager"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0}, Landroid/hardware/display/DisplayManager;->getStableDisplaySize()Landroid/graphics/Point;

    move-result-object v0

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->width:I

    int-to-float p0, p0

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    div-float/2addr p0, v0

    int-to-float p1, p1

    mul-float/2addr p1, p0

    float-to-int p1, p1

    const-string p0, "updatedCornerRadius: "

    const-string v0, "QuickStep"

    const-string v1, "RoundCornerLoader"

    invoke-static {p0, p1, v0, v1}, Lcom/android/launcher/a;->a(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    :cond_51
    return p1
.end method


# virtual methods
.method public final getDefaultScreenRoundCornerRadiusPx()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return p0
.end method

.method public final getScreenCornerRadiusFraction()F
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    return p0
.end method

.method public final getScreenRoundCornerRadiusPx()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_b

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->readCornerRadiusFromProperty()I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    :cond_b
    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->updateScaleRatioIfNeeded(I)I

    move-result v0

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    if-gtz v0, :cond_1b

    sget v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->roundedCorner:I

    if-ltz v0, :cond_1b

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    :cond_1b
    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenRoundCornerRadiusPx:I

    return p0
.end method

.method public final getSplitScreenWindowRoundCornerRadiusPx()I
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    iput v0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    :cond_9
    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->splitScreenWindowRoundCornerRadiusPx:I

    return p0
.end method

.method public final setDefaultScreenRoundCornerRadiusPx(I)V
    .registers 2

    iput p1, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->defaultScreenRoundCornerRadiusPx:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    const-string v0, "radius="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", fraction="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->screenCornerRadiusFraction:F

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p0, ", roundedCorner="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->roundedCorner:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
