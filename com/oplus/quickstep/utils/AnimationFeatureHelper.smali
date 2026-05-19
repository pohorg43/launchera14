.class public final Lcom/oplus/quickstep/utils/AnimationFeatureHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nAnimationFeatureHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AnimationFeatureHelper.kt\ncom/oplus/quickstep/utils/AnimationFeatureHelper\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,221:1\n1#2:222\n1855#3,2:223\n1855#3,2:225\n1855#3,2:227\n*S KotlinDebug\n*F\n+ 1 AnimationFeatureHelper.kt\ncom/oplus/quickstep/utils/AnimationFeatureHelper\n*L\n150#1:223,2\n193#1:225,2\n207#1:227,2\n*E\n"
    }
.end annotation


# static fields
.field private static final CONFIG_LIST_NAME_1PX_CARD_DISABLE:Ljava/lang/String; = "launcher_anim_prj_feature_1px_disable_card"

.field private static final CONFIG_LIST_NAME_1PX_PKG_DISABLE:Ljava/lang/String; = "launcher_anim_prj_feature_1px_disable_pkg"

.field private static final CONFIG_LIST_NAME_LAUNCHER_ANIM_FEATURE_CONFIG:Ljava/lang/String; = "launcher_anim_prj_feature_config"

.field private static final CONFIG_NAME_LAUNCHER_ANIM_FEATURE_1PX_ENABLE:Ljava/lang/String; = "launcher_anim_prj_feature_1px_enable"

.field private static final CONFIG_NAME_LAUNCHER_ANIM_FEATURE_ASYNC_ENABLE:Ljava/lang/String; = "launcher_anim_prj_feature_async_enable"

.field private static final CONFIG_NAME_LAUNCHER_ANIM_FEATURE_ICON_BLUR_ENABLE:Ljava/lang/String; = "launcher_anim_prj_feature_icon_blur_enable"

.field private static final CONFIG_NAME_LAUNCHER_ANIM_FEATURE_MULTI_APP_BLOCK_ENABLE:Ljava/lang/String; = "launcher_anim_prj_feature_multi_app_block_enable"

.field private static final CONFIG_NAME_LAUNCHER_ANIM_FEATURE_RT_UNLOCK_ENABLE:Ljava/lang/String; = "launcher_anim_prj_feature_rt_unlock_enable"

.field private static final CONFIG_TAG_1PX_CARD_LIST_DISABLE:Ljava/lang/String; = "cardType"

.field private static final CONFIG_TAG_1PX_PKG_DISABLE:Ljava/lang/String; = "pkg"

.field public static final Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

.field private static final TAG:Ljava/lang/String; = "AnimationFeatureHelper"

.field private static final sInstance$delegate:Lh4/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lh4/f<",
            "Lcom/oplus/quickstep/utils/AnimationFeatureHelper;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile m1pxCardDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private volatile m1pxEnable:I

.field private volatile m1pxPkgDisableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mAsyncEnable:I

.field private volatile mIconBlurEnable:I

.field private volatile mMultiAppBlockEnable:I

.field private volatile mRTUnlockEnable:I

