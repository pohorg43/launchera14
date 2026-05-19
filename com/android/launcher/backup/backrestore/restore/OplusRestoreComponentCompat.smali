.class public final Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusRestoreComponentCompat.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusRestoreComponentCompat.kt\ncom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,246:1\n1#2:247\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

.field private static final instance:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;


# instance fields
.field private final mPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWidgetPackageMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final tag:Ljava/lang/String;

.field private final widgetClassnameOp:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->Companion:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat$Companion;

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->instance:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "BR-Launcher_OplusRestoreComponentCompat"

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->tag:Ljava/lang/String;

    const v0, 0x7f120034

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->widgetClassnameOp:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mPackageMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mWidgetPackageMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final synthetic access$getInstance$cp()Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;
    .registers 1

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->instance:Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;

    return-object v0
.end method

.method private final findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, p2, v1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_10

    return-object v0

    :cond_10
    const-string p2, "OplusLauncherAppsCompat.…rHandle()) ?: return null"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_19
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3e

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_3e
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p2

    xor-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_52

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_52
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_54
    .catchall {:try_start_1 .. :try_end_54} :catchall_55

    goto :goto_5a

    :catchall_55
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_5a
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_67

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->tag:Ljava/lang/String;

    const-string p2, "findComponentNameApproximately error occur, e: "

    invoke-static {p2, p1, p0}, Lcom/android/common/util/m0;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_67
    return-object v0
.end method

