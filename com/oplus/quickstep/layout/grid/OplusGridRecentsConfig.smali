.class public final Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;

.field private static final SUPPORT:Z = true

.field private static final isHeaderEnable:Z

.field public static final isSupport:Z
    .annotation build Lkotlin/jvm/JvmField;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;

    invoke-direct {v0}, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;-><init>()V

    sput-object v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->INSTANCE:Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support132()Z

    move-result v0

    sput-boolean v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSupport:Z

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final isEnable()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSupport:Z

    if-eqz v0, :cond_12

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenExpanded()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_12

    :cond_10
    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method public static synthetic isEnable$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isHeaderEnable()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isHeaderEnable:Z

    return v0
.end method

.method public static synthetic isHeaderEnable$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final isTabletHeaderEnable()Z
    .registers 1

    sget-boolean v0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSupport:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->isTablet()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public static synthetic isTabletHeaderEnable$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method


# virtual methods
.method public final isSameSizeEnable()Z
    .registers 1

    sget-boolean p0, Lcom/oplus/quickstep/layout/grid/OplusGridRecentsConfig;->isSupport:Z

    if-eqz p0, :cond_e

    sget-object p0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p0}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method
