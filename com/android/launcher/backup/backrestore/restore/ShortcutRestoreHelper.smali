.class public final Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nShortcutRestoreHelper.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ShortcutRestoreHelper.kt\ncom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Maps.kt\nkotlin/collections/MapsKt___MapsKt\n*L\n1#1,323:1\n1855#2:324\n1855#2,2:326\n1856#2:328\n1855#2:329\n1855#2,2:330\n1856#2:332\n1855#2,2:333\n1855#2,2:335\n1#3:325\n215#4,2:337\n*S KotlinDebug\n*F\n+ 1 ShortcutRestoreHelper.kt\ncom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper\n*L\n81#1:324\n90#1:326,2\n81#1:328\n231#1:329\n236#1:330,2\n231#1:332\n265#1:333,2\n283#1:335,2\n305#1:337,2\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;

.field private static final TAG:Ljava/lang/String; = "ShortcutRestoreHelper"

.field private static mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;"
        }
    .end annotation
.end field

.field private static mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private static mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;

    invoke-direct {v0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;

    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final addRepinShortcutLaterWhenParseXml(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "pkg"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutId"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object p2, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/util/ArraySet;

    if-nez p2, :cond_20

    new-instance p2, Landroid/util/ArraySet;

    invoke-direct {p2}, Landroid/util/ArraySet;-><init>()V

    :cond_20
    invoke-virtual {p2, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-object p1, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p1, p0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final checkOldPhoneDataWhetherHasApp(Lcom/android/launcher/backup/mode/BackupDataModel;Ljava/lang/String;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupDataModel;->getLayoutMap()Landroid/util/SparseArray;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p0

    const-string/jumbo v1, "oldPhoneDataList.layoutM…et(Constants.APPLICATION)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Ljava/lang/Iterable;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    :cond_16
    :goto_16
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string/jumbo v3, "null cannot be cast to non-null type com.android.launcher.backup.mode.BackupRestoreContract.BackupItemInfo"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    move v1, v0

    goto :goto_16

    :cond_34
    return v1
.end method

.method public static final clearRestoreShortcuts()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutRestoreHelper"

    const-string v1, "clearRestoreShortcuts!"

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_e
    const/4 v0, 0x0

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v1, :cond_18

    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_18
    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method private static synthetic getMBROldPhoneDataList$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getMModeShortcutInfosMap$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static synthetic getMRePinLater$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private static final getShortcutDetail(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lh4/o;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            ")",
            "Lh4/o<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "getShortcutDetail "

    const-string v1, "ShortcutRestoreHelper"

    const/4 v2, 0x0

    :try_start_5
    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2a

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", intentStr is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_2a
    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_50

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", intent is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_50
    invoke-virtual {v3}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_75

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", pkgName is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_75
    const-string/jumbo v5, "shortcut_id"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_9d

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", shortcutId is null! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_9d
    new-instance v6, Lh4/o;

    new-instance v7, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result p1

    invoke-direct {v7, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v3, v7}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p1

    invoke-direct {v6, v4, v5, p1}, Lh4/o;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_af
    .catchall {:try_start_5 .. :try_end_af} :catchall_b0

    return-object v6

    :catchall_b0
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_d6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", e: "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2

    :cond_d6
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method

.method public static final getShortcutKey(Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "ShortcutRestoreHelper"

    const-string v1, "backupItemInfo"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_8
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_27

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShortcutKey, intentStr is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_27
    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getIntent()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_47

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getShortcutKey, intent is null! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_47
    new-instance v3, Landroid/os/UserHandle;

    invoke-virtual {p0}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result p0

    invoke-direct {v3, p0}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {v2, v3}, Lcom/android/launcher3/shortcuts/ShortcutKey;->fromIntent(Landroid/content/Intent;Landroid/os/UserHandle;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object p0
    :try_end_54
    .catchall {:try_start_8 .. :try_end_54} :catchall_55

    return-object p0

    :catchall_55
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_66

    const-string v2, "getShortcutKey, e: "

    invoke-static {v2, p0, v0}, Lcom/android/common/util/f;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    return-object v1

    :cond_66
    new-instance p0, Lh4/c;

    invoke-direct {p0}, Lh4/c;-><init>()V

    throw p0
.end method

.method private static final pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-class v0, Landroid/content/pm/LauncherApps;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/LauncherApps;

    if-nez p2, :cond_b

    return-void

    :cond_b
    :try_start_b
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p2, p0, p1, v0}, Landroid/content/pm/LauncherApps;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/os/UserHandle;)V

    sget-object p2, Lh4/z;->a:Lh4/z;
    :try_end_14
    .catchall {:try_start_b .. :try_end_14} :catchall_15

    goto :goto_1a

    :catchall_15
    move-exception p2

    invoke-static {p2}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p2

    :goto_1a
    invoke-static {p2}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p2

    if-eqz p2, :cond_3e

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can not pin shortcut service for: pkg="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", shortcutId="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ShortcutRestoreHelper"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3e
    return-void
.end method

.method private static final queryShortcutKeyByPackageName(Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutKey;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v0, 0x0

    :cond_5
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/shortcuts/ShortcutKey;

    invoke-virtual {v1}, Lcom/android/launcher3/shortcuts/ShortcutKey;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_28

    const-string v0, "find the package name for which you need to create a shortcut -- packageName = "

    const-string v2, "ShortcutRestoreHelper"

    invoke-static {v0, p1, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    move-object v0, v1

    goto :goto_5

    :cond_2a
    return-object v0
.end method

.method public static final rePinShortcutForXmlParse(Landroid/content/Context;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_55

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_50

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pin shortcut again for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ShortcutRestoreHelper"

    invoke-static {v3, v2}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Li4/v;->h0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    invoke-static {v2, v1, p0}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->pinShortcuts(Ljava/lang/String;Ljava/util/List;Landroid/content/Context;)V

    goto :goto_19

    :cond_50
    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mRePinLater:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    :cond_55
    return-void
.end method

.method public static final rePinShortcutsForRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/launcher/mode/LauncherMode;",
            "Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;",
            "Landroid/content/pm/ShortcutManager;",
            ")V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "mode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysPinnedShortcutMap"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "rePinShortcutsForRestore "

    const-string v1, "ShortcutRestoreHelper"

    if-eqz p0, :cond_b0

    if-nez p2, :cond_17

    goto/16 :goto_b0

    :cond_17
    :try_start_17
    invoke-static {p1, p2}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->getShortcutDetail(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)Lh4/o;

    move-result-object v2

    if-nez v2, :cond_38

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", shortcutDetail is null! "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_38
    iget-object v3, v2, Lh4/o;->c:Ljava/lang/Object;

    move-object v5, v3

    check-cast v5, Lcom/android/launcher3/shortcuts/ShortcutKey;

    iget-object v3, v2, Lh4/o;->b:Ljava/lang/Object;

    check-cast v3, Ljava/lang/String;

    iget-object v2, v2, Lh4/o;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getUserId()I

    move-result v4

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getDynamicShortcutSupportState()I

    move-result v6

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v7

    invoke-virtual {p2}, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;->getShortcutIcon()[B

    move-result-object v8

    invoke-interface {p3, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_5c

    return-void

    :cond_5c
    new-instance p3, Landroid/os/UserHandle;

    invoke-direct {p3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-static {p0, v5, v3, v2, p3}, Lcom/android/launcher/backup/util/ShortcutUtils;->pinShortcut(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p3

    if-nez p3, :cond_ad

    if-eqz p4, :cond_92

    invoke-virtual {p4}, Landroid/content/pm/ShortcutManager;->isRequestPinShortcutSupported()Z

    move-result p3

    if-nez p3, :cond_70

    goto :goto_92

    :cond_70
    sget-object v9, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    move-object v4, p0

    move-object v10, p4

    invoke-static/range {v4 .. v10}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinShortcut(Landroid/content/Context;Lcom/android/launcher3/shortcuts/ShortcutKey;ILandroid/content/pm/ShortcutInfo;[BLjava/util/concurrent/ConcurrentHashMap;Landroid/content/pm/ShortcutManager;)Lh4/j;

    move-result-object p0

    iget-object p0, p0, Lh4/j;->b:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    if-eqz p0, :cond_ad

    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz p0, :cond_ad

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_ad

    invoke-interface {p0, p2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_ad

    :cond_92
    :goto_92
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", sm is null or isRequestPinShortcutSupported false! $"

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_ad
    :goto_ad
    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_d0

    :cond_b0
    :goto_b0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, ", context or backupItemInfo is null! "

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ca
    .catchall {:try_start_17 .. :try_end_ca} :catchall_cb

    return-void

    :catchall_cb
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_d0
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_d7

    goto :goto_f9

    :cond_d7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", e:"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x20

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f9
    return-void
.end method

.method public static final recordBROldPhoneDataList(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher/backup/mode/BackupDataModel;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "oldPhoneDataList"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method

.method public static final recordRestoreShortcuts(Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "shortcutInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez v0, :cond_17

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_17
    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_34

    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_29

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_29
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_34

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_34
    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-nez p0, :cond_3f

    new-instance p0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object p0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mShortcutPkgContextMap:Ljava/util/concurrent/ConcurrentHashMap;

    :cond_3f
    return-void
.end method

.method public static final tryPinRestoreShortcutInNewPhone(Landroid/content/Context;)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/mode/LauncherModeManager;->getCurLauncherMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->INSTANCE:Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;

    invoke-virtual {v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->getMANUFACTURER_SETTINGS()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->getSHORTCUT_DEFAULT_CATEGORY()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v2, v1}, Lcom/android/launcher/backup/backrestore/restore/StaticShortcutAddManager;->loadShortcutForAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    sget-object v1, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_21
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/backup/mode/BackupDataModel;

    invoke-virtual {v2}, Lcom/android/launcher/backup/mode/BackupDataModel;->getMode()Lcom/android/launcher/mode/LauncherMode;

    move-result-object v3

    if-ne v3, v0, :cond_21

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v3

    const-string v4, "ShortcutRestoreHelper"

    if-eqz v3, :cond_41

    const-string/jumbo v3, "tryPinRestoreShortcutInNewPhone: find the data for the current schema"

    invoke-static {v4, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_41
    sget-object v3, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    invoke-virtual {v3}, Lcom/android/common/util/PackageUtils$Companion;->getMHideIconList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4b
    :goto_4b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_21

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v6, "backupDataModel"

    invoke-static {v2, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v5}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->checkOldPhoneDataWhetherHasApp(Lcom/android/launcher/backup/mode/BackupDataModel;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_c7

    invoke-static {p0, v5}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->queryShortcutKeyByPackageName(Ljava/util/List;Ljava/lang/String;)Lcom/android/launcher3/shortcuts/ShortcutKey;

    move-result-object v5

    sget-object v6, Lcom/android/launcher3/LauncherAppState;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/launcher3/LauncherAppState;

    const/4 v8, 0x0

    if-eqz v7, :cond_80

    invoke-virtual {v7}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v7

    if-eqz v7, :cond_80

    invoke-virtual {v7, v5}, Lcom/android/launcher3/OplusLauncherModel;->isShortcutExistFromItemsIdMap(Lcom/android/launcher3/shortcuts/ShortcutKey;)Z

    move-result v7

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    goto :goto_81

    :cond_80
    move-object v7, v8

    :goto_81
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v9

    if-eqz v9, :cond_a4

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "tryPinRestoreShortcutInNewPhone: shortcutKey:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, " is already exist:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_a4
    if-eqz v7, :cond_4b

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-nez v7, :cond_4b

    invoke-virtual {v6}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/launcher3/LauncherAppState;

    if-eqz v6, :cond_be

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v6

    if-eqz v6, :cond_be

    invoke-virtual {v6}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v8

    :cond_be
    invoke-static {}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->getInstance()Lcom/android/launcher3/model/PendingStaticShortcutsManager;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v6, v8, v5, v7}, Lcom/android/launcher3/model/PendingStaticShortcutsManager;->createShortcutQuery(Lcom/android/launcher/Launcher;Lcom/android/launcher3/shortcuts/ShortcutKey;Z)V

    goto :goto_4b

    :cond_c7
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v6

    if-eqz v6, :cond_4b

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "tryPinRestoreShortcutInNewPhone: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " not found, no need to add shortcut"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4b

    :cond_e9
    sget-object p0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mBROldPhoneDataList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    return-void
.end method

.method public static final tryRePinRestoreShortcuts(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;)V
    .registers 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/util/Map<",
            "Lcom/android/launcher3/shortcuts/ShortcutKey;",
            "Landroid/content/pm/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    move-object/from16 v8, p1

    move-object/from16 v9, p3

    const-string/jumbo v0, "source"

    move-object/from16 v10, p0

    invoke-static {v10, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "context"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "user"

    move-object/from16 v11, p2

    invoke-static {v11, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "sysPinnedShortcutMap"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Landroid/content/pm/ShortcutManager;

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_ab

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_ab

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :cond_36
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_ab

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/launcher/mode/LauncherMode;

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->mModeShortcutInfosMap:Ljava/util/concurrent/ConcurrentHashMap;

    if-eqz v0, :cond_5c

    invoke-virtual {v0, v14}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_5c

    const-string v1, "it"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v15, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5c
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x30

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    invoke-static/range {v0 .. v7}, Lcom/android/launcher/backup/util/ShortcutUtils;->requestPinnedShortcuts$default(Ljava/lang/String;Landroid/content/Context;Landroid/os/UserHandle;Ljava/util/Map;Ljava/lang/StringBuilder;Ljava/lang/String;ILjava/lang/Object;)Z

    const-string/jumbo v0, "tryRePinRestoreShortcuts "

    const-string v1, " rePinShortcut.size:"

    invoke-static {v0, v14, v1}, Lcom/android/common/util/l0;->a(Ljava/lang/String;Lcom/android/launcher/mode/LauncherMode;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sysPinnedShortcutSize:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ShortcutRestoreHelper"

    invoke-static {v1, v0}, Lcom/android/common/debug/OplusFileLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v15}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_95
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_36

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;

    const-string/jumbo v2, "mode"

    invoke-static {v14, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v8, v14, v1, v9, v12}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->rePinShortcutsForRestore(Landroid/content/Context;Lcom/android/launcher/mode/LauncherMode;Lcom/android/launcher/backup/mode/BackupRestoreContract$BackupItemInfo;Ljava/util/Map;Landroid/content/pm/ShortcutManager;)V

    goto :goto_95

    :cond_ab
    invoke-static {}, Lcom/android/launcher/backup/util/RestoreStateHelper;->isLoadShortcutFromRestore()Z

    move-result v0

    if-nez v0, :cond_b4

    invoke-static {}, Lcom/android/launcher/backup/backrestore/restore/ShortcutRestoreHelper;->clearRestoreShortcuts()V

    :cond_b4
    return-void
.end method
