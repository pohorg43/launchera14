.class public final Lcom/android/launcher3/bottomsearch/BottomManagerInjector;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/bottomsearch/IManagerInject;


# static fields
.field private static final GAME_CENTER_PKG_NAME:Ljava/lang/String; = "com.nearme.gamecenter"

.field private static final GAME_CENTER_SERVICE_CLASS_NAME:Ljava/lang/String; = "com.nearme.gamespace.gamemanager.shortcut.SilentAddDesktopShortcutService"

.field public static final INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

.field private static final KEY_FROM_CLEAR_PKG:Ljava/lang/String; = "clear_pkg"

.field private static final KEY_HAS_REQUEST_ADD_ONCE:Ljava/lang/String; = "key_has_request_add_once"

.field public static final TAG:Ljava/lang/String; = "BottomManagerInjector"

.field private static context:Landroid/content/Context;

.field private static final roleListener:Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;

.field private static roleManager:Landroid/app/role/RoleManager;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomManagerInjector;

    new-instance v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;

    invoke-direct {v0}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;-><init>()V

    sput-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleListener:Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getContext$p()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->context:Landroid/content/Context;

    return-object v0
.end method

.method public static final synthetic access$getRoleManager$p()Landroid/app/role/RoleManager;
    .registers 1

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleManager:Landroid/app/role/RoleManager;

    return-object v0
.end method

.method public static final synthetic access$startService(Lcom/android/launcher3/bottomsearch/BottomManagerInjector;ZLandroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->startService(ZLandroid/content/Context;)V

    return-void
.end method

.method private final startService(ZLandroid/content/Context;)V
    .registers 6

    const-string p0, "key_has_request_add_onceclear_pkg"

    const/4 v0, 0x1

    if-eqz p1, :cond_10

    invoke-static {p2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p1, p0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_11

    :cond_10
    move p1, v0

    :goto_11
    const-string/jumbo v1, "startService needSend : "

    const-string v2, "BottomManagerInjector"

    invoke-static {v1, p1, v2}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_1c

    return-void

    :cond_1c
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.nearme.gamecenter"

    const-string v2, "com.nearme.gamespace.gamemanager.shortcut.SilentAddDesktopShortcutService"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {p2, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->putBooleanCommit(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "lastVersion"

    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "BottomManagerInjector"

    const-string v0, "init"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher/bottomsearch/BottomSearchManager;->INSTANCE:Lcom/android/launcher/bottomsearch/BottomSearchManager;

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomSearchImpl;->INSTANCE:Lcom/android/launcher3/bottomsearch/BottomSearchImpl;

    invoke-virtual {p0, v0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->setMBottomSearchProxy(Lcom/android/launcher/bottomsearch/IBottomSearch;)V

    invoke-virtual {p0}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher/bottomsearch/BottomSearchManager;->initSwitchStatus(Landroid/content/Context;Ljava/lang/String;)V

    :cond_21
    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string/jumbo v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-super {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver;->onDestroy(Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p0, 0x0

    sput-object p0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->context:Landroid/content/Context;

    sget-object p1, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleManager:Landroid/app/role/RoleManager;

    if-eqz p1, :cond_19

    sget-object v0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleListener:Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/app/role/RoleManager;->removeOnRoleHoldersChangedListenerAsUser(Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V

    :cond_19
    sput-object p0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleManager:Landroid/app/role/RoleManager;

    return-void
.end method

.method public requestAddShortcut(ZLandroid/content/Context;)V
    .registers 7

    const-string v0, "context"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_15

    invoke-static {p2}, Lcom/android/common/util/LauncherSharedPrefs;->getLauncherPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v2, "key_has_request_add_onceclear_pkg"

    invoke-interface {p1, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_16

    :cond_15
    move p1, v0

    :goto_16
    const-string/jumbo v2, "requestAddShortcut needSend : "

    const-string v3, "BottomManagerInjector"

    invoke-static {v2, p1, v3}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-nez p1, :cond_21

    return-void

    :cond_21
    :try_start_21
    sput-object p2, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->context:Landroid/content/Context;

    const-class p1, Landroid/app/role/RoleManager;

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/role/RoleManager;

    sput-object p1, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleManager:Landroid/app/role/RoleManager;

    if-eqz p1, :cond_36

    const-string v2, "android.app.role.HOME"

    invoke-virtual {p1, v2}, Landroid/app/role/RoleManager;->getRoleHolders(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    goto :goto_37

    :cond_36
    const/4 p1, 0x0

    :goto_37
    if-eqz p1, :cond_41

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_40

    goto :goto_41

    :cond_40
    move v0, v1

    :cond_41
    :goto_41
    if-nez v0, :cond_56

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_52

    goto :goto_56

    :cond_52
    invoke-direct {p0, v1, p2}, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->startService(ZLandroid/content/Context;)V

    goto :goto_72

    :cond_56
    :goto_56
    const-string p0, "RoleManager.ROLE_HOME is not Launcher"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p0, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleManager:Landroid/app/role/RoleManager;

    if-eqz p0, :cond_6c

    invoke-virtual {p2}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    sget-object p2, Lcom/android/launcher3/bottomsearch/BottomManagerInjector;->roleListener:Lcom/android/launcher3/bottomsearch/BottomManagerInjector$roleListener$1;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/role/RoleManager;->addOnRoleHoldersChangedListenerAsUser(Ljava/util/concurrent/Executor;Landroid/app/role/OnRoleHoldersChangedListener;Landroid/os/UserHandle;)V
    :try_end_6c
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_6c} :catch_6d

    :cond_6c
    return-void

    :catch_6d
    const-string p0, "error requestAddShortcut"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_72
    return-void
.end method
