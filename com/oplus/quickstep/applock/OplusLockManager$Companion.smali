.class public final Lcom/oplus/quickstep/applock/OplusLockManager$Companion;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oplus/quickstep/applock/OplusLockManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/quickstep/applock/OplusLockManager$Companion$WhenMappings;
    }
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nOplusLockManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OplusLockManager.kt\ncom/oplus/quickstep/applock/OplusLockManager$Companion\n+ 2 SPUtils.kt\ncom/oplus/quickstep/utils/SPUtils$Companion\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,697:1\n58#2,3:698\n61#2,21:702\n58#2,3:723\n61#2,21:727\n1#3:701\n1#3:726\n1#3:748\n*S KotlinDebug\n*F\n+ 1 OplusLockManager.kt\ncom/oplus/quickstep/applock/OplusLockManager$Companion\n*L\n270#1:698,3\n270#1:702,21\n281#1:723,3\n281#1:727,21\n270#1:701\n281#1:726\n*E\n"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;-><init>()V

    return-void
.end method

.method public static synthetic a()V
    .registers 0

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->initAsync$lambda$9()V

    return-void
.end method

.method public static final synthetic access$getAllowDefaultLockAppsByConfig(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Ljava/util/List;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getAllowDefaultLockAppsByConfig()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getCurrentLowPowerModeState(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)I
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getCurrentLowPowerModeState()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$isCurrentOTAUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)Z
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->isCurrentOTAUpdate()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$notifyLockViewUiUpdate(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->notifyLockViewUiUpdate()V

    return-void
.end method

.method public static synthetic b(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail$lambda$18$lambda$13(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V

    return-void
.end method

.method private final getAllowDefaultLockAppsByConfig()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string p0, "default_recent_lock_app"

    :try_start_2
    invoke-static {}, Lcom/oplus/util/OplusCommonConfig;->getInstance()Lcom/oplus/util/OplusCommonConfig;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oplus/util/OplusCommonConfig;->getConfigInfo(Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-nez v0, :cond_1b

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_39

    :cond_1b
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAllowDefaultLockAppsFromConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/OplusFileLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_33
    .catchall {:try_start_2 .. :try_end_33} :catchall_34

    goto :goto_39

    :catchall_34
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :cond_39
    :goto_39
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_40

    goto :goto_51

    :cond_40
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_4f

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string v1, "getAllowDefaultLockAppsFromConfig fail"

    invoke-static {p0, v1, v0}, Lcom/android/common/debug/OplusFileLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4f
    sget-object p0, Li4/y;->a:Li4/y;

    :goto_51
    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method private final getCurrentLowPowerModeState()I
    .registers 1

    sget-object p0, Lcom/android/common/observer/LowPowerObserver;->instance:Lcom/android/common/observer/LowPowerObserver;

    invoke-virtual {p0}, Lcom/oplus/quickstep/common/observers/OplusAbstractObserver;->getState()I

    move-result p0

    return p0
.end method

.method public static synthetic getInstance$annotations()V
    .registers 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method private final getSaveLockDataSP()Landroid/content/SharedPreferences;
    .registers 3

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_e

    const/4 v0, 0x0

    const-string v1, "Configuration"

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p0

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return-object p0
.end method

.method public static synthetic handleLockFail$default(Lcom/oplus/quickstep/applock/OplusLockManager$Companion;Lcom/oplus/quickstep/applock/Result;ZILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x1

    :cond_5
    invoke-virtual {p0, p1, p2}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->handleLockFail(Lcom/oplus/quickstep/applock/Result;Z)V

    return-void
.end method

.method private static final handleLockFail$lambda$18$lambda$13(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/android/launcher3/statemanager/StatefulActivity;Landroid/view/View;)V
    .registers 3

    const-string p2, "$snackBar"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$this_apply"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->d()V

    invoke-static {p1}, Lcom/oplus/quickstep/locksetting/ui/LockSettingActivity;->newIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private static final initAsync$lambda$9()V
    .registers 2

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAsync start"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager;->Companion:Lcom/oplus/quickstep/applock/OplusLockManager$Companion;

    invoke-virtual {v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object v0

    const-string v1, "initAsync end"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final isCurrentOTAUpdate()Z
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/content/pm/OplusPackageManager;->getOplusPackageManager(Landroid/content/Context;)Landroid/content/pm/OplusPackageManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/pm/OplusPackageManager;->getSystemUpdateInfo()Lcom/oplus/ota/OplusSystemUpdateInfo;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oplus/ota/OplusSystemUpdateInfo;->getUpdateType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1a

    invoke-virtual {p0}, Lcom/oplus/ota/OplusSystemUpdateInfo;->isUpdateSucc()Z

    move-result p0

    if-eqz p0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_1f
    .catchall {:try_start_0 .. :try_end_1f} :catchall_20

    goto :goto_25

    :catchall_20
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_25
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_2c

    goto :goto_37

    :cond_2c
    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string v1, "isCurrentOTAUpdate fail"

    invoke-static {p0, v1, v0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_37
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method private final notifyLockViewUiUpdate()V
    .registers 3

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result p0

    if-eqz p0, :cond_1f

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notifyLockViewUiUpdate, caller: "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p0

    if-eqz p0, :cond_30

    new-instance v0, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;

    invoke-direct {v0}, Lcom/oplus/quickstep/events/ui/UpdateLockViewEvent;-><init>()V

    invoke-virtual {p0, v0}, Lcom/oplus/quickstep/events/EventBus;->post(Lcom/oplus/quickstep/events/EventBus$Event;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_31

    :cond_30
    const/4 p0, 0x0

    :goto_31
    if-nez p0, :cond_3c

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p0

    const-string v0, "notifyLockViewUiUpdate fail"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private final showToast(II)V
    .registers 5

    :try_start_0
    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0
    :try_end_8
    .catchall {:try_start_0 .. :try_end_8} :catchall_9

    goto :goto_e

    :catchall_9
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_e
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getTAG$cp()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showToast("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") fail"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public final getInstance()Lcom/oplus/quickstep/applock/OplusLockManager;
    .registers 1

    invoke-static {}, Lcom/oplus/quickstep/applock/OplusLockManager;->access$getInstance$delegate$cp()Lh4/f;

    move-result-object p0

    invoke-interface {p0}, Lh4/f;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/applock/OplusLockManager;

    return-object p0
.end method

.method public final handleLockFail(Lcom/oplus/quickstep/applock/Result;Z)V
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    instance-of v0, p1, Lcom/oplus/quickstep/applock/Result$False;

    if-nez v0, :cond_5

    return-void

    :cond_5
    check-cast p1, Lcom/oplus/quickstep/applock/Result$False;

    invoke-virtual {p1}, Lcom/oplus/quickstep/applock/Result;->getReason()Lcom/oplus/quickstep/applock/Reason;

    move-result-object p1

    sget-object v0, Lcom/oplus/quickstep/applock/OplusLockManager$Companion$WhenMappings;->$EnumSwitchMapping$0:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_f5

    const/4 v1, 0x2

    if-eq p1, v1, :cond_ee

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1e

    goto/16 :goto_fb

    :cond_1e
    const/4 p1, 0x0

    if-eqz p2, :cond_e7

    sget-object p0, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/launcher/Launcher;

    const/4 p2, 0x0

    if-eqz p0, :cond_37

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_33

    goto :goto_34

    :cond_33
    move-object p0, p2

    :goto_34
    if-eqz p0, :cond_37

    goto :goto_49

    :cond_37
    sget-object p0, Lcom/android/quickstep/RecentsActivity;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {p0}, Lcom/android/launcher3/util/ActivityTracker;->getCreatedActivity()Lcom/android/launcher3/BaseActivity;

    move-result-object p0

    check-cast p0, Lcom/android/quickstep/RecentsActivity;

    if-eqz p0, :cond_48

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_48

    goto :goto_49

    :cond_48
    move-object p0, p2

    :goto_49
    if-eqz p0, :cond_fb

    invoke-virtual {p0}, Lcom/android/launcher3/BaseDraggingActivity;->getOverviewPanel()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz v2, :cond_5d

    const v3, 0x7f120434

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_5e

    :cond_5d
    move-object v2, p2

    :goto_5e
    if-nez v2, :cond_63

    const-string v2, ""

    goto :goto_68

    :cond_63
    const-string v3, "resources?.getString(R.s…plus_lock_too_much) ?: \"\""

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_68
    const/16 v3, 0xbb8

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    if-eqz v4, :cond_77

    const p1, 0x7f070da4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :cond_77
    sget-object v4, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v1, v2, v3, p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->h(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p1

    const-string v1, "make(getOverviewPanel(),…hint_margin_bottom) ?: 0)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_94

    const v2, 0x7f12044d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_95

    :cond_94
    move-object v1, p2

    :goto_95
    new-instance v2, Lcom/android/launcher3/allapps/a;

    invoke-direct {v2, p1, p0}, Lcom/android/launcher3/allapps/a;-><init>(Lcom/coui/appcompat/snackbar/COUISnackBar;Lcom/android/launcher3/statemanager/StatefulActivity;)V

    invoke-virtual {p1, v1, v2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    :try_start_9d
    const-class p0, Lcom/coui/appcompat/snackbar/COUISnackBar;

    const-string v1, "mSnackBarLayout"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_b4

    const-string v1, "getDeclaredField(\"mSnackBarLayout\")"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    goto :goto_b5

    :cond_b4
    move-object p0, p2

    :goto_b5
    instance-of v0, p0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_bc

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_bd

    :cond_bc
    move-object p0, p2

    :goto_bd
    if-eqz p0, :cond_e3

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_e3

    const-string v1, "resources"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f060764

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    const v1, 0x7f06043e

    invoke-virtual {v0, v1, p2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->setOutlineSpotShadowColor(I)V
    :try_end_de
    .catchall {:try_start_9d .. :try_end_de} :catchall_df

    goto :goto_e3

    :catchall_df
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    :cond_e3
    :goto_e3
    invoke-virtual {p1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->j()V

    goto :goto_fb

    :cond_e7
    const p2, 0x7f120435

    invoke-direct {p0, p2, p1}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->showToast(II)V

    goto :goto_fb

    :cond_ee
    const p1, 0x7f12044f

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->showToast(II)V

    goto :goto_fb

    :cond_f5
    const p1, 0x7f120426

    invoke-direct {p0, p1, v0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->showToast(II)V

    :cond_fb
    :goto_fb
    return-void
.end method

.method public final initAsync()V
    .registers 2
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object p0, Lcom/android/launcher3/util/Executors;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v0, Lcom/android/quickstep/c;->c:Lcom/android/quickstep/c;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final isAlreadyHintLockUpgrade()Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "SPUtils"

    sget-object v1, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getSaveLockDataSP()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_a
    const-string v2, "sp"
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_10e

    const-string v3, "is_already_hint_lock_upgrade"

    if-eqz p0, :cond_d5

    :try_start_10
    const-string v2, "get"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_35

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_d3

    :cond_35
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_43

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    goto :goto_44

    :cond_43
    move-object v4, v6

    :goto_44
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_50

    goto :goto_51

    :cond_50
    move-object v6, p0

    :goto_51
    check-cast v6, Ljava/lang/Boolean;

    goto/16 :goto_d3

    :cond_55
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_65

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    goto :goto_66

    :cond_65
    move-object v4, v6

    :goto_66
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v6, p0

    :goto_7b
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_7e
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_8e

    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    goto :goto_8f

    :cond_8e
    move-object v4, v6

    :goto_8f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v6, p0

    :goto_a4
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_a7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_b7

    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    goto :goto_b8

    :cond_b7
    move-object v4, v6

    :goto_b8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_cc

    goto :goto_cd

    :cond_cc
    move-object v6, p0

    :goto_cd
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_d0
    const-string p0, "unknown"

    move-object v2, p0

    :goto_d3
    if-nez v6, :cond_113

    :cond_d5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") fail, "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception, defaultValue: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", from: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_10 .. :try_end_10c} :catchall_10e

    :cond_10c
    move-object v6, v1

    goto :goto_113

    :catchall_10e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :cond_113
    :goto_113
    invoke-static {v6}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_11b

    move-object v1, v6

    goto :goto_126

    :cond_11b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_126

    const-string v2, "getValue(is_already_hint_lock_upgrade) fail"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_126
    :goto_126
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final isUserOperateSuperLockInMenu()Z
    .registers 8
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "SPUtils"

    sget-object v1, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getSaveLockDataSP()Landroid/content/SharedPreferences;

    move-result-object p0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :try_start_a
    const-string v2, "sp"
    :try_end_c
    .catchall {:try_start_a .. :try_end_c} :catchall_10e

    const-string v3, "is_user_operated_super_lock_in_menu"

    if-eqz p0, :cond_d5

    :try_start_10
    const-string v2, "get"

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lz4/d;

    move-result-object v4

    invoke-static {v4}, Lkotlin/jvm/JvmClassMappingKt;->getJavaPrimitiveType(Lz4/d;)Ljava/lang/Class;

    move-result-object v4

    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_35

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/4 v4, 0x0

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    goto/16 :goto_d3

    :cond_35
    invoke-static {v4, v6}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_55

    instance-of v4, v1, Ljava/lang/String;

    if-eqz v4, :cond_43

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    goto :goto_44

    :cond_43
    move-object v4, v6

    :goto_44
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_50

    goto :goto_51

    :cond_50
    move-object v6, p0

    :goto_51
    check-cast v6, Ljava/lang/Boolean;

    goto/16 :goto_d3

    :cond_55
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7e

    instance-of v4, v1, Ljava/lang/Integer;

    if-eqz v4, :cond_65

    move-object v4, v1

    check-cast v4, Ljava/lang/Integer;

    goto :goto_66

    :cond_65
    move-object v4, v6

    :goto_66
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_7a

    goto :goto_7b

    :cond_7a
    move-object v6, p0

    :goto_7b
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_7e
    sget-object v5, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a7

    instance-of v4, v1, Ljava/lang/Long;

    if-eqz v4, :cond_8e

    move-object v4, v1

    check-cast v4, Ljava/lang/Long;

    goto :goto_8f

    :cond_8e
    move-object v4, v6

    :goto_8f
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_a3

    goto :goto_a4

    :cond_a3
    move-object v6, p0

    :goto_a4
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_a7
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    instance-of v4, v1, Ljava/lang/Float;

    if-eqz v4, :cond_b7

    move-object v4, v1

    check-cast v4, Ljava/lang/Float;

    goto :goto_b8

    :cond_b7
    move-object v4, v6

    :goto_b8
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-interface {p0, v3, v4}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    instance-of v4, p0, Ljava/lang/Boolean;

    if-nez v4, :cond_cc

    goto :goto_cd

    :cond_cc
    move-object v6, p0

    :goto_cd
    check-cast v6, Ljava/lang/Boolean;

    goto :goto_d3

    :cond_d0
    const-string p0, "unknown"

    move-object v2, p0

    :goto_d3
    if-nez v6, :cond_113

    :cond_d5
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_10c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getValue("

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") fail, "

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " exception, defaultValue: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", from: "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10c
    .catchall {:try_start_10 .. :try_end_10c} :catchall_10e

    :cond_10c
    move-object v6, v1

    goto :goto_113

    :catchall_10e
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v6

    :cond_113
    :goto_113
    invoke-static {v6}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p0

    if-nez p0, :cond_11b

    move-object v1, v6

    goto :goto_126

    :cond_11b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v2

    if-eqz v2, :cond_126

    const-string v2, "getValue(is_user_operated_super_lock_in_menu) fail"

    invoke-static {v0, v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_126
    :goto_126
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final setIsAlreadyHintLockUpgrade(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getSaveLockDataSP()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_already_hint_lock_upgrade"

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final setIsUserOperateSuperLockInMenu(Z)V
    .registers 4
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    sget-object v0, Lcom/oplus/quickstep/utils/SPUtils;->Companion:Lcom/oplus/quickstep/utils/SPUtils$Companion;

    invoke-direct {p0}, Lcom/oplus/quickstep/applock/OplusLockManager$Companion;->getSaveLockDataSP()Landroid/content/SharedPreferences;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_user_operated_super_lock_in_menu"

    invoke-virtual {v0, p0, v1, p1}, Lcom/oplus/quickstep/utils/SPUtils$Companion;->saveValue(Landroid/content/SharedPreferences;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
