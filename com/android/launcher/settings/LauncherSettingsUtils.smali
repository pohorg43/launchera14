.class public final Lcom/android/launcher/settings/LauncherSettingsUtils;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLauncherSettingsUtils.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LauncherSettingsUtils.kt\ncom/android/launcher/settings/LauncherSettingsUtils\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,610:1\n1#2:611\n1864#3,3:612\n*S KotlinDebug\n*F\n+ 1 LauncherSettingsUtils.kt\ncom/android/launcher/settings/LauncherSettingsUtils\n*L\n472#1:612,3\n*E\n"
    }
.end annotation


# static fields
.field private static final ANIMATION_OFF_VALUE:Ljava/lang/String;

.field private static final ANIMATION_ON_VALUE:Ljava/lang/String;

.field private static final CUSTOM_BUSINESS_DISABLED:I = 0x1

.field private static final CUSTOM_BUSINESS_ENABLE:I = 0x0

.field public static final INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

.field public static final IS_ADD_APP_TO_WORKSPACE_FOR_DRAWER_MODE:Ljava/lang/String; = "is_add_app_to_workspace_for_drawer_mode"

.field public static final IS_DOUBLE_CLICK_LOCK:Ljava/lang/String; = "is_double_click_lock"

.field public static final IS_DRAWER_APP_GLOBAL_SEARCH:Ljava/lang/String; = "is_drawer_app_global_search"

.field public static final IS_FIRST_USE_PULL_UP_GSEARCH:Ljava/lang/String; = "is_first_use_pull_up_gsearch"

.field public static final IS_FIRST_USE_PULL_UP_GSEARCH_DEFAULT_VALUE:Z = true

.field public static final IS_LAUNCHER_LAYOUT_LOCKED:Ljava/lang/String; = "is_launcher_layout_locked"

.field public static final IS_LAYOUT:Ljava/lang/String; = "layout"

.field public static final IS_LAYOUT_CELLCOUNT_X:Ljava/lang/String; = "layout_cellcount_x"

.field public static final IS_LAYOUT_CELLCOUNT_Y:Ljava/lang/String; = "layout_cellcount_y"

.field public static final IS_LAYOUT_IS_COMPACT:Ljava/lang/String; = "layout_is_compact"

.field public static final IS_PULL_UP_GSEARCH:Ljava/lang/String; = "is_pull_up_gsearch"

.field public static final IS_PULL_UP_GSEARCH_DEFAULT_VALUE:Z = true

.field public static final IS_SHOW_INDICATED_APP_FOR_DRAWER_MODE:Ljava/lang/String; = "is_show_indicated_app_for_drawer_mode"

.field public static final IS_SHOW_INPUTMETHOD_IN_DRAWER_SWITCH:Ljava/lang/String; = "show_inputmethod_in_drawer_switch"

.field public static final LAUNCHER_LAYOUT_PARAMETER:Ljava/lang/String; = "launcher_layout_parameter"

.field private static final LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

.field public static final LAYOUT_ICON_SIZE:Ljava/lang/String; = "layout_icon_size"

.field private static final MODE_NAVIGATIONBAR_GESTURE:I = 0x2

.field private static final MODE_NAVIGATIONBAR_GESTURE_EXT:I = 0x3

.field private static final NOTIFICATION_CENTER_DISABLED_STATE:Ljava/lang/String; = "persist.sys.customize.notification_disable"

.field public static final OPEN_GOOGLE_SEARCH_TIMES:Ljava/lang/String; = "open_google_search_times"

.field public static final OPEN_GOOGLE_SEARCH_TIMES_VALUE:I = 0x0

.field public static final OVER_SCROLL_TOAST_TIMES:Ljava/lang/String; = "over_scroll_toast_times"

.field private static final PACKAGE_SEARCH_NEW:Ljava/lang/String; = "com.heytap.quicksearchbox"

.field private static final PACKAGE_SEARCH_OLD:Ljava/lang/String; = "com.android.quicksearchbox"

.field private static final SEARCH_GLOBAL_DISABLED_STATE:Ljava/lang/String; = "launcher_slide_search_disable"

.field private static final SETTINGS_KEY_FOR_TASK_BAR_PATH:Ljava/lang/String; = "task_bar_path"

