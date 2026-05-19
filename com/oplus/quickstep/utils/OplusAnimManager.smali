.class public final Lcom/oplus/quickstep/utils/OplusAnimManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusAnimManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusAnimManager.kt\ncom/oplus/quickstep/utils/OplusAnimManager\n+ 2 Delegates.kt\nkotlin/properties/Delegates\n*L\n1#1,150:1\n33#2,3:151\n33#2,3:154\n33#2,3:157\n33#2,3:160\n*S KotlinDebug\n*F\n+ 1 OplusAnimManager.kt\ncom/oplus/quickstep/utils/OplusAnimManager\n*L\n30#1:151,3\n35#1:154,3\n40#1:157,3\n45#1:160,3\n*E\n"
    }
.end annotation


# static fields
.field public static final synthetic $$delegatedProperties:[Lz4/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lkotlin/reflect/KProperty<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public static final ANIM_TAG:Ljava/lang/String; = "MultiAppLaunchInterrupt"

.field public static final INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

.field private static final SUPPORT_INTERRUPT:Z = true

.field private static final TAG:Ljava/lang/String; = "OplusAnimManager"

.field public static final WINDOW_ANIM_TAG:Ljava/lang/String; = "LauncherRemoteAnim"

.field private static final mAnimationController$delegate:Lv4/c;

.field private static final mAnimationSeqHelper$delegate:Lv4/c;

.field private static final mAppOpenAnimMergeHelper$delegate:Lv4/c;

.field private static final mMultiAppAnimMergeHelper$delegate:Lv4/c;


# direct methods
.method public static constructor <clinit>()V
    .registers 5

    const-class v0, Lcom/oplus/quickstep/utils/OplusAnimManager;

    const/4 v1, 0x4

    new-array v1, v1, [Lz4/n;

    const-string v2, "mAppOpenAnimMergeHelper"

    const-string v3, "getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/util/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "mMultiAppAnimMergeHelper"

    const-string v3, "getMMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/util/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const-string v2, "mAnimationController"

    const-string v3, "getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/util/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;

    move-result-object v2

    const/4 v3, 0x2

    aput-object v2, v1, v3

    const-string v2, "mAnimationSeqHelper"

    const-string v3, "getMAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;"

    invoke-static {v0, v2, v3, v4}, Lcom/android/common/util/b;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Lz4/k;

    move-result-object v0

    const/4 v2, 0x3

    aput-object v0, v1, v2

    sput-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    new-instance v0, Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->INSTANCE:Lcom/oplus/quickstep/utils/OplusAnimManager;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$1;

    invoke-direct {v2, v1}, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$1;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAppOpenAnimMergeHelper$delegate:Lv4/c;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$2;

    invoke-direct {v2, v1}, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$2;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/oplus/quickstep/utils/OplusAnimManager;->mMultiAppAnimMergeHelper$delegate:Lv4/c;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v1

    new-instance v2, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$3;

    invoke-direct {v2, v1}, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$3;-><init>(Ljava/lang/Object;)V

    sput-object v2, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationController$delegate:Lv4/c;

    invoke-direct {v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v0

    new-instance v1, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$4;

    invoke-direct {v1, v0}, Lcom/oplus/quickstep/utils/OplusAnimManager$special$$inlined$observable$4;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationSeqHelper$delegate:Lv4/c;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final createAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/oplus/quickstep/utils/AnimationController;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationController;-><init>()V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/oplus/quickstep/utils/DefaultAnimationController;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;-><init>()V

    :goto_11
    return-object p0
.end method

.method private final createAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/oplus/quickstep/utils/AnimationSeqHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AnimationSeqHelper;-><init>()V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;-><init>()V

    :goto_11
    return-object p0
.end method

.method private final createAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/AppOpenAnimMergeHelper;-><init>()V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;-><init>()V

    :goto_11
    return-object p0
.end method

.method private final createMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;
    .registers 1

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result p0

    if-eqz p0, :cond_c

    new-instance p0, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/MultiAppAnimMergeHelper;-><init>()V

    goto :goto_11

    :cond_c
    new-instance p0, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;-><init>()V

    :goto_11
    return-object p0
.end method

.method private final getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationController$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/DefaultAnimationController;

    return-object p0
.end method

.method private final getMAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationSeqHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    return-object p0
.end method

.method private final getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAppOpenAnimMergeHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    return-object p0
.end method

.method private final getMMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;
    .registers 4

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mMultiAppAnimMergeHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Lv4/c;->getValue(Ljava/lang/Object;Lz4/n;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    return-object p0
.end method

.method private final setMAnimationController(Lcom/oplus/quickstep/utils/DefaultAnimationController;)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationController$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMAnimationSeqHelper(Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAnimationSeqHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMAppOpenAnimMergeHelper(Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mAppOpenAnimMergeHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method

.method private final setMMultiAppAnimMergeHelper(Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;)V
    .registers 5

    sget-object v0, Lcom/oplus/quickstep/utils/OplusAnimManager;->mMultiAppAnimMergeHelper$delegate:Lv4/c;

    sget-object v1, Lcom/oplus/quickstep/utils/OplusAnimManager;->$$delegatedProperties:[Lz4/n;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1, p1}, Lv4/c;->setValue(Ljava/lang/Object;Lz4/n;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final cleanUpRecentsAnimation()V
    .registers 3

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const-string v0, "OplusAnimManager"

    const-string v1, "cleanUpRecentsAnimation"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->cleanUpRecentsAnim()Z

    move-result v0

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->setOnTaskAppearedTarget(Landroid/view/RemoteAnimationTarget;)V

    :cond_20
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->cleanUpRecentsAnim()V

    return-void
.end method

.method public final getAnimController()Lcom/oplus/quickstep/utils/DefaultAnimationController;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    return-object p0
.end method

.method public final getAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object p0

    return-object p0
.end method

.method public final getAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object p0

    return-object p0
.end method

.method public final getMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p0

    return-object p0
.end method

.method public final recreateAnimHelper()V
    .registers 3

    const-string v0, "OplusAnimManager"

    const-string v1, "recreateAnimHelper"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->setMAppOpenAnimMergeHelper(Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->setMMultiAppAnimMergeHelper(Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->setMAnimationController(Lcom/oplus/quickstep/utils/DefaultAnimationController;)V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->createAnimationSeqHelper()Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->setMAnimationSeqHelper(Lcom/oplus/quickstep/utils/DefaultAnimationSeqHelper;)V

    return-void
.end method

.method public final reset()V
    .registers 2

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->reset()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->cleanUpRecentsAnim()V

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMMultiAppAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/DefaultMultiAppAnimMergeHelper;->reset()V

    return-void
.end method

.method public final supportInterceptKeyEvent()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSupportInterceptKeyEvent()Z

    move-result p0

    return p0
.end method

.method public final supportInterruption()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    invoke-virtual {p0}, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim()Z

    move-result p0

    if-nez p0, :cond_16

    sget-boolean p0, Lcom/android/quickstep/TaskAnimationManager;->ENABLE_SHELL_TRANSITIONS:Z

    if-eqz p0, :cond_16

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isSupportBlockableAnimation()Z

    move-result p0

    if-eqz p0, :cond_16

    const/4 p0, 0x1

    goto :goto_17

    :cond_16
    const/4 p0, 0x0

    :goto_17
    return p0
.end method

.method public final tryFinishOpenRemote(Ljava/lang/Runnable;)V
    .registers 5

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->supportInterruption()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAppOpenAnimMergeHelper()Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/DefaultAppOpenAnimMergeHelper;->isRecentsMergeOpenRemote()Z

    move-result v0

    const-string v1, "tryFinishOpenRemote, isRecentsMergeOpenRemote = "

    const-string v2, "OplusAnimManager"

    invoke-static {v1, v0, v2}, Lcom/android/common/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz v0, :cond_20

    invoke-direct {p0}, Lcom/oplus/quickstep/utils/OplusAnimManager;->getMAnimationController()Lcom/oplus/quickstep/utils/DefaultAnimationController;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/oplus/quickstep/utils/DefaultAnimationController;->setAppLaunchAnimFinishCallback(Ljava/lang/Runnable;)V

    goto :goto_25

    :cond_20
    if-eqz p1, :cond_25

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_25
    :goto_25
    return-void
.end method
