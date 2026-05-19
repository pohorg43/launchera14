.class public final Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher/settings/LauncherSettingsFragment;
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

    invoke-direct {p0}, Lcom/android/launcher/settings/LauncherSettingsFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getActionbarTitle(Z)Ljava/lang/String;
    .registers 2

    if-eqz p1, :cond_18

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f120324

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n                Launch…ings_title)\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2d

    :cond_18
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p1, 0x7f1200b2

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "{\n                Launch…nbar_title)\n            }"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2d
    return-object p0
.end method

.method public final getExportGlobalSearchData(Landroid/content/Context;)Landroid/os/Bundle;
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string p0, "BranchSearchHelper"

    const-string v0, "content://com.oppo.quicksearchbox.FeatureProvider"

    const-string v1, "context"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-boolean v1, Lcom/android/common/config/FeatureOption;->sExportGlobalSearchMateData:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_5f

    :try_start_e
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p1
    :try_end_1a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_1a} :catch_4c
    .catch Landroid/os/DeadObjectException; {:try_start_e .. :try_end_1a} :catch_35
    .catchall {:try_start_e .. :try_end_1a} :catchall_33

    if-eqz p1, :cond_2f

    :try_start_1c
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/common/config/Constants$Packages;->KEY_EXPORT_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-virtual {p1, v0, v1, v2, v2}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v2
    :try_end_2a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1c .. :try_end_2a} :catch_2d
    .catch Landroid/os/DeadObjectException; {:try_start_1c .. :try_end_2a} :catch_2b
    .catchall {:try_start_1c .. :try_end_2a} :catchall_59

    goto :goto_2f

    :catch_2b
    move-exception v0

    goto :goto_37

    :catch_2d
    move-exception v0

    goto :goto_4e

    :cond_2f
    :goto_2f
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    return-object v2

    :catchall_33
    move-exception p0

    goto :goto_5b

    :catch_35
    move-exception v0

    move-object p1, v2

    :goto_37
    :try_start_37
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deadObjectException:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_55

    :catch_4c
    move-exception v0

    move-object p1, v2

    :goto_4e
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_37 .. :try_end_55} :catchall_59

    :goto_55
    invoke-static {p1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_5f

    :catchall_59
    move-exception p0

    move-object v2, p1

    :goto_5b
    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw p0

    :cond_5f
    :goto_5f
    return-object v2
.end method