.field private static final SETTING_PACKAGE_NAME:Ljava/lang/String; = "com.android.settings"

.field public static final SLIDE_DOWN_TYPE_NOTIFICATION_CENTER_OLD:I = 0x1

.field public static final SLIDE_DOWN_TYPE_NO_SET_OLD:I = -0x1

.field public static final SLIDE_DOWN_TYPE_SEARCH_OR_SHELF_OLD:I = 0x0

.field private static final TAG:Ljava/lang/String; = "LauncherSettingsUtils"

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-direct {v0}, Lcom/android/launcher/settings/LauncherSettingsUtils;-><init>()V

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    const-string v0, "1"

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_ON_VALUE:Ljava/lang/String;

    const-string v0, "0"

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    const-string/jumbo v0, "window_animation_scale"

    const-string/jumbo v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    const-string v0, "content://com.android.launcher.settings"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/Launcher;)V
    .registers 1

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->syncLauncherArrangementModeStatus$lambda$1$lambda$0(Lcom/android/launcher3/Launcher;)V

    return-void
.end method

.method public static final adjustNavigationBar(Landroid/app/Activity;Landroid/view/View;)V
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "LauncherSettingsUtils"

    if-nez v0, :cond_28

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNavigationBar gesture not "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_27

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setFitsSystemWindows(Z)V

    :cond_27
    return-void

    :cond_28
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarContrastEnforced(Z)V

    invoke-virtual {v0, v2}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v3

    or-int/lit16 v3, v3, 0x200

    or-int/lit16 v3, v3, 0x100

    or-int/lit16 v3, v3, 0x1000

    invoke-static {v0, v3}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    if-nez p1, :cond_5b

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "adjustNavigationBar view null "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5b
    invoke-virtual {p1, v2}, Landroid/view/View;->setFitsSystemWindows(Z)V

    new-instance v0, Lcom/android/launcher/settings/k;

    invoke-direct {v0, p0}, Lcom/android/launcher/settings/k;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustNavigationBar activity "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " view "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final adjustNavigationBar$lambda$22(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 9

    const-string v0, "$activity"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "insets"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isGestureNavigation(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "LauncherSettingsUtils"

    if-nez v1, :cond_30

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustNavigationBar onApplyWindowInsets gesture not "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_30
    invoke-static {}, Landroid/view/WindowInsets$Type;->statusBars()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v1

    iget v1, v1, Landroid/graphics/Insets;->top:I

    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    move-result-object v3

    iget v3, v3, Landroid/graphics/Insets;->bottom:I

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070bbe

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    instance-of v4, p0, Lcom/android/launcher/settings/LauncherModeSettingActivity;

    const/4 v5, 0x0

    if-nez v4, :cond_60

    instance-of v4, p0, Lcom/android/launcher/settings/LauncherSettingsActivity;

    if-nez v4, :cond_60

    instance-of v4, p0, Lcom/android/launcher/settings/LauncherTaskbarSettingActivity;

    if-nez v4, :cond_60

    instance-of p0, p0, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;

    if-eqz p0, :cond_63

    :cond_60
    if-le v3, v0, :cond_63

    goto :goto_64

    :cond_63
    move v3, v5

    :goto_64
    const-string p0, "adjustNavigationBar onApplyWindowInsets top:"

    const-string v0, ",bottom:"

    const-string v4, ",view:"

    invoke-static {p0, v1, v0, v3, v4}, Landroidx/recyclerview/widget/b;->a(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v5, v1, v5, v3}, Landroid/view/View;->setPadding(IIII)V

    return-object p2
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel$lambda$10(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showAreaWidgetDeleteConfirmPanel$lambda$5(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static final callProvider(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string/jumbo v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "LauncherSettingsUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_8d

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_8d

    :cond_13
    :try_start_13
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v2
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_13 .. :try_end_1d} :catch_2f
    .catchall {:try_start_13 .. :try_end_1d} :catchall_2c

    if-eqz v2, :cond_26

    :try_start_1f
    invoke-virtual {v2, p1, p2, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_23} :catch_24
    .catchall {:try_start_1f .. :try_end_23} :catchall_7f

    goto :goto_26

    :catch_24
    move-exception p2

    goto :goto_31

    :cond_26
    :goto_26
    if-eqz v2, :cond_78

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    goto :goto_78

    :catchall_2c
    move-exception p0

    move-object p1, v1

    goto :goto_82

    :catch_2f
    move-exception p2

    move-object v2, v1

    :goto_31
    :try_start_31
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callProvider try again, remoteException = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_45
    .catchall {:try_start_31 .. :try_end_45} :catchall_7f

    :try_start_45
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object p2, Lcom/android/launcher/settings/LauncherSettingsUtils;->LAUNCHER_PROVIDER_URI:Landroid/net/Uri;

    invoke-virtual {p0, p2}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object p0
    :try_end_4f
    .catch Landroid/os/RemoteException; {:try_start_45 .. :try_end_4f} :catch_58
    .catchall {:try_start_45 .. :try_end_4f} :catchall_7f

    if-eqz p0, :cond_6e

    :try_start_51
    invoke-virtual {p0, p1, v1, p3}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v1
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_51 .. :try_end_55} :catch_56
    .catchall {:try_start_51 .. :try_end_55} :catchall_79

    goto :goto_6e

    :catch_56
    move-exception p1

    goto :goto_5a

    :catch_58
    move-exception p1

    move-object p0, v1

    :goto_5a
    :try_start_5a
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callProvider remoteExceptionAgain = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6e
    .catchall {:try_start_5a .. :try_end_6e} :catchall_79

    :cond_6e
    :goto_6e
    if-eqz v2, :cond_73

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_73
    if-eqz p0, :cond_78

    invoke-virtual {p0}, Landroid/content/ContentProviderClient;->close()V

    :cond_78
    :goto_78
    return-object v1

    :catchall_79
    move-exception p1

    move-object v1, v2

    move-object v5, p1

    move-object p1, p0

    move-object p0, v5

    goto :goto_82

    :catchall_7f
    move-exception p0

    move-object p1, v1

    move-object v1, v2

    :goto_82
    if-eqz v1, :cond_87

    invoke-virtual {v1}, Landroid/content/ContentProviderClient;->close()V

    :cond_87
    if-eqz p1, :cond_8c

    invoke-virtual {p1}, Landroid/content/ContentProviderClient;->close()V

    :cond_8c
    throw p0

    :cond_8d
    :goto_8d
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "callProvider context = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ", methodName = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static final checkLauncherLockedAndToast(Landroid/content/Context;)Z
    .registers 10
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/android/launcher/settings/LauncherSettingsUtils;->INSTANCE:Lcom/android/launcher/settings/LauncherSettingsUtils;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isLauncherLayoutLocked(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_56

    instance-of v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;

    const v1, 0x7f12031d

    if-eqz v0, :cond_16

    invoke-static {p0, v1}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;I)Landroid/widget/Toast;

    goto :goto_54

    :cond_16
    instance-of v0, p0, Landroid/app/Activity;

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    move-object v0, p0

    check-cast v0, Landroid/app/Activity;

    goto :goto_20

    :cond_1f
    move-object v0, v2

    :goto_20
    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_37

    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    move-object v4, v0

    goto :goto_38

    :cond_37
    move-object v4, v2

    :goto_38
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v0, "context.resources.getStr…auncher_locked_toast_new)"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_4c

    move-object v2, p0

    check-cast v2, Landroid/app/Activity;

    :cond_4c
    move-object v5, v2

    const/4 v6, 0x0

    const/16 v7, 0x8

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/common/util/ToastUtils;->showSnackBar$default(Ljava/lang/String;Landroid/view/View;Landroid/app/Activity;Landroid/view/View$OnClickListener;ILjava/lang/Object;)V

    :goto_54
    const/4 p0, 0x1

    return p0

    :cond_56
    const/4 p0, 0x0

    return p0
.end method

.method private static final createTaskbarSubscribeDeleteConfirmTips(Lcom/android/launcher/Launcher;)Ljava/lang/String;
    .registers 14
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "task_bar_path"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "settingsPathId:"

    const-string v2, "LauncherSettingsUtils"

    invoke-static {v1, v0, v2}, Lcom/android/common/config/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    if-eqz v0, :cond_d0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-lez v3, :cond_20

    move v3, v4

    goto :goto_21

    :cond_20
    move v3, v5

    :goto_21
    if-eqz v3, :cond_24

    goto :goto_25

    :cond_24
    move-object v0, v1

    :goto_25
    if-eqz v0, :cond_d0

    invoke-static {v0}, Lk7/q;->X(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, ","

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x6

    invoke-static {v0, v3, v5, v5, v6}, Lk7/q;->O(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "com.android.settings"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v6

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v8, v5

    :goto_4e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_a9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    add-int/lit8 v10, v8, 0x1

    if-ltz v8, :cond_a5

    check-cast v9, Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "settingsPerPathId:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", index:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v8, "resources"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v8, "string"

    invoke-static {v9, v8, v6, v7}, Lcom/android/launcher/settings/LauncherSettingsUtils;->queryTaskbarSubscribeDeleteConfirmMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_93

    invoke-interface {v8}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_91

    goto :goto_93

    :cond_91
    move v9, v5

    goto :goto_94

    :cond_93
    :goto_93
    move v9, v4

    :goto_94
    if-nez v9, :cond_98

    move-object v9, v8

    goto :goto_99

    :cond_98
    move-object v9, v1

    :goto_99
    if-eqz v9, :cond_a3

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "-"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a3
    move v8, v10

    goto :goto_4e

    :cond_a5
    invoke-static {}, Li4/o;->k()V

    throw v1

    :cond_a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "stringBuilder.toString()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_ba

    goto :goto_bb

    :cond_ba
    move v4, v5

    :goto_bb
    if-eqz v4, :cond_cb

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v0, 0x7f12030c

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_cb
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d0
    return-object v1
.end method

.method public static synthetic d(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->adjustNavigationBar$lambda$22(Landroid/app/Activity;Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher/settings/LauncherSettingsUtils;->showTaskbarSubscribeDeleteConfirmPanel$lambda$14(Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic getANIMATION_OFF_VALUE$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static synthetic getANIMATION_ON_VALUE$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final getOverScrollToastTimes(Landroid/content/Context;)I
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "over_scroll_toast_times"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public static final getSearchApkName(Landroid/content/Context;)Ljava/lang/String;
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v0, "getSearchApkName, the context is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0

    :cond_b
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_19

    const v0, 0x7f1204c6

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_19
    const v0, 0x7f120522

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic getTOGGLE_ANIMATION_TARGETS$annotations()V
    .registers 0
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    return-void
.end method

.method public static final initNavigationBar(Landroid/content/Context;Landroid/view/Window;)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_2f

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0604f9

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/Window;->setNavigationBarColor(I)V

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f050026

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_2f

    invoke-virtual {p1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit8 p0, p0, 0x10

    invoke-static {p1, p0}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    :cond_2f
    return-void
.end method

.method public static final initToolbarWindow(Landroid/app/Activity;ZZ)V
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    if-eqz p0, :cond_43

    if-nez p2, :cond_5

    goto :goto_43

    :cond_5
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p2

    const-string v0, "activity.getWindow()"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x400

    invoke-static {v0, v1}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/Window;->setStatusBarColor(I)V

    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f05002c

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_33

    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x100

    goto :goto_39

    :cond_33
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    move-result p0

    or-int/lit16 p0, p0, 0x2000

    :goto_39
    invoke-static {v0, p0}, Lcom/android/common/util/ToolbarUtils;->setSystemUiVisibility(Landroid/view/View;I)V

    if-eqz p1, :cond_43

    const/high16 p0, -0x80000000

    invoke-virtual {p2, p0}, Landroid/view/Window;->addFlags(I)V

    :cond_43
    :goto_43
    return-void
.end method

.method public static final isAccessibilityDynamicEffectDisabled(Landroid/content/Context;)Z
    .registers 7
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v1, "isAccessibilityDynamicEffectDisabled, context is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    sget-object v1, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_f
    if-ge v3, v2, :cond_27

    aget-object v4, v1, v3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_28

    :cond_24
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_27
    const/4 v0, 0x1

    :goto_28
    return v0
.end method

.method public static final isAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isDefaultAddNewAppsToWorkspaceInDrawerMode()Z

    move-result v0

    const-string v1, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isCustomNotificationCenterDisabled(Landroid/content/Context;)Z
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_b

    const-string p0, "LauncherSettingsUtils"

    const-string v1, "isCustomNotificationCenterDisabled, context is null!"

    invoke-static {p0, v1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_b
    invoke-static {p0}, Lcom/android/launcher/custom/CustomizeRestrictionManager;->isCustomizeNotificationCenterDisabled(Landroid/content/Context;)Z

    move-result p0

    const/4 v1, 0x1

    if-eqz p0, :cond_13

    return v1

    :cond_13
    sget-object p0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {p0}, Lcom/android/common/config/FeatureOption;->isBusinessCustom()Z

    move-result p0

    if-nez p0, :cond_1c

    return v0

    :cond_1c
    const-string/jumbo p0, "persist.sys.customize.notification_disable"

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_39

    invoke-static {p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v2, "get(NOTIFICATION_CENTER_DISABLED_STATE)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    if-ne p0, v1, :cond_39

    move v0, v1

    :cond_39
    return v0
.end method

.method public static final isCustomSearchGlobalDisabled(Landroid/content/Context;)Z
    .registers 6
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "LauncherSettingsUtils"

    const/4 v1, 0x0

    if-nez p0, :cond_b

    const-string p0, "isCustomSearchGlobalDisabled, context is null!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_b
    sget-object v2, Lcom/android/common/util/PackageUtils;->Companion:Lcom/android/common/util/PackageUtils$Companion;

    sget-object v3, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_GLOBAL_SEARCH:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_21

    sget-object v3, Lcom/android/common/config/Constants$Packages;->CONSTANTS_PACKAGE_QUICK_SEARCH:Ljava/lang/String;

    invoke-virtual {v2, p0, v3}, Lcom/android/common/util/PackageUtils$Companion;->isPackageEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1f

    goto :goto_21

    :cond_1f
    move v2, v1

    goto :goto_22

    :cond_21
    :goto_21
    move v2, v4

    :goto_22
    if-nez v2, :cond_2a

    const-string p0, "global search is disabled."

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :cond_2a
    sget-object v0, Lcom/android/common/config/FeatureOption;->INSTANCE:Lcom/android/common/config/FeatureOption;

    invoke-virtual {v0}, Lcom/android/common/config/FeatureOption;->isBusinessCustom()Z

    move-result v0

    if-nez v0, :cond_33

    return v1

    :cond_33
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "launcher_slide_search_disable"

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v4, :cond_40

    move v1, v4

    :cond_40
    return v1
.end method

.method public static final isDoubleClickLock(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_double_click_lock"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isDrawerAppGlobalSearch(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->isGlobalSearchInDrawerModeSwitchOn()Z

    move-result v0

    const-string v1, "is_drawer_app_global_search"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isGestureNavigation(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "hide_navigationbar_enable"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_14

    const/4 v1, 0x3

    if-ne p0, v1, :cond_15

    :cond_14
    const/4 v0, 0x1

    :cond_15
    return v0
.end method

.method public static final isLayoutCompact(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "layout_is_compact"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isLayoutLocked(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_launcher_layout_locked"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public static final isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_show_indicated_app_for_drawer_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private static final queryTaskbarSubscribeDeleteConfirmMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/res/Resources;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2, p0, p1, p3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p2, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_e

    :try_start_9
    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_b
    .catchall {:try_start_9 .. :try_end_b} :catchall_c

    goto :goto_15

    :catchall_c
    move-exception p1

    goto :goto_11

    :catchall_e
    move-exception p0

    move-object p1, p0

    move-object p0, v0

    :goto_11
    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_15
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_32

    const-string p0, "Exception:"

    invoke-static {p0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "LauncherSettingsUtils"

    invoke-static {p1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_32
    return-object p0
.end method

.method public static final setDrawerAppGlobalSearch(Landroid/content/Context;Z)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "is_drawer_app_global_search"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public static final setOverScrollToastTimes(Landroid/content/Context;I)V
    .registers 3
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string/jumbo v0, "over_scroll_toast_times"

    invoke-static {p0, v0, p1}, Lcom/android/common/util/LauncherSharedPrefs;->putInt(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method public static final setSlideDownTypeForSimpleModeOTA131(Landroid/content/Context;)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v0, "launcher_slide_down_type_simple"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/launcher/settings/SlideDownTypeHelper;->isSimpleModeFor131()Z

    move-result v2

    if-eqz v2, :cond_3b

    if-ne v0, v1, :cond_3b

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x4

    goto :goto_1b

    :cond_1a
    const/4 v0, 0x5

    :goto_1b
    const-string v1, "launcher_slide_down_type"

    invoke-static {p0, v1, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getInt(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    invoke-static {p0, v0}, Lcom/android/launcher/settings/SlideDownTypeHelper;->setSlideDownTypeWithCheck(Landroid/content/Context;I)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setSlideDownType valueBeforeVer130, value is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherSettingsUtils"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method public static final showAreaWidgetDeleteConfirmPanel(Lcom/android/launcher/Launcher;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 12
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x64

    if-ne v0, v3, :cond_12

    move v0, v1

    goto :goto_13

    :cond_12
    move v0, v2

    :goto_13
    iget-object v3, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    if-nez v3, :cond_2c

    if-eqz v0, :cond_2c

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120204

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{\n            /** card\'s…rt_popup_title)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2a
    move-object v3, v1

    goto :goto_80

    :cond_2c
    if-nez v3, :cond_42

    if-nez v0, :cond_42

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12020a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "{ /** widget title is nu…ed_alert_title)\n        }"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2a

    :cond_42
    const-string v3, "format(format, *args)"

    if-eqz v0, :cond_63

    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120206

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "launcher.resources.getSt…e_card_alert_popup_title)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v6, v5, v2

    invoke-static {v5, v1, v4, v3}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :cond_63
    sget-object v4, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120208

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "launcher.resources.getSt…widget_alert_popup_title)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v5, v1, [Ljava/lang/Object;

    iget-object v6, p2, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    aput-object v6, v5, v2

    invoke-static {v5, v1, v4, v3}, Lcom/android/common/debug/b;->a([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2a

    :goto_80
    instance-of v1, p1, Lcom/android/launcher3/card/groupcard/GroupCardView;

    if-eqz v1, :cond_97

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120203

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            launcher.r…t_popup_messag)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_95
    move-object v4, v0

    goto :goto_bd

    :cond_97
    if-eqz v0, :cond_ab

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204f7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            launcher.r…anel_sub_title)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_95

    :cond_ab
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120209

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "{\n            launcher.r…_popup_message)\n        }"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_95

    :goto_bd
    new-instance v2, Lcom/android/launcher3/popup/OplusAlertPopup;

    invoke-direct {v2, p0}, Lcom/android/launcher3/popup/OplusAlertPopup;-><init>(Lcom/android/launcher/Launcher;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1204f4

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v0, "launcher.resources.getSt…g(R.string.remove_action)"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1200c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v0, "launcher.resources.getSt…string.alert_hide_cancel)"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Lcom/android/launcher/settings/j;

    invoke-direct {v7, p2, p0}, Lcom/android/launcher/settings/j;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V

    new-instance v8, Lcom/android/launcher/n0;

    invoke-direct {v8, p2, p0, p1}, Lcom/android/launcher/n0;-><init>(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;)V

    invoke-virtual/range {v2 .. v8}, Lcom/android/launcher3/popup/OplusAlertPopup;->createMultiMessageDialog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnDismissListener;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method private static final showAreaWidgetDeleteConfirmPanel$lambda$10(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/view/View;Landroid/content/DialogInterface;I)V
    .registers 13

    const-string v0, "$launcher"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, -0x2

    const/4 v1, 0x0

    if-eq p4, v0, :cond_56

    const/4 v0, -0x1

    if-eq p4, v0, :cond_11

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    goto/16 :goto_7e

    :cond_11
    instance-of p3, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p3, :cond_19

    move-object p3, p0

    check-cast p3, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_1a

    :cond_19
    move-object p3, v1

    :goto_1a
    const-string p4, "2"

    if-eqz p3, :cond_27

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    iget p3, p3, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {v0, p3, p4}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_27
    instance-of p3, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p3, :cond_2e

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :cond_2e
    if-eqz v1, :cond_39

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p3

    iget v0, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p3, v0, p4}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_39
    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p3

    invoke-virtual {p3, p0, p1}, Lcom/android/statistics/LauncherStatistics;->statsCardOrWidgetChangeDelete(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "AreaWidgetDeleteConfirmPanel positiveButtonClick"

    move-object v0, p1

    move-object v1, p2

    move-object v2, p0

    invoke-virtual/range {v0 .. v7}, Lcom/android/launcher/Launcher;->removeItem(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;ZZZLjava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->getAreaWidgetEditViewModel()Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;

    move-result-object p2

    if-eqz p2, :cond_7e

    invoke-virtual {p2, p0, p1}, Lcom/android/launcher3/card/theme/data/AreaWidgetEditViewModel;->removeCardResultToThemeStore(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;)V

    goto :goto_7e

    :cond_56
    instance-of p2, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    if-eqz p2, :cond_5e

    move-object p2, p0

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_5f

    :cond_5e
    move-object p2, v1

    :goto_5f
    const-string p3, "1"

    if-eqz p2, :cond_6c

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p4

    iget p2, p2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p4, p2, p3}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_6c
    instance-of p2, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_73

    move-object v1, p0

    check-cast v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :cond_73
    if-eqz v1, :cond_7e

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p0

    iget p1, v1, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p0, p1, p3}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_7e
    :goto_7e
    return-void
.end method

.method private static final showAreaWidgetDeleteConfirmPanel$lambda$5(Lcom/android/launcher3/model/data/ItemInfo;Lcom/android/launcher/Launcher;Landroid/content/DialogInterface;)V
    .registers 6

    const-string p2, "$launcher"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    instance-of p2, p0, Lcom/android/launcher3/card/LauncherCardInfo;

    const/4 v0, 0x0

    if-eqz p2, :cond_e

    move-object p2, p0

    check-cast p2, Lcom/android/launcher3/card/LauncherCardInfo;

    goto :goto_f

    :cond_e
    move-object p2, v0

    :goto_f
    const-string v1, "0"

    if-eqz p2, :cond_1f

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p2

    move-object v2, p0

    check-cast v2, Lcom/android/launcher3/card/LauncherCardInfo;

    iget v2, v2, Lcom/android/launcher3/card/LauncherCardInfo;->mCardId:I

    invoke-virtual {p2, v2, v1}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_1f
    instance-of p2, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    if-eqz p2, :cond_26

    move-object v0, p0

    check-cast v0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    :cond_26
    if-eqz v0, :cond_33

    invoke-static {p1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p1

    check-cast p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;

    iget p0, p0, Lcom/android/launcher3/model/data/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-virtual {p1, p0, v1}, Lcom/android/statistics/LauncherStatistics;->statsPromptBeforeDelete(ILjava/lang/String;)V

    :cond_33
    return-void
.end method

.method public static final showTaskbarSubscribeDeleteConfirmPanel(Lcom/android/launcher/Launcher;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher/widget/RemoveWidgetDialog;->Companion:Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;

    invoke-virtual {v0, p0}, Lcom/android/launcher/widget/RemoveWidgetDialog$Companion;->getDialog(Lcom/android/launcher/Launcher;)Lcom/android/launcher/widget/RemoveWidgetDialog;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->createTaskbarSubscribeDeleteConfirmTips(Lcom/android/launcher/Launcher;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    const/4 v5, 0x0

    if-lez v4, :cond_1c

    move v4, v3

    goto :goto_1d

    :cond_1c
    move v4, v5

    :goto_1d
    if-eqz v4, :cond_20

    goto :goto_21

    :cond_20
    move-object v1, v2

    :goto_21
    if-eqz v1, :cond_4b

    sget-object v2, Lkotlin/jvm/internal/StringCompanionObject;->INSTANCE:Lkotlin/jvm/internal/StringCompanionObject;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const v2, 0x7f1200c6

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-string v2, "launcher.applicationCont…itle_for_tablet_and_fold)"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Object;

    aput-object v1, v2, v5

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v1, "format(format, *args)"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setMessageTv(Ljava/lang/String;)V

    sget-object v2, Lh4/z;->a:Lh4/z;

    :cond_4b
    if-nez v2, :cond_53

    const p0, 0x7f1200c4

    invoke-virtual {v0, p0}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setMessageTv(I)V

    :cond_53
    const p0, 0x7f1200c3

    new-instance v1, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v1, v0, p1}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher3/model/data/ItemInfo;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/launcher/widget/RemoveWidgetDialog;->setNeutralButton(ILandroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v3}, Lcom/android/launcher/widget/RemoveWidgetDialog;->show(Z)V

    return-void
.end method

.method private static final showTaskbarSubscribeDeleteConfirmPanel$lambda$14(Lcom/android/launcher/widget/RemoveWidgetDialog;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 3

    const-string p2, "$dialog"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result p2

    if-eqz p2, :cond_12

    invoke-static {p1}, Lcom/android/launcher3/hotseat/HotseatItemUtils;->hideSubscribeItem(Lcom/android/launcher3/model/data/ItemInfo;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/launcher3/AbstractFloatingView;->close(Z)V

    :cond_12
    return-void
.end method

.method private static final syncLauncherArrangementModeStatus$lambda$1$lambda$0(Lcom/android/launcher3/Launcher;)V
    .registers 3

    const-string v0, "$launcher"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/android/launcher3/LauncherState;->NORMAL:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result v1

    if-nez v1, :cond_14

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;)V

    :cond_14
    return-void
.end method


# virtual methods
.method public final getANIMATION_OFF_VALUE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_OFF_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public final getANIMATION_ON_VALUE()Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->ANIMATION_ON_VALUE:Ljava/lang/String;

    return-object p0
.end method

.method public final getTOGGLE_ANIMATION_TARGETS()[Ljava/lang/String;
    .registers 1

    sget-object p0, Lcom/android/launcher/settings/LauncherSettingsUtils;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    return-object p0
.end method

.method public final isLauncherLayoutLocked(Landroid/content/Context;)Z
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_launcher_layout_locked"

    const/4 v0, 0x0

    invoke-static {p1, p0, v0}, Lcom/android/common/util/LauncherSharedPrefs;->getBoolean(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method public final setAddAppToWorkSpaceForDrawerMode(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_add_app_to_workspace_for_drawer_mode"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setLauncherLayoutLocked(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_launcher_layout_locked"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final setShowIndicatedAppForDrawerMode(Landroid/content/Context;Z)V
    .registers 3

    const-string p0, "context"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p0, "is_show_indicated_app_for_drawer_mode"

    invoke-static {p1, p0, p2}, Lcom/android/common/util/LauncherSharedPrefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public final syncLauncherArrangementModeStatus(Z)V
    .registers 5

    const-string p0, "LauncherSettingsUtils"

    :try_start_2
    invoke-static {}, Lcom/android/launcher3/LauncherAppState;->getInstanceNoCreate()Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v1

    instance-of v1, v1, Lcom/android/launcher3/Launcher;

    if-eqz v1, :cond_2c

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getModel()Lcom/android/launcher3/OplusLauncherModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherModel;->getLauncher()Lcom/android/launcher/Launcher;

    move-result-object v0

    const-string/jumbo v1, "null cannot be cast to non-null type com.android.launcher3.Launcher"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/appcompat/widget/g;

    invoke-direct {v2, v0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher3/Launcher;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_2c
    const/4 v0, 0x0

    if-eqz p1, :cond_3e

    new-instance v1, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/launcher/layout/LayoutUtilsManager$AutoFillTask;-><init>(Landroid/content/Context;)V

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_45

    :cond_3e
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/launcher/layout/LayoutUtilsManager;->saveIsCompact(Landroid/content/Context;Z)V

    :goto_45
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "syncLauncherArrangementModeStatus isArrangement = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p1, Lh4/z;->a:Lh4/z;
    :try_end_5c
    .catchall {:try_start_2 .. :try_end_5c} :catchall_5d

    goto :goto_62

    :catchall_5d
    move-exception p1

    invoke-static {p1}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    :goto_62
    invoke-static {p1}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_6e

    const-string/jumbo v0, "syncLauncherArrangementModeStatus,Exception :"

    invoke-static {v0, p1, p0}, Lcom/android/common/util/y;->a(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    :cond_6e
    return-void
.end method
