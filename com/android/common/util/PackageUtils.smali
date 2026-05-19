.class public final Lcom/android/common/util/PackageUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/common/util/PackageUtils$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nPackageUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 PackageUtils.kt\ncom/android/common/util/PackageUtils\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,426:1\n1855#2,2:427\n1855#2,2:429\n1855#2,2:431\n*S KotlinDebug\n*F\n+ 1 PackageUtils.kt\ncom/android/common/util/PackageUtils\n*L\n367#1:427,2\n370#1:429,2\n373#1:431,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/common/util/PackageUtils$Companion;

.field private static final TAG:Ljava/lang/String; = "PackageUtils"

.field public static final TYPE_HIDE_LAUNCH_ICON:I = 0x4

.field public static final TYPE_HIDE_UNINSTALL_ICON_SOFT:I = 0x2

.field public static final TYPE_SHOW_UNINSTALL_REMINDER:I = 0x8

.field private static final mHideIconList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHideUninstallButtonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mReminderList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final mRemovableAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile sInstance:Lcom/android/common/util/PackageUtils;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/common/util/PackageUtils$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/common/util/PackageUtils$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/PackageUtils;->mReminderList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/common/util/PackageUtils;->mRemovableAppList:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/common/util/PackageUtils;->loadUninstallableAppConfigOriginalList()V

    :cond_a
    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/android/common/util/PackageUtils;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMHideIconList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMHideUninstallButtonList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMReminderList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageUtils;->mReminderList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getMRemovableAppList$cp()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageUtils;->mRemovableAppList:Ljava/util/List;

    return-object v0
.end method

.method public static final synthetic access$getSInstance$cp()Lcom/android/common/util/PackageUtils;
    .registers 1

    sget-object v0, Lcom/android/common/util/PackageUtils;->sInstance:Lcom/android/common/util/PackageUtils;

    return-object v0
.end method

.method public static final synthetic access$setSInstance$cp(Lcom/android/common/util/PackageUtils;)V
    .registers 1

    sput-object p0, Lcom/android/common/util/PackageUtils;->sInstance:Lcom/android/common/util/PackageUtils;

    return-void
.end method

.method public static final getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->getApplicationEnabledSetting(Landroid/content/Context;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static final getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->getExplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstalledApp(Landroid/content/Context;)Ljava/util/List;
    .registers 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->getInstalledApp(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final getInstance()Lcom/android/common/util/PackageUtils;
    .registers 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0}, Lcom/android/common/util/PackageUtils$Companion;->getInstance()Lcom/android/common/util/PackageUtils;

    move-result-object v0

    return-object v0
.end method

.method public static final isApplicationEnabled(I)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->isApplicationEnabled(I)Z

    move-result p0

    return p0
.end method

.method public static final isCanDeleteIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->isCanDeleteIcon(Lcom/android/launcher3/model/data/ItemInfoWithIcon;)Z

    move-result p0

    return p0
.end method

.method public static final isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isCanUninstall(Lcom/android/launcher3/model/data/ItemInfoWithIcon;Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static final isExist(Landroid/content/Context;Landroid/content/Intent;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    return p0
.end method

.method public static final isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PackageUtils$Companion;->isExist(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isFilterDisableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isFilterDisableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isIllegalDeepShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->isIllegalDeepShortcutItem(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static final isInForbidUnstallList(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->isInForbidUnstallList(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method public static final isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isPackageEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static final isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PackageUtils$Companion;->isPackageInstalled(Landroid/content/Context;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p0

    return p0
.end method

.method public static final isPermissionGrantedApp(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PackageUtils$Companion;->isPermissionGrantedApp(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isRemovableApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isRemovableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/android/common/util/PackageUtils$Companion;->isThirdPartApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0}, Lcom/android/common/util/PackageUtils$Companion;->isThirdPartApp(Landroid/content/pm/ApplicationInfo;)Z

    move-result p0

    return p0
.end method

.method public static final unFreezePackageIfNeeded(Landroid/content/Context;Ljava/lang/String;I)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/common/util/PackageUtils$Companion;->unFreezePackageIfNeeded(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final getHideIconList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    return-object p0
.end method

.method public final getHideUninstallButtonList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    return-object p0
.end method

.method public final getUninstallableAppConfigList()V
    .registers 13

    const-string/jumbo p0, "null cannot be cast to non-null type kotlin.collections.List<kotlin.String>"

    const-string v0, "getUninstallableAppConfigList:e："

    const-string v1, "PackageUtils"

    sget-object v2, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v3, Lcom/android/common/util/PackageUtils;->mReminderList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    sget-object v4, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    :try_start_16
    const-string v5, "android.content.pm.OplusPackageManager"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "getUninstallableAppConfig"

    const/4 v8, 0x1

    new-array v9, v8, [Ljava/lang/Class;

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    invoke-virtual {v5, v7, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    const-string v7, "clazz.getDeclaredMethod(…imitiveType\n            )"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v7, v8, [Ljava/lang/Object;

    const/4 v9, 0x4

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v11

    invoke-virtual {v5, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/util/List;

    invoke-interface {v2, v7}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v2, v8, [Ljava/lang/Object;

    const/16 v7, 0x8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v11

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    new-array v2, v8, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-virtual {v5, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_73
    .catch Ljava/lang/ClassNotFoundException; {:try_start_16 .. :try_end_73} :catch_d9
    .catch Ljava/lang/InstantiationException; {:try_start_16 .. :try_end_73} :catch_c5
    .catch Ljava/lang/IllegalAccessException; {:try_start_16 .. :try_end_73} :catch_b1
    .catch Ljava/lang/ClassCastException; {:try_start_16 .. :try_end_73} :catch_9d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_16 .. :try_end_73} :catch_89
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_16 .. :try_end_73} :catch_75

    goto/16 :goto_ec

    :catch_75
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :catch_89
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :catch_9d
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :catch_b1
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :catch_c5
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_ec

    :catch_d9
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ec
    return-void
.end method

.method public final isHideUninstallButton(Ljava/lang/String;)Z
    .registers 2

    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isNeedHideIcon(Ljava/lang/String;)Z
    .registers 2

    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final isNeedShowUninstallReminder(Ljava/lang/String;)Z
    .registers 2

    sget-object p0, Lcom/android/common/util/PackageUtils;->mReminderList:Ljava/util/List;

    invoke-static {p0, p1}, Li4/v;->y(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final loadUninstallableAppConfigOriginalList()V
    .registers 4

    invoke-virtual {p0}, Lcom/android/common/util/PackageUtils;->getUninstallableAppConfigList()V

    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideIconList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const-string v1, "PackageUtils"

    if-eqz v0, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "hideIcon packageName from pms:"

    invoke-static {v2, v0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9

    :cond_1d
    sget-object p0, Lcom/android/common/util/PackageUtils;->mReminderList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_23
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_36

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v2, "reminder packageName from pms:"

    invoke-static {v2, v0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_23

    :cond_36
    sget-object p0, Lcom/android/common/util/PackageUtils;->mHideUninstallButtonList:Ljava/util/List;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4e

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "hideUninstallButton packageName from pms:"

    invoke-static {v2, v0, v1}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    :cond_4e
    return-void
.end method
