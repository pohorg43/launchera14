.class public final Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final EXTRA_CATEGORY_EXPORT_KEY:Ljava/lang/String; = "com.android.settings.category.export"

.field public static final EXTRA_CATEGORY_KEY:Ljava/lang/String; = "com.android.settings.category"

.field public static final INSTANCE:Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;

.field private static final MANUFACTURER_SETTINGS:Ljava/lang/String;

.field public static final META_DATA_PREFERENCE_ICON:Ljava/lang/String; = "com.android.settings.icon"

.field public static final META_DATA_PREFERENCE_TITLE:Ljava/lang/String; = "com.android.settings.title"

.field public static final META_DATA_PREFERENCE_TITLE_URI:Ljava/lang/String; = "com.android.settings.title_uri"

.field public static final META_DATA_SHORTCUT_ID:Ljava/lang/String; = "com.android.app.shortcuts_id"

.field private static final PERMISSION_SAFE_SETTINGS:Ljava/lang/String; = "com.oplus.permission.safe.SETTINGS"

.field private static final SHORTCUT_DEFAULT_CATEGORY:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String; = "StaticShortcutAddManager"


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;

    const-string v0, "com.oplus.settings.category.ia.shortcut"

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->SHORTCUT_DEFAULT_CATEGORY:Ljava/lang/String;

    const-string v0, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->MANUFACTURER_SETTINGS:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic getMANUFACTURER_SETTINGS$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getSHORTCUT_DEFAULT_CATEGORY$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final getShortcutFromMetaData(Landroid/content/Context;)Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StaticShortcutAddManager"

    const-string v1, "getShortcutFromMetaData called"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->MANUFACTURER_SETTINGS:Ljava/lang/String;

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->SHORTCUT_DEFAULT_CATEGORY:Ljava/lang/String;

    invoke-static {p0, v0, v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->loadShortcutForAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final isPermissionGranted(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pm"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-nez p1, :cond_a

    return v0

    :cond_a
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "com.oplus.permission.safe.SETTINGS"

    const-string v4, "StaticShortcutAddManager"

    const/4 v5, 0x1

    if-nez v2, :cond_3d

    invoke-virtual {p0, v3, v1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-nez v2, :cond_1f

    move v2, v5

    goto :goto_20

    :cond_1f
    move v2, v0

    :goto_20
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isPermissionGranted: packageName: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", permissionGranted: "

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3e

    :cond_3d
    move v2, v0

    :goto_3e
    if-eqz v2, :cond_41

    return v5

    :cond_41
    iget-object v1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v1, :cond_4a

    iget-object v6, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-nez v6, :cond_4a

    return v0

    :cond_4a
    if-nez v1, :cond_51

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    goto :goto_53

    :cond_51
    iget-object p1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :goto_53
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7f

    invoke-virtual {p0, v3, p1}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    if-nez p0, :cond_61

    move p0, v5

    goto :goto_62

    :cond_61
    move p0, v0

    :goto_62
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isPermissionGranted: activityInfoPkgName: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", permissionActivityGranted: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_80

    :cond_7f
    move p0, v0

    :goto_80
    if-nez v2, :cond_84

    if-eqz p0, :cond_85

    :cond_84
    move v0, v5

    :cond_85
    const-string p0, "isPermissionGranted: granted: "

    invoke-static {p0, v0, v4}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    return v0
.end method

.method private static final loadActivityShortcuts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/RestoreBaseShortcut;",
            ">;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const v1, 0xc0080

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_f
    :goto_f
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_44

    const-string/jumbo v2, "pm"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->isPermissionGranted(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;)Z

    move-result v2

    if-nez v2, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " not has permission or not a system app"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StaticShortcutAddManager"

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_44
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "com.android.settings.category"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_60

    const-string v3, "com.android.settings.category.export"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    :cond_60
    const-string v3, "activityInfo"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0, p1, p2, v2, v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->loadShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V

    goto :goto_f

    :cond_69
    return-void
.end method

.method private static final loadShortcut(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/os/Bundle;Landroid/content/pm/ComponentInfo;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/RestoreBaseShortcut;",
            ">;",
            "Landroid/os/Bundle;",
            "Landroid/content/pm/ComponentInfo;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->isExp:Z

    if-nez v1, :cond_c

    const-string v1, "com.android.settings.category"

    goto :goto_e

    :cond_c
    const-string v1, "com.android.settings.category.export"

    :goto_e
    const-string v2, "StaticShortcutAddManager"

    if-eqz p3, :cond_64

    invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_64

    :cond_19
    invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "loadShortcut, categoryKey "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not equals requiredCategory"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_3d
    new-instance p1, Landroid/util/Pair;

    iget-object v2, p4, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    iget-object v3, p4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-direct {p1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;

    if-nez v2, :cond_57

    new-instance v2, Lcom/android/launcher/backup/mode/RestoreActivityShortcut;

    invoke-direct {v2, p0, p4, v1}, Lcom/android/launcher/backup/mode/RestoreActivityShortcut;-><init>(Landroid/content/Context;Landroid/content/pm/ComponentInfo;Ljava/lang/String;)V

    invoke-interface {v0, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5a

    :cond_57
    invoke-virtual {v2, p3}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->setMetaData(Landroid/os/Bundle;)V

    :goto_5a
    invoke-interface {p2, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_63

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_63
    return-void

    :cond_64
    :goto_64
    const-string p0, "loadShortcut, Found "

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    iget-object p1, p4, Landroid/content/pm/ComponentInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " missing metadata "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final loadShortcutForAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .registers 8
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "StaticShortcutAddManager"

    const-string v1, "context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "defaultCategory"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_11
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p0, p2, v2, v3}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->loadActivityShortcuts(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Landroid/content/Intent;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, " loadActivityShortcuts done: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6e

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getShortcutId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5b

    goto :goto_6e

    :cond_5b
    new-instance v2, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getMPackageName()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p2, p0}, Lcom/android/launcher/backup/mode/RestoreBaseShortcut;->getShortcutId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v2, v3, v4, p2}, Lcom/android/launcher3/shortcuts/ShortcutKey;-><init>(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3a

    :cond_6e
    :goto_6e
    const-string p2, " invalid app shortcut !"

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_73
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_73} :catch_74

    goto :goto_3a

    :catch_74
    move-exception p0

    const-string p1, " loadShortcutForAction e: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {p0, p1, v0}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :cond_7e
    return-object v1
.end method

.method public static final loadShortcutFromMetaData(Landroid/content/Context;)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "StaticShortcutAddManager"

    const-string v1, "loadShortcutFromMetaData called"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->tryPinRestoreShortcutInNewPhone(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public final getMANUFACTURER_SETTINGS()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->MANUFACTURER_SETTINGS:Ljava/lang/String;

    return-object p0
.end method

.method public final getSHORTCUT_DEFAULT_CATEGORY()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->SHORTCUT_DEFAULT_CATEGORY:Ljava/lang/String;

    return-object p0
.end method