.field private mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion$sInstance$2;->INSTANCE:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion$sInstance$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->sInstance$delegate:Lh4/f;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mAsyncEnable:I

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRTUnlockEnable:I

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mMultiAppBlockEnable:I

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mIconBlurEnable:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxPkgDisableList:Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxCardDisableList:Ljava/util/List;

    iput v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxEnable:I

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->updateRusConfig()V

    new-instance v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$1;

    invoke-direct {v0, p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$1;-><init>(Lcom/oplus/quickstep/utils/AnimationFeatureHelper;)V

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    sget-object p0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {p0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->registerRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    return-void
.end method

.method public static final synthetic access$getSInstance$delegate$cp()Lh4/f;
    .registers 1

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->sInstance$delegate:Lh4/f;

    return-object v0
.end method

.method public static final synthetic access$updateRusConfig(Lcom/oplus/quickstep/utils/AnimationFeatureHelper;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->updateRusConfig()V

    return-void
.end method

.method public static final getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->Companion:Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper$Companion;->getInstance()Lcom/oplus/quickstep/utils/AnimationFeatureHelper;

    move-result-object v0

    return-object v0
.end method

.method private final declared-synchronized set1pxEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setAsyncEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mAsyncEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setIconBlurEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mIconBlurEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setMultiAppBlockEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mMultiAppBlockEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final declared-synchronized setRTUnlockEnable(I)V
    .registers 2

    monitor-enter p0

    :try_start_1
    iput p1, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRTUnlockEnable:I
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-void

    :catchall_5
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final updateRusConfig()V
    .registers 10

    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getConfigLists()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher_anim_prj_feature_config"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ConfigList;->getList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_34
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1b3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v3

    sparse-switch v3, :sswitch_data_2ca

    goto :goto_34

    :sswitch_4c
    const-string v3, "launcher_anim_prj_feature_1px_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    goto :goto_34

    :cond_55
    :try_start_55
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->set1pxEnable(I)V

    const-string v1, "AnimationFeatureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRusConfig 1pxEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->get1pxEnable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_7c
    .catchall {:try_start_55 .. :try_end_7c} :catchall_7d

    goto :goto_82

    :catchall_7d
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_82
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_34

    :cond_89
    const-string v2, "AnimationFeatureHelper"

    const-string v3, "updateRusConfig 1px e:"

    invoke-static {v3, v1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_34

    :sswitch_91
    const-string v3, "launcher_anim_prj_feature_rt_unlock_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9a

    goto :goto_34

    :cond_9a
    :try_start_9a
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->setRTUnlockEnable(I)V

    const-string v1, "AnimationFeatureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRusConfig rtUnlockEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getRTUnlockEnable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_c1
    .catchall {:try_start_9a .. :try_end_c1} :catchall_c2

    goto :goto_c7

    :catchall_c2
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_c7
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_cf

    goto/16 :goto_34

    :cond_cf
    const-string v2, "AnimationFeatureHelper"

    const-string v3, "updateRusConfig rtUnlockEnable e:"

    invoke-static {v3, v1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_34

    :sswitch_d8
    const-string v3, "launcher_anim_prj_feature_multi_app_block_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e2

    goto/16 :goto_34

    :cond_e2
    :try_start_e2
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->setMultiAppBlockEnable(I)V

    const-string v1, "AnimationFeatureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRusConfig multiAppBlockEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getMultiAppBlockEnable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->updateMultiAppBlockable()V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_10c
    .catchall {:try_start_e2 .. :try_end_10c} :catchall_10d

    goto :goto_112

    :catchall_10d
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_112
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_11a

    goto/16 :goto_34

    :cond_11a
    const-string v2, "AnimationFeatureHelper"

    const-string v3, "updateRusConfig multiAppBlockEnable e:"

    invoke-static {v3, v1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_34

    :sswitch_123
    const-string v3, "launcher_anim_prj_feature_icon_blur_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12d

    goto/16 :goto_34

    :cond_12d
    :try_start_12d
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->setIconBlurEnable(I)V

    const-string v1, "AnimationFeatureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRusConfig iconBlurEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getIconBlurEnable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_154
    .catchall {:try_start_12d .. :try_end_154} :catchall_155

    goto :goto_15a

    :catchall_155
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_15a
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_162

    goto/16 :goto_34

    :cond_162
    const-string v2, "AnimationFeatureHelper"

    const-string v3, "updateRusConfig iconBlueEnable e:"

    invoke-static {v3, v1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_34

    :sswitch_16b
    const-string v3, "launcher_anim_prj_feature_async_enable"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_175

    goto/16 :goto_34

    :cond_175
    :try_start_175
    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Config;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->setAsyncEnable(I)V

    const-string v1, "AnimationFeatureHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateRusConfig asyncEnable:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->getAsyncEnable()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lh4/z;->a:Lh4/z;
    :try_end_19c
    .catchall {:try_start_175 .. :try_end_19c} :catchall_19d

    goto :goto_1a2

    :catchall_19d
    move-exception v1

    invoke-static {v1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    :goto_1a2
    invoke-static {v1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_1aa

    goto/16 :goto_34

    :cond_1aa
    const-string v2, "AnimationFeatureHelper"

    const-string v3, "updateRusConfig asyncEnable e:"

    invoke-static {v3, v1, v2}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto/16 :goto_34

    :cond_1b3
    sget-object v0, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v0}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseConfigManager;->getChangedRusConfig()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;

    invoke-virtual {v0}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$RusXmlConfig;->getItemArrays()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c7
    :goto_1c7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2c9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$KeyWithName;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "launcher_anim_prj_feature_1px_disable_pkg"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v3, :cond_24d

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxPkgDisableList:Ljava/util/List;

    monitor-enter v2

    :try_start_1e4
    iget-object v3, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxPkgDisableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1f1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_247

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;
    :try_end_1fd
    .catchall {:try_start_1e4 .. :try_end_1fd} :catchall_24a

    :try_start_1fd
    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "pkg"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_221

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_215

    move v6, v4

    goto :goto_216

    :cond_215
    move v6, v5

    :goto_216
    if-eqz v6, :cond_221

    iget-object v6, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxPkgDisableList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_221
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_223
    .catchall {:try_start_1fd .. :try_end_223} :catchall_224

    goto :goto_229

    :catchall_224
    move-exception v3

    :try_start_225
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_229
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_230

    goto :goto_1f1

    :cond_230
    const-string v6, "AnimationFeatureHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRusConfig parse CONFIG_LIST_NAME_1PX_PKG_DISABLE e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_246
    .catchall {:try_start_225 .. :try_end_246} :catchall_24a

    goto :goto_1f1

    :cond_247
    monitor-exit v2

    goto/16 :goto_1c7

    :catchall_24a
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_24d
    const-string v3, "launcher_anim_prj_feature_1px_disable_card"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1c7

    iget-object v2, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxCardDisableList:Ljava/util/List;

    monitor-enter v2

    :try_start_258
    iget-object v3, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxCardDisableList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    invoke-virtual {v1}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$ItemArray;->getList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_265
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2c3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;
    :try_end_271
    .catchall {:try_start_258 .. :try_end_271} :catchall_2c6

    :try_start_271
    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getTag()Ljava/lang/String;

    move-result-object v6

    const-string v7, "cardType"

    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_29d

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_289

    move v6, v4

    goto :goto_28a

    :cond_289
    move v6, v5

    :goto_28a
    if-eqz v6, :cond_29d

    iget-object v6, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxCardDisableList:Ljava/util/List;

    invoke-virtual {v3}, Lcom/android/rusconfig/RusBaseXmlType1ConfigManager$Item;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v6, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29d
    sget-object v3, Lh4/z;->a:Lh4/z;
    :try_end_29f
    .catchall {:try_start_271 .. :try_end_29f} :catchall_2a0

    goto :goto_2a5

    :catchall_2a0
    move-exception v3

    :try_start_2a1
    invoke-static {v3}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    :goto_2a5
    invoke-static {v3}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v3

    if-nez v3, :cond_2ac

    goto :goto_265

    :cond_2ac
    const-string v6, "AnimationFeatureHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateRusConfig parse CONFIG_LIST_NAME_1PX_CARD_DISABLE e:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2c2
    .catchall {:try_start_2a1 .. :try_end_2c2} :catchall_2c6

    goto :goto_265

    :cond_2c3
    monitor-exit v2

    goto/16 :goto_1c7

    :catchall_2c6
    move-exception p0

    monitor-exit v2

    throw p0

    :cond_2c9
    return-void

    :sswitch_data_2ca
    .sparse-switch
        -0x4e6b156b -> :sswitch_16b
        -0x1ac993fc -> :sswitch_123
        -0xc9bc7b8 -> :sswitch_d8
        0xfddd210 -> :sswitch_91
        0x2c6b6038 -> :sswitch_4c
    .end sparse-switch
.end method


# virtual methods
.method public final get1pxDisableCardList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxCardDisableList:Ljava/util/List;

    return-object p0
.end method

.method public final get1pxDisablePkgList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxPkgDisableList:Ljava/util/List;

    return-object p0
.end method

.method public final get1pxEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->m1pxEnable:I

    return p0
.end method

.method public final getAsyncEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mAsyncEnable:I

    return p0
.end method

.method public final getIconBlurEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mIconBlurEnable:I

    return p0
.end method

.method public final getMultiAppBlockEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mMultiAppBlockEnable:I

    return p0
.end method

.method public final getRTUnlockEnable()I
    .registers 1

    iget p0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRTUnlockEnable:I

    return p0
.end method

.method public final onDestroy()V
    .registers 3

    iget-object v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    if-eqz v0, :cond_d

    sget-object v1, Lcom/android/common/rus/LauncherCommonConfigManager;->Companion:Lcom/android/common/rus/LauncherCommonConfigManager$Companion;

    invoke-virtual {v1}, Lcom/android/common/rus/LauncherCommonConfigManager$Companion;->getInstance()Lcom/android/common/rus/LauncherCommonConfigManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/rusconfig/RusBaseConfigManager;->unregisterRusConfigChangedListener(Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;)V

    :cond_d
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oplus/quickstep/utils/AnimationFeatureHelper;->mRusConfigChangedListener:Lcom/android/rusconfig/RusBaseConfigManager$RusConfigChangedListener;

    return-void
.end method
