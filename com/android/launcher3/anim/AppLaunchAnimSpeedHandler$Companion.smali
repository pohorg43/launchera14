.class public final Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final isEvaluationDurationValid()Z
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-wide v0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sEvaluationDuration:J

    const-wide/16 v2, -0x1

    cmp-long p0, v0, v2

    if-eqz p0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method

.method public final isNotSupportSpeedModify()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isDeviceHigh()Z

    move-result p0

    if-nez p0, :cond_13

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p0

    if-eqz p0, :cond_11

    goto :goto_13

    :cond_11
    const/4 p0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 p0, 0x1

    :goto_14
    return p0
.end method

.method public final isSystemDisableAnimation()Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget p0, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljava/lang/Float;->compare(FF)I

    move-result p0

    if-nez p0, :cond_b

    const/4 p0, 0x1

    goto :goto_c

    :cond_b
    const/4 p0, 0x0

    :goto_c
    return p0
.end method

.method public final parseSpeedLevel(Landroid/content/Context;Ljava/lang/String;Z)I
    .registers 11
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_83

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_11

    move v1, v0

    goto :goto_12

    :cond_11
    move v1, p0

    :goto_12
    if-eqz v1, :cond_16

    goto/16 :goto_83

    :cond_16
    const-string v1, "-"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p2, v1, p0, p0, v2}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v2}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-eqz v1, :cond_3b

    sget-boolean v2, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v2, :cond_3b

    move v2, v0

    goto :goto_3c

    :cond_3b
    move v2, p0

    :goto_3c
    sget-object v3, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isDeviceHigh()Z

    move-result v4

    if-eqz v4, :cond_4c

    if-eq v1, v0, :cond_4c

    sget-boolean v4, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-nez v4, :cond_4c

    move v4, v0

    goto :goto_4d

    :cond_4c
    move v4, p0

    :goto_4d
    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isRLMDevice()Z

    move-result v5

    if-eqz v5, :cond_5b

    invoke-virtual {v3}, Lcom/android/common/util/AppFeatureUtils;->isMdpLow()Z

    move-result v3

    if-eqz v3, :cond_5b

    move v3, v0

    goto :goto_5c

    :cond_5b
    move v3, p0

    :goto_5c
    if-nez v4, :cond_69

    if-eqz v3, :cond_61

    goto :goto_69

    :cond_61
    if-eqz v2, :cond_65

    move v1, v0

    goto :goto_6b

    :cond_65
    move v6, v1

    move v1, p0

    move p0, v6

    goto :goto_6b

    :cond_69
    :goto_69
    move p0, v0

    move v1, p0

    :goto_6b
    if-le p0, v0, :cond_6f

    move p0, v0

    goto :goto_70

    :cond_6f
    move v0, v1

    :goto_70
    if-eqz p3, :cond_be

    if-eqz v0, :cond_be

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setting_app_startup_anim_speed"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_be

    :cond_83
    :goto_83
    sget-object v1, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {v1}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result v1

    if-eqz v1, :cond_90

    sget-boolean p1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz p1, :cond_be

    goto :goto_bd

    :cond_90
    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isRLMDevice:Z

    if-eqz v1, :cond_9e

    sget-object v1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v1}, Lcom/android/common/util/AppFeatureUtils;->isModerateSpeed()Z

    move-result v1

    if-eqz v1, :cond_9e

    move v1, v0

    goto :goto_9f

    :cond_9e
    move v1, p0

    :goto_9f
    sget-object v2, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v2}, Lcom/android/common/util/AppFeatureUtils;->isQuickSpeedEnabled()Z

    move-result v2

    if-eqz v2, :cond_ab

    if-nez v1, :cond_ab

    move v1, v0

    goto :goto_ac

    :cond_ab
    move v1, p0

    :goto_ac
    if-nez v1, :cond_b9

    sget-object v1, Lcom/android/common/config/ScreenInfo;->Companion:Lcom/android/common/config/ScreenInfo$Companion;

    invoke-virtual {v1, p1}, Lcom/android/common/config/ScreenInfo$Companion;->isSupportHighRefreshRate(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_b7

    goto :goto_b9

    :cond_b7
    move p1, p0

    goto :goto_ba

    :cond_b9
    :goto_b9
    move p1, v0

    :goto_ba
    if-eqz p1, :cond_bd

    goto :goto_be

    :cond_bd
    :goto_bd
    move p0, v0

    :cond_be
    :goto_be
    invoke-static {}, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->access$getDEBUG$cp()Z

    move-result p1

    if-eqz p1, :cond_e4

    const-string p1, "Current speedStr = "

    const-string v0, ", finally speed = "

    const-string v1, ", sDurationScale = "

    invoke-static {p1, p2, v0, p0, v1}, Landroidx/constraintlayout/widget/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    sget p2, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, ", recordToSettings = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AppLaunchAnimSpeedHandler"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e4
    return p0
.end method
