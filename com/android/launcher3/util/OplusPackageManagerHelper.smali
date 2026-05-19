.class public final Lcom/android/launcher3/util/OplusPackageManagerHelper;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final INSTANCE:Lcom/android/launcher3/util/OplusPackageManagerHelper;

.field private static final PROGRESS_LEVEL:I = 0x64


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/util/OplusPackageManagerHelper;

    invoke-direct {v0}, Lcom/android/launcher3/util/OplusPackageManagerHelper;-><init>()V

    sput-object v0, Lcom/android/launcher3/util/OplusPackageManagerHelper;->INSTANCE:Lcom/android/launcher3/util/OplusPackageManagerHelper;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final startDetailsActivityForInfo(Landroid/content/Context;Lcom/android/launcher3/model/data/ItemInfo;Landroid/graphics/Rect;Landroid/os/Bundle;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sourceBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "opts"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    const/4 v1, 0x0

    if-eqz v0, :cond_47

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;

    iget v2, v0, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->runtimeStatusFlags:I

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_47

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->getProgressLevel()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_47

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/ItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :cond_36
    if-nez v1, :cond_3a

    const-string v1, ""

    :cond_3a
    new-instance p1, Lcom/android/launcher3/util/PackageManagerHelper;

    invoke-direct {p1, p0}, Lcom/android/launcher3/util/PackageManagerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v1}, Lcom/android/launcher3/util/PackageManagerHelper;->getMarketIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_47
    instance-of v0, p1, Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v0, :cond_51

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/AppInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_72

    :cond_51
    instance-of v0, p1, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    if-eqz v0, :cond_5d

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    goto :goto_72

    :cond_5d
    instance-of v0, p1, Lcom/android/launcher3/PendingAddItemInfo;

    if-eqz v0, :cond_67

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/PendingAddItemInfo;

    iget-object v0, v0, Lcom/android/launcher3/PendingAddItemInfo;->componentName:Landroid/content/ComponentName;

    goto :goto_72

    :cond_67
    instance-of v0, p1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz v0, :cond_71

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget-object v0, v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    goto :goto_72

    :cond_71
    move-object v0, v1

    :goto_72
    if-nez v0, :cond_75

    return-void

    :cond_75
    :try_start_75
    invoke-static {}, Lcom/android/common/multiapp/MultiAppManager;->getInstance()Lcom/android/common/multiapp/MultiAppManager;

    move-result-object v2

    iget-object v3, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/common/multiapp/MultiAppManager;->isMultiAppUserId(I)Z

    move-result v2

    if-eqz v2, :cond_b0

    new-instance p3, Landroid/content/Intent;

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string/jumbo v3, "package"

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v1}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {p3, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const v0, 0x10008000

    invoke-virtual {p3, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v0, "userId"

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {p3, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p3, p2}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0, p3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_b0
    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherApps;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, p1, p2, p3}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_bf
    .catchall {:try_start_75 .. :try_end_bf} :catchall_c0

    goto :goto_c5

    :catchall_c0
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_c5
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_dd

    const p2, 0x7f1200b5

    const/4 p3, 0x0

    invoke-static {p0, p2, p3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "OplusPackageManagerHelper"

    const-string p2, "Unable to launch settings"

    invoke-static {p0, p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_dd
    return-void
.end method