.method private final getContactsCompatDialerComponentName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Landroid/content/pm/LauncherActivityInfo;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Landroid/content/ComponentName;"
        }
    .end annotation

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_7d

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_7d

    const p0, 0x7f120405

    invoke-static {p0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_53

    const p0, 0x7f120407

    invoke-static {p0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_29

    goto :goto_53

    :cond_29
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f12040f

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2d

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_53
    :goto_53
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_57
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_7d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f12040d

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_57

    invoke-virtual {p1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object p0

    return-object p0

    :cond_7d
    const/4 p0, 0x0

    return-object p0
.end method

.method private final getDialerContactsMessageComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 16

    const v0, 0x7f120411

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_b

    return-object v1

    :cond_b
    const v2, 0x7f120413

    invoke-static {v2}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_15

    return-object v1

    :cond_15
    const v3, 0x7f120410

    invoke-static {v3}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1f

    return-object v1

    :cond_1f
    const v4, 0x7f120412

    invoke-static {v4}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_29

    return-object v1

    :cond_29
    const v5, 0x7f12040d

    invoke-static {v5}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_33

    return-object v1

    :cond_33
    const v6, 0x7f12040f

    invoke-static {v6}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_3d

    return-object v1

    :cond_3d
    const v7, 0x7f12040e

    invoke-static {v7}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v7

    if-nez v7, :cond_47

    return-object v1

    :cond_47
    const v8, 0x7f120417

    invoke-static {v8}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_51

    return-object v1

    :cond_51
    const v9, 0x7f120415

    invoke-static {v9}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_5b

    return-object v1

    :cond_5b
    const v10, 0x7f120416

    invoke-static {v10}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_65

    return-object v1

    :cond_65
    const v11, 0x7f120414

    invoke-static {v11}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_6f

    return-object v1

    :cond_6f
    invoke-static {p2, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7a

    invoke-direct {p0, p1, v2, v4}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b0

    :cond_7a
    invoke-static {p2, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_85

    invoke-direct {p0, p1, v0, v3}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b0

    :cond_85
    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_90

    invoke-direct {p0, p1, v7, v6}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b0

    :cond_90
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9b

    invoke-direct {p0, p1, v7, v5}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b0

    :cond_9b
    invoke-static {p2, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a6

    invoke-direct {p0, p1, v9, v11}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    goto :goto_b0

    :cond_a6
    invoke-static {p2, v11}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b0

    invoke-direct {p0, p1, v8, v10}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->findComponentNameApproximately(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_b0
    :goto_b0
    return-object v1
.end method


# virtual methods
.method public final clear()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final getCompatibleWidgetProvider(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string v0, "appWidgetProvider"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->widgetClassnameOp:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_38

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->widgetClassnameOp:Ljava/lang/String;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1b

    const/4 v3, 0x2

    invoke-static {p2, v0, v2, v3}, Lk7/q;->v(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v0

    if-ne v0, v1, :cond_1b

    goto :goto_1c

    :cond_1b
    move v1, v2

    :goto_1c
    if-eqz v1, :cond_38

    sget-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_38

    sget-object v1, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_38

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object p2

    goto :goto_8d

    :cond_38
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_8d

    if-eqz p1, :cond_8d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_48
    :goto_48
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_70

    invoke-static {p1}, Lcom/android/launcher3/widget/WidgetManagerHelper;->getAllProvidersMap(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/util/ComponentKey;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v5

    invoke-direct {v4, v2, v5}, Lcom/android/launcher3/util/ComponentKey;-><init>(Landroid/content/ComponentName;Landroid/os/UserHandle;)V

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/appwidget/AppWidgetProviderInfo;

    if-eqz v2, :cond_48

    return-object v1

    :cond_70
    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->tag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "on map widget component "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " unflatten failed!"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_48

    :cond_8d
    :goto_8d
    return-object p2
.end method

.method public final getOplusAppCompatComponentName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 7

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "legacyPackageName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_16

    return-object v1

    :cond_16
    invoke-static {p1}, Lcom/android/launcher/OplusLauncherAppsCompat;->getInstance(Landroid/content/Context;)Lcom/android/launcher/OplusLauncherAppsCompat;

    move-result-object p1

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Lcom/android/launcher/OplusLauncherAppsCompat;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_25

    return-object v1

    :cond_25
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2c

    goto :goto_5e

    :cond_2c
    sget-boolean v0, Lcom/android/common/config/FeatureOption;->isOPDevice:Z

    if-eqz v0, :cond_53

    const v0, 0x7f120408

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4a

    const v0, 0x7f120406

    invoke-static {v0}, Lcom/android/common/util/BrandComponentUtils;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_53

    :cond_4a
    if-eqz p3, :cond_50

    invoke-direct {p0, p1, p3}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getContactsCompatDialerComponentName(Ljava/util/List;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    :cond_50
    if-eqz v1, :cond_53

    return-object v1

    :cond_53
    const/4 p0, 0x0

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {p0}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    :goto_5e
    return-object v1
.end method

.method public final getOplusAppCompatComponentNameOnBackupRestore(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_c

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->getDialerContactsMessageComponentName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    goto :goto_d

    :cond_c
    const/4 p0, 0x0

    :goto_d
    return-object p0
.end method

.method public final getWidgetClockCompatWeatherOrSaleComponentName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    const-string/jumbo p0, "originalPackageName"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo p0, "originalClassName"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p0, Lcom/android/common/config/Constants$Packages;->OLD_OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    sget-object v0, Lcom/android/common/config/Constants$Packages;->OPLUS_WEATHER_WIDGET_PACKAGE_NAME:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2d

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2d

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2d

    new-instance p0, Landroid/content/ComponentName;

    invoke-direct {p0, v0, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    move-object p1, v0

    goto :goto_2e

    :cond_2d
    const/4 p0, 0x0

    :goto_2e
    sget-object v1, Lcom/android/common/config/Constants$Packages;->DOMESTIC_SALES_OPWIDGET_PACKAGENAME:Ljava/lang/String;

    sget-object v2, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;

    sget-object v3, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_WEATHER_CLOCK_WIDGET_CLASSNAME:Ljava/lang/String;

    sget-object v4, Lcom/android/common/config/Constants$Packages;->OPLUS_OPWIDGET_WEATHER_WIDGET_CLASSNAME:Ljava/lang/String;

    sget-boolean v5, Lcom/android/common/config/FeatureOption;->isOPExpDevice:Z

    if-nez v5, :cond_8d

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5e

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5e

    sget-object p0, Lcom/android/common/config/Constants$Packages;->LAYOUTRESTOREHELPER_WIDGET_CLASSNAME_OP:Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_5e
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_76

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_76

    sget-object p0, Lcom/android/common/config/Constants$Packages;->VERTICAL_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_8d

    :cond_76
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_8d

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8d

    sget-object p0, Lcom/android/common/config/Constants$Packages;->NEW_WEATHER_WIDGET_CLASS_NAME:Ljava/lang/String;

    new-instance p1, Landroid/content/ComponentName;

    invoke-direct {p1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    :cond_8d
    :goto_8d
    return-object p0
.end method

.method public final init(Landroid/content/Context;)V
    .registers 11

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stringArray"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_19
    const/4 v5, 0x6

    const-string/jumbo v6, "|"

    if-ge v4, v2, :cond_44

    aget-object v7, v0, v4

    invoke-static {v7, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v3, v3, v5}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_41

    iget-object v6, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mPackageMap:Ljava/util/HashMap;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v6, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_41
    add-int/lit8 v4, v4, 0x1

    goto :goto_19

    :cond_44
    iget-object v0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->tag:Ljava/lang/String;

    const-string/jumbo v1, "onRestoreStart: init compat pkg map size "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mPackageMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f030048

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "stringArrayWidget"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    array-length v0, p1

    move v1, v3

    :goto_70
    if-ge v1, v0, :cond_9a

    aget-object v2, p1, v1

    const-string v4, "line"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    filled-new-array {v6}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v3, v3, v5}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_85
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_97

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-interface {v8, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_85

    :cond_97
    add-int/lit8 v1, v1, 0x1

    goto :goto_70

    :cond_9a
    iget-object p1, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->tag:Ljava/lang/String;

    const-string/jumbo v0, "onRestoreStart: init compat widget component name map size "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher/backup/backrestore/restore/OplusRestoreComponentCompat;->mWidgetPackageMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
