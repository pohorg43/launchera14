.class public final Lcom/android/common/util/PlatformLevelUtils;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final ANIMATION_LEVEL_A:I = 0x2

.field public static final ANIMATION_LEVEL_A_PLUS:I = 0x1

.field public static final ANIMATION_LEVEL_B:I = 0x4

.field public static final ANIMATION_LEVEL_B_PLUS:I = 0x3

.field public static final ANIMATION_LEVEL_UNDEFINED:I = -0x1

.field public static final INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

.field private static final TAG:Ljava/lang/String; = "PlatformLevelUtils"

.field private static final animationLevelOS14$delegate:Lh4/f;

.field private static final validAnimLevel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/android/common/util/PlatformLevelUtils;

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;-><init>()V

    sput-object v0, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    sget-object v0, Lcom/android/common/util/PlatformLevelUtils$animationLevelOS14$2;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils$animationLevelOS14$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/PlatformLevelUtils;->animationLevelOS14$delegate:Lh4/f;

    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    invoke-static {v1}, Li4/o;->i([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/PlatformLevelUtils;->validAnimLevel:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getAnimationLevel(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getInstance(Landroid/content/Context;)Lcom/oplus/util/OplusPlatformLevelUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformAnimationLevel()I

    move-result p0
    :try_end_11
    .catchall {:try_start_5 .. :try_end_11} :catchall_12

    return p0

    :catchall_12
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_26

    const-string v0, "Fail to getAnimationLevel, "

    const-string v1, "PlatformLevelUtils"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    const/4 p0, 0x2

    return p0

    :cond_26
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method

.method private final getAnimationLevelOS14()I
    .registers 1

    sget-object p0, Lcom/android/common/util/PlatformLevelUtils;->animationLevelOS14$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    return p0
.end method

.method public static final getGaussianLevel(Landroid/content/Context;)I
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDevice()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_15

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isShowMiddleLevelGaussian()Z

    move-result v0

    if-eqz v0, :cond_15

    return v1

    :cond_15
    :try_start_15
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getInstance(Landroid/content/Context;)Lcom/oplus/util/OplusPlatformLevelUtils;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/util/OplusPlatformLevelUtils;->getPlatformGaussianLevel()I

    move-result p0
    :try_end_21
    .catchall {:try_start_15 .. :try_end_21} :catchall_22

    return p0

    :catchall_22
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_35

    const-string v0, "Fail to getGaussianLevel, "

    const-string v2, "PlatformLevelUtils"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return v1

    :cond_35
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method

.method private static final getLevelString(IZ)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x1

    const-string v1, "UnKnow"

    if-eq p0, v0, :cond_24

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1c

    const/4 v0, 0x3

    if-eq p0, v0, :cond_14

    const/4 v0, 0x4

    if-eq p0, v0, :cond_f

    goto :goto_2b

    :cond_f
    if-eqz p1, :cond_2b

    const-string v1, "B"

    goto :goto_2b

    :cond_14
    if-eqz p1, :cond_19

    const-string v1, "B+"

    goto :goto_2b

    :cond_19
    const-string v1, "High"

    goto :goto_2b

    :cond_1c
    if-eqz p1, :cond_21

    const-string v1, "A"

    goto :goto_2b

    :cond_21
    const-string v1, "Middle"

    goto :goto_2b

    :cond_24
    if-eqz p1, :cond_29

    const-string v1, "A+"

    goto :goto_2b

    :cond_29
    const-string v1, "Low"

    :cond_2b
    :goto_2b
    return-object v1
.end method

.method public static final getPlatformLevelInfo(Landroid/content/Context;)Ljava/lang/String;
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v1

    if-eqz v1, :cond_25

    const-string/jumbo p0, "new Level: "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/common/util/PlatformLevelUtils;->getLevelString(IZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_4c

    :cond_25
    const-string/jumbo v0, "old Level: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/common/util/PlatformLevelUtils;->getLevelString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", and GaussianLevel is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    invoke-static {p0, v2}, Lcom/android/common/util/PlatformLevelUtils;->getLevelString(IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_4c
    const-string v0, "Device Animation Level is "

    invoke-static {v0, p0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final isAnimationLevel(I)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    :cond_a
    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isAnimationLevelAAsAPlus()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_1e

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1e

    if-ne v3, p0, :cond_1d

    move v2, v3

    :cond_1d
    return v2

    :cond_1e
    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result v0

    if-ne v0, p0, :cond_25

    move v2, v3

    :cond_25
    return v2
.end method

.method public static final isAnimationLevelValid()Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->isAnimationLevelDisable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    :cond_a
    sget-object v0, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_14

    return v1

    :cond_14
    sget-object v1, Lcom/android/common/util/PlatformLevelUtils;->validAnimLevel:Ljava/util/List;

    invoke-direct {v0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static final isBlurUnavailable(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1d

    const/4 p0, 0x3

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-nez p0, :cond_1b

    const/4 p0, 0x4

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    if-eqz p0, :cond_1c

    :cond_1b
    move v1, v2

    :cond_1c
    return v1

    :cond_1d
    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p0

    if-ne p0, v2, :cond_24

    move v1, v2

    :cond_24
    return v1
.end method

.method public static final isDynamicBlurAvailable(Landroid/content/Context;)Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getIconBlurEnable()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v0, v3, :cond_17

    if-lez v0, :cond_38

    goto :goto_23

    :cond_17
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object v0

    const-string v3, "com.android.launcher.is_support_icon_blur"

    invoke-virtual {v0, v3}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    :goto_23
    move v1, v2

    goto :goto_38

    :cond_25
    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {v2}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v1

    goto :goto_38

    :cond_30
    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_38

    goto :goto_23

    :cond_38
    :goto_38
    return v1
.end method

.method public static final isDynamicBlurUnavailable(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    invoke-static {v1}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result p0

    xor-int/2addr p0, v1

    return p0

    :cond_12
    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1
.end method

.method public static final isHighLevelAnimation(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final isIconBlurAvailable(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getIconBlurEnable()I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-eq p0, v2, :cond_17

    if-lez p0, :cond_2f

    goto :goto_23

    :cond_17
    invoke-static {}, Lcom/oplus/content/OplusFeatureConfigManager;->getInstance()Lcom/oplus/content/OplusFeatureConfigManager;

    move-result-object p0

    const-string v2, "com.android.launcher.is_support_icon_blur"

    invoke-virtual {p0, v2}, Lcom/oplus/content/OplusFeatureConfigManager;->hasFeature(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    :goto_23
    move v0, v1

    goto :goto_2f

    :cond_25
    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-static {v1}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    :cond_2f
    :goto_2f
    return v0
.end method

.method public static final isLowLevelAnimation(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method public static final isMiddleLevelAnimation(Landroid/content/Context;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method public static final logToFile(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Platform level info: GaussianLevel = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/common/util/PlatformLevelUtils;->INSTANCE:Lcom/android/common/util/PlatformLevelUtils;

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getGaussianLevel(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", AnimationLevel = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevel(Landroid/content/Context;)I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isAnimationLevelDisable = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isAnimationLevelDisable()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, ", animationLevelOS14 = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {v1}, Lcom/android/common/util/PlatformLevelUtils;->getAnimationLevelOS14()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isAnimationLevelValid = "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevelValid()Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PlatformLevelUtils"

    invoke-static {v0, p0}, Lcom/android/launcher3/logging/FileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
