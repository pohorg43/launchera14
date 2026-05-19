.class public final Lcom/android/common/util/LauncherAnimConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

.field private static final isAppTransitionByLightAnim$delegate:Lh4/f;

.field private static final isNewWallPaperAnimationEnable$delegate:Lh4/f;

.field private static final isUnLockAnimDisable$delegate:Lh4/f;

.field private static final isWallpaperAnimDisable$delegate:Lh4/f;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/common/util/LauncherAnimConfig;

    invoke-direct {v0}, Lcom/android/common/util/LauncherAnimConfig;-><init>()V

    sput-object v0, Lcom/android/common/util/LauncherAnimConfig;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig;

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig$isAppTransitionByLightAnim$2;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig$isAppTransitionByLightAnim$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig$isUnLockAnimDisable$2;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig$isUnLockAnimDisable$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig$isWallpaperAnimDisable$2;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig$isWallpaperAnimDisable$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable$delegate:Lh4/f;

    sget-object v0, Lcom/android/common/util/LauncherAnimConfig$isNewWallPaperAnimationEnable$2;->INSTANCE:Lcom/android/common/util/LauncherAnimConfig$isNewWallPaperAnimationEnable$2;

    invoke-static {v0}, Lh4/g;->b(Lkotlin/jvm/functions/Function0;)Lh4/f;

    move-result-object v0

    sput-object v0, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable$delegate:Lh4/f;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$isLevelBOrBPlus()Z
    .registers 1

    invoke-static {}, Lcom/android/common/util/LauncherAnimConfig;->isLevelBOrBPlus()Z

    move-result v0

    return v0
.end method

.method private static final isLevelBOrBPlus()Z
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-nez v0, :cond_11

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/common/util/PlatformLevelUtils;->isAnimationLevel(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    :goto_12
    return v0
.end method


# virtual methods
.method public final isAppTransitionByLightAnim()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->isAppTransitionByLightAnim$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isNewWallPaperAnimationEnable()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->isNewWallPaperAnimationEnable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isUnLockAnimDisable()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->isUnLockAnimDisable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isWallpaperAnimDisable()Z
    .registers 1

    sget-object p0, Lcom/android/common/util/LauncherAnimConfig;->isWallpaperAnimDisable$delegate:Lh4/f;

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method
