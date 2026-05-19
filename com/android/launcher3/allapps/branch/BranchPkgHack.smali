.class public final Lcom/android/launcher3/allapps/branch/BranchPkgHack;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nBranchPkgHack.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BranchPkgHack.kt\ncom/android/launcher3/allapps/branch/BranchPkgHack\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,86:1\n766#2:87\n857#2,2:88\n766#2:90\n857#2,2:91\n766#2:93\n857#2,2:94\n*S KotlinDebug\n*F\n+ 1 BranchPkgHack.kt\ncom/android/launcher3/allapps/branch/BranchPkgHack\n*L\n42#1:87\n42#1:88,2\n47#1:90\n47#1:91,2\n75#1:93\n75#1:94,2\n*E\n"
    }
.end annotation


# static fields
.field private static final EU_MARKET_HEYTAP_CLASSNAME_MAIN:Ljava/lang/String; = "com.oplus.external.ui.LaunchActivity"

.field private static final GOOGLE_MAIN_SEARCH_ACTIVITY:Ljava/lang/String; = "com.google.android.googlequicksearchbox.SearchActivity"

.field private static final GOOGLE_SEARCH_PACKAGE_NAME:Ljava/lang/String; = "com.google.android.googlequicksearchbox"

.field public static final INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

.field private static final MARKET_HEYTAP_CLASSNAME_MAIN:Ljava/lang/String; = "com.heytap.market.activity.MainActivity"

.field private static final MARKET_HEYTAP_PACKAGENAME:Ljava/lang/String; = "com.heytap.market"

.field public static final MAX_APP_SIZE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "BranchPkgHack"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    invoke-direct {v0}, Lcom/android/launcher3/allapps/branch/BranchPkgHack;-><init>()V

    sput-object v0, Lcom/android/launcher3/allapps/branch/BranchPkgHack;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchPkgHack;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final filterHackPkg(Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/pm/LauncherApps;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/os/UserHandle;",
            "Landroid/content/pm/LauncherApps;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    const-string p0, "launcherApps"

    invoke-static {p3, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "appInfos"

    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    const/4 p0, 0x0

    return-object p0

    :cond_12
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    const/4 v0, 0x0

    const-string v1, "BranchPkgHack"

    if-nez p0, :cond_a1

    if-nez p2, :cond_1f

    goto/16 :goto_a1

    :cond_1f
    invoke-virtual {p3, p1, p2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    :try_start_23
    invoke-static {p0}, Lio/branch/search/u;->a(Ljava/util/List;)Landroid/content/pm/LauncherActivityInfo;

    move-result-object p0

    const-string p1, "a(pkgPages)"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_35
    :goto_35
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_52

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    move-object v2, p3

    check-cast v2, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_35

    :cond_52
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_9a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "filter length :"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ", appInfo: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;
    :try_end_84
    .catch Ljava/lang/IllegalStateException; {:try_start_23 .. :try_end_84} :catch_85

    return-object p0

    :catch_85
    move-exception p0

    const-string p1, "filterHackPkg: use branch filter pkg error, e:"

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9a
    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0

    :cond_a1
    :goto_a1
    const-string p0, "filterHackPkg: filter appInfo failed!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method public final filterHackPkg(Ljava/lang/String;Ljava/util/List;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;)",
            "Lcom/android/launcher3/model/data/AppInfo;"
        }
    .end annotation

    const-string p0, "appInfos"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "com.google.android.googlequicksearchbox"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_48

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_18
    :goto_18
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_41

    iget-object v4, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.google.android.googlequicksearchbox.SearchActivity"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_41

    move v4, v0

    goto :goto_42

    :cond_41
    move v4, v1

    :goto_42
    if-eqz v4, :cond_18

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_18

    :cond_48
    const-string p0, "com.heytap.market"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_97

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_59
    :goto_59
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_98

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_90

    iget-object v5, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "com.heytap.market.activity.MainActivity"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8e

    iget-object v4, v4, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.oplus.external.ui.LaunchActivity"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_90

    :cond_8e
    move v4, v0

    goto :goto_91

    :cond_90
    move v4, v1

    :goto_91
    if-eqz v4, :cond_59

    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_59

    :cond_97
    move-object p0, p2

    :cond_98
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_ae

    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/2addr p0, v0

    if-eqz p0, :cond_ac

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0

    :cond_ac
    const/4 p0, 0x0

    return-object p0

    :cond_ae
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method
