.class public Lcom/android/launcher3/dragndrop/AddItemActivity;
.super Lcom/android/launcher3/BaseActivity;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/view/View$OnTouchListener;
.implements Lcom/android/launcher3/views/AbstractSlideInView$OnCloseListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1a
.end annotation


# static fields
.field private static final ACTION_SHORTCUT_PERMISSION_DETAIL:Ljava/lang/String; = "oplus.intent.action.PERMISSION_APP_DETAIL_ALL"

.field private static final APPROVAL_DIALOG_DISABLE:Ljava/lang/String; = "approval_dialog_disable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final APPROVAL_DIALOG_DISABLE_V2:Ljava/lang/String; = "SKIP_CONFIRM"

.field private static final AUTO_DISAPPEAR_TIME:I = 0x1388

.field private static final BUTTON_ALLOW:I = 0x0

.field private static final BUTTON_ALLOW_THIS_TIME:I = 0x1

.field private static final BUTTON_REJECT:I = 0x2

.field public static final COMPONENT_NAME:Ljava/lang/String; = "com.android.launcher/com.android.launcher3.dragndrop.AddItemActivity"

.field private static final IS_ADD_ITEM_ACTIVITY:Ljava/lang/String; = "is_add_item_activity"

.field private static final KEY_SHORTCUT_PERMISSION_FEED_BACK:Ljava/lang/String; = "setShortcutSuccess"

.field private static final KEY_SHORTCUT_PERMISSION_PACKAGE_NAME:Ljava/lang/String; = "packageName"

.field private static final KEY_SHORTCUT_PERMISSION_SETTINGS:Ljava/lang/String; = ":settings:fragment_args_key"

.field private static final KEY_SHORTCUT_PERMISSION_STATE:Ljava/lang/String; = "shortcutState"

.field private static final KEY_SHORTCUT_PERMISSION_USER:Ljava/lang/String; = "shortcutUserHandle"

.field private static final METHOD_GET_PERMISSION_STATE:Ljava/lang/String; = "getOplusShortcutState"

.field private static final METHOD_SET_PERMISSION_STATE:Ljava/lang/String; = "setOplusShortcutState"

.field private static final PERMISSION_ALLOW:I = 0x0

.field private static final PERMISSION_REJECT:I = 0x1

.field private static final PERMISSION_REQUEST:I = 0x2

.field private static final REFERRER_PACKAGE_ANDROID:Ljava/lang/String; = "android"

.field private static final REQUEST_BIND_APPWIDGET:I = 0x1

.field private static final SHADOW_SIZE:I = 0xa

.field private static final SHORTCUT_ADD_PERMISSION_URI:Landroid/net/Uri;

.field private static final STATE_EXTRA_WIDGET_ID:Ljava/lang/String; = "state.widget.id"

.field private static final TAG:Ljava/lang/String; = "AddItemActivity"

.field private static final VALUE_SHORTCUT_PERMISSION_SETTINGS:Ljava/lang/String; = "oplus.permission.pin_shortcut"

.field private static sIsCreateShortcutForPopup:Z


# instance fields
.field private mActivityReferrer:Ljava/lang/String;

.field private mApp:Lcom/android/launcher3/LauncherAppState;

.field private mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

.field private mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

.field private mFinishOnPause:Z

.field private mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

.field private final mLastTouchPos:Landroid/graphics/PointF;

.field private mPendingBindWidgetId:I

.field private mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

.field private mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

.field private mWidgetOptions:Landroid/os/Bundle;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    const-string v0, "content://com.oplusos.provider.PermissionProvider"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/launcher3/dragndrop/AddItemActivity;->SHORTCUT_ADD_PERMISSION_URI:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/launcher3/dragndrop/AddItemActivity;->sIsCreateShortcutForPopup:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/android/launcher3/BaseActivity;-><init>()V

    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return-void
.end method

.method private acceptWidget(I)V
    .registers 4

    sget-object v0, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/ItemInstallQueue;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/appwidget/AppWidgetProviderInfo;I)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    const-string v1, "appWidgetId"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_18
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept(Landroid/os/Bundle;)Z
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p1

    const-string v0, "AddItemActivity"

    const-string v1, "acceptWidget error, "

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_28
    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/dragndrop/AddItemActivity;)Lcom/android/launcher3/widget/WidgetCell;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    return-object p0
.end method

.method private allowToAddItem(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;)Z
    .registers 9

    invoke-static {p0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/powersave/SuperPowerModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/powersave/SuperPowerModeManager;->isInSuperPowerMode()Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "AddItemActivity"

    const/4 v3, 0x0

    if-eqz v0, :cond_26

    const-string p0, "allowToAddItem, onCreate -- superpower mode, can\'t create shortcut!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const p2, 0x7f1205b1

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return v3

    :cond_26
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v4

    if-ne v4, v1, :cond_3a

    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p2

    goto :goto_4b

    :cond_3a
    invoke-virtual {p2, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object p2, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Landroid/appwidget/AppWidgetProviderInfo;->getProfile()Landroid/os/UserHandle;

    move-result-object p1

    move-object v5, p2

    move-object p2, p1

    move-object p1, v5

    :goto_4b
    invoke-static {p0}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/filter/DeepProtectedAppsManager;

    move-result-object v4

    invoke-virtual {v4, p1, p2}, Lcom/android/launcher/filter/DeepProtectedAppsManager;->isPackageProtected(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result p2

    if-eqz p2, :cond_70

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "onCreate -- package "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", is hidden from desktop, can\'t install shortcut!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_70
    if-eqz v0, :cond_89

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->isPinned()Z

    move-result p1

    if-eqz p1, :cond_89

    const p1, 0x7f120540

    invoke-static {p0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string/jumbo p0, "onCreate -- shortcut already exist on screen!"

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_89
    sget-object p1, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1, p0}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->isCanAddedNoCornerShortcutItem(Landroid/content/pm/LauncherApps$PinItemRequest;)Z

    move-result p0

    if-nez p0, :cond_9a

    const-string/jumbo p0, "onCreate -- isCanAddedNoCornerShortcutItem is false."

    invoke-static {v2, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_9a
    return v1
.end method

.method private applyWidgetItemAsync(Ljava/util/function/Supplier;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Lcom/android/launcher3/model/WidgetItem;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/android/launcher3/dragndrop/AddItemActivity$2;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$2;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/util/function/Supplier;)V

    sget-object p0, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, p1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private createAddItemDialog()V
    .registers 11

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setCreateShortcutForPopup(Z)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const-string v2, ""

    const/4 v3, 0x1

    if-ne v1, v3, :cond_20

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "shortcut"

    :goto_1c
    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_3a

    :cond_20
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_39

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "widget"

    goto :goto_1c

    :cond_39
    move-object v1, v2

    :goto_3a
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    const v4, 0x7f0a06c7

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    if-eqz v5, :cond_57

    invoke-virtual {v4}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-virtual {v5, v4}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_57
    new-instance v5, Lcom/android/launcher3/allapps/o;

    invoke-direct {v5, p0}, Lcom/android/launcher3/allapps/o;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-static {v5}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v5

    new-instance v6, Lcom/android/launcher/n0;

    invoke-direct {v6, p0, v2, v1}, Lcom/android/launcher/n0;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dragndrop/b;

    invoke-direct {v2, p0, v0}, Lcom/android/launcher3/dragndrop/b;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V

    invoke-static {v2}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v2

    new-instance v6, Lcom/android/launcher3/dragndrop/d;

    invoke-direct {v6, p0, v0}, Lcom/android/launcher3/dragndrop/d;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V

    invoke-static {v6}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v6

    new-instance v7, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Context;

    invoke-direct {v7, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v8, 0x7f1200a3

    invoke-virtual {v3, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v3}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v7, v4}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v7, 0x7f1204be

    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v4, 0x7f120193

    invoke-virtual {p0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0, v5}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    invoke-virtual {v5, p0}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private createAddShortcutDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .registers 9

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher/n;

    invoke-direct {v1, p0}, Lcom/android/launcher/n;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-static {v1}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/dragndrop/a;

    invoke-direct {v2, p0}, Lcom/android/launcher3/dragndrop/a;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-static {v2}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnClickListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v2

    new-instance v3, Lcom/android/launcher3/dragndrop/c;

    invoke-direct {v3, p0}, Lcom/android/launcher3/dragndrop/c;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-static {v3}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/dragndrop/e;

    invoke-direct {v4, p0}, Lcom/android/launcher3/dragndrop/e;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-static {v4}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v4

    new-instance v5, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v5, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f1200a3

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->p(Ljava/lang/CharSequence;)Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    invoke-virtual {v5, p1}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x7f1204be

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f120193

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    invoke-virtual {v1, p0}, Lcom/android/launcher/DetachableAlertDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private dispatchShortcutPermissionState()V
    .registers 7

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x80

    invoke-static {v4, v5}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_11 .. :try_end_2d} :catch_2e

    goto :goto_39

    :catch_2e
    move-exception v2

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/lang/String;

    :goto_39
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_4d

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v1

    goto :goto_4f

    :cond_4d
    const-string v1, ""

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5d

    const-string p0, "AddItemActivity"

    const-string v0, "error! get Package name failed!"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_5d
    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->getShortcutAddPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_78

    if-eq v4, v3, :cond_6d

    const/4 v1, 0x2

    if-eq v4, v1, :cond_69

    goto :goto_7b

    :cond_69
    invoke-direct {p0, v0, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->showPageWhenPermissionStateRequest(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_7b

    :cond_6d
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/statistics/LauncherStatistics;->statsAddShortcutFailed(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->showPageWhenPermissionStateReject(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7b

    :cond_78
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->createAddItemDialog()V

    :goto_7b
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddItemDialog$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic g(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddItemDialog$3(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private getShortcutAddPermission(Ljava/lang/String;)I
    .registers 6

    const-string v0, "AddItemActivity"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "shortcutUserHandle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    :try_start_11
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/launcher3/dragndrop/AddItemActivity;->SHORTCUT_ADD_PERMISSION_URI:Landroid/net/Uri;

    const-string v3, "getOplusShortcutState"

    invoke-virtual {p0, v2, v3, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "shortcutState"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "Permission is :"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_3b} :catch_3c

    return p0

    :catch_3c
    move-exception p0

    const-string p1, "getShortcutAddPermission: call uri failed --> "

    invoke-static {p1, p0, v0}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0
.end method

.method private grantShortcutAddPermission(Ljava/lang/String;I)V
    .registers 7

    const-string v0, "AddItemActivity"

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    const-string/jumbo v3, "shortcutUserHandle"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "shortcutState"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :try_start_17
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget-object v2, Lcom/android/launcher3/dragndrop/AddItemActivity;->SHORTCUT_ADD_PERMISSION_URI:Landroid/net/Uri;

    const-string/jumbo v3, "setOplusShortcutState"

    invoke-virtual {p0, v2, v3, p1, v1}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    const-string/jumbo v1, "setShortcutSuccess"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2b} :catch_2c

    goto :goto_33

    :catch_2c
    move-exception p0

    const-string v1, "grantShortcutAddPermission: call uri failed --> "

    invoke-static {v1, p0, v0}, Lcom/android/common/util/u;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    const/4 p0, 0x0

    :goto_33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "] permission to : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_53

    goto :goto_58

    :cond_53
    const-string p0, "grantShortcutAddPermission error!"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_58
    return-void
.end method

.method public static synthetic h(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$showPageWhenPermissionStateRequest$7(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method private handleAutoInstallShortcutWidget(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;)Z
    .registers 10

    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_15

    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/pm/ShortcutInfo;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v3

    goto :goto_24

    :cond_15
    invoke-virtual {p2, p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/pm/LauncherApps$PinItemRequest;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    move-object p1, v1

    :goto_24
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v5, "com.oplus.permission.safe.SAFE_MANAGER"

    invoke-virtual {v4, v5, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_41

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string/jumbo v6, "oppo.permission.OPPO_COMPONENT_SAFE"

    invoke-virtual {v4, v6, v0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-nez v4, :cond_3f

    goto :goto_41

    :cond_3f
    move v4, v5

    goto :goto_42

    :cond_41
    :goto_41
    move v4, v2

    :goto_42
    const-string v6, "AddItemActivity"

    if-nez v4, :cond_54

    sget-object v4, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->INSTANCE:Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;

    invoke-virtual {v4, p0, p2}, Lcom/android/launcher3/shortcuts/NoBadgeShortcutHelper;->hasHotGameShortCutPermission(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;)Z

    move-result p2

    if-nez p2, :cond_54

    const-string p0, "have no permission [com.oplus.permission.safe.SAFE_MANAGER]!"

    invoke-static {v6, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v5

    :cond_54
    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->isLegalPackageName(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_5b

    return v5

    :cond_5b
    if-eqz v3, :cond_9b

    const-string p2, "SKIP_CONFIRM"

    invoke-virtual {v3, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_70

    const-string p2, "approval_dialog_disable"

    invoke-virtual {v3, p2}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6e

    goto :goto_70

    :cond_6e
    move p2, v5

    goto :goto_71

    :cond_70
    :goto_70
    move p2, v2

    :goto_71
    const-string/jumbo v0, "onCreate -- skip dialog confirm = "

    invoke-static {v0, p2, v6}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    if-eqz p2, :cond_9b

    invoke-static {p1}, Lcom/android/common/util/SplitScreenUtils;->isCombination(Landroid/content/pm/ShortcutInfo;)Z

    move-result p2

    if-eqz p2, :cond_97

    invoke-static {p1}, Lcom/android/common/util/SplitScreenUtils;->isDefaultCombination(Landroid/content/pm/ShortcutInfo;)Z

    move-result p1

    if-nez p1, :cond_97

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120541

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_97
    invoke-virtual {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onPlaceAutomaticallyClick(Landroid/view/View;)V

    return v2

    :cond_9b
    return v5
.end method

.method public static synthetic i(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$isAllowedAddWidget$14(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method private initReferrer()V
    .registers 3

    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string/jumbo v1, "mReferrer"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mActivityReferrer:Ljava/lang/String;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_15} :catch_16

    goto :goto_1e

    :catch_16
    move-exception p0

    const-string v0, "AddItemActivity"

    const-string v1, "Failed to reflect \'mReferrer\'"

    invoke-static {v0, v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1e
    return-void
.end method

.method private isAllowedAddWidget(Landroid/content/pm/LauncherApps$PinItemRequest;)Z
    .registers 7

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportWhiteListControl()Z

    move-result v0

    const-string v1, "AddItemActivity"

    const/4 v2, 0x1

    if-nez v0, :cond_f

    const-string p0, "do not support whitelist control allow add widget"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_f
    invoke-static {p1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/android/launcher3/dragndrop/f;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/f;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    sget-object v0, Lcom/android/launcher3/dragndrop/g;->b:Lcom/android/launcher3/dragndrop/g;

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Landroid/content/ComponentName;

    const-string v3, ""

    invoke-direct {v0, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/common/util/PackageUtils;->isSystemApp(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-static {p0, v0}, Lcom/android/common/util/PackageUtils;->isRemovableApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_b2

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string/jumbo v4, "oplus.permission.OPLUS_COMPONENT_SAFE"

    invoke-static {v3, v0, v4}, Lcom/android/common/util/PackageUtils;->isPermissionGrantedApp(Landroid/content/pm/PackageManager;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_51

    goto :goto_b2

    :cond_51
    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlHelper;->getInstance()Lcom/android/launcher3/widget/WidgetControlHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/launcher3/widget/WidgetControlHelper;->isInWhiteList(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_62

    const-string/jumbo p0, "whitelist app allow add widget"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_62
    invoke-static {}, Lcom/android/launcher3/widget/WidgetControlHelper;->getInstance()Lcom/android/launcher3/widget/WidgetControlHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetControlHelper;->getToastEnable()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_8b

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f120328

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v2}, Lcom/android/common/util/ToastUtils;->toastSingle(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v4, v2}, Lcom/android/statistics/LauncherStatistics;->statsEventWidgetControl(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9a

    :cond_8b
    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v2, v4}, Lcom/android/statistics/LauncherStatistics;->statsEventWidgetControl(Ljava/lang/String;Ljava/lang/String;)V

    :goto_9a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "controlled app do not allow add widget componentName: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return v3

    :cond_b2
    :goto_b2
    const-string p0, "Oplus app allow add widget"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static isCreateShortcutForPopup()Z
    .registers 1

    sget-boolean v0, Lcom/android/launcher3/dragndrop/AddItemActivity;->sIsCreateShortcutForPopup:Z

    return v0
.end method

.method private isLegalPackageName(Ljava/lang/String;)Z
    .registers 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "AddItemActivity"

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    const-string p0, "Pkg verify failed, pkgName is empty!"

    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_14
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mActivityReferrer:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mActivityReferrer:Ljava/lang/String;

    const-string v4, "android"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mActivityReferrer:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mActivityReferrer:Ljava/lang/String;

    aput-object p0, v0, v2

    aput-object p1, v0, v3

    const-string p0, "Pkg verify failed, expected:%s, received:%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/SecurityException;

    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, p0, p1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v2

    :cond_47
    return v3
.end method

.method public static synthetic j(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddShortcutDialog$11(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic k(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$isAllowedAddWidget$15(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/DialogInterface;I)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$showPageWhenPermissionStateRequest$8(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method private synthetic lambda$createAddItemDialog$2(Landroid/content/DialogInterface;I)V
    .registers 4

    const-string p2, "AddItemActivity"

    const-string v0, "The pop-up box for adding a shortcut clicked the cancel button."

    invoke-static {p2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$createAddItemDialog$3(Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 6

    const/4 p4, 0x1

    invoke-static {p4}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setCreateShortcutForPopup(Z)V

    const-string p4, "AddItemActivity"

    const-string v0, "The pop-up box for adding a shortcut clicked the Add button."

    invoke-static {p4, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p0}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object p4

    invoke-virtual {p4, p1, p2}, Lcom/android/statistics/LauncherStatistics;->statsAddWidgetOrShortcut(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onPlaceAutomaticallyClick(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createAddItemDialog$4(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$createAddItemDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$createAddShortcutDialog$10(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$createAddShortcutDialog$11(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onPlaceAutomaticallyClick(Landroid/view/View;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$createAddShortcutDialog$12(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_d

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_d
    return-void
.end method

.method private synthetic lambda$createAddShortcutDialog$13(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_d

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_d

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_d
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$isAllowedAddWidget$14(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    invoke-virtual {p1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$isAllowedAddWidget$15(Landroid/appwidget/AppWidgetProviderInfo;)Landroid/content/ComponentName;
    .registers 1

    iget-object p0, p0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    return-object p0
.end method

.method private synthetic lambda$setupShortcut$0(Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;
    .registers 4

    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v1}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;Lcom/android/launcher3/icons/IconCache;Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method private synthetic lambda$setupWidget$1(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;
    .registers 4

    new-instance v0, Lcom/android/launcher3/model/WidgetItem;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {p0}, Lcom/android/launcher3/LauncherAppState;->getIconCache()Lcom/android/launcher3/icons/IconCache;

    move-result-object p0

    invoke-direct {v0, p1, v1, p0}, Lcom/android/launcher3/model/WidgetItem;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;Lcom/android/launcher3/InvariantDeviceProfile;Lcom/android/launcher3/icons/IconCache;)V

    return-object v0
.end method

.method private synthetic lambda$showPageWhenPermissionStateReject$9(Ljava/lang/String;Landroid/view/View;)V
    .registers 5

    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    const-string v0, ":settings:fragment_args_key"

    const-string/jumbo v1, "oplus.permission.pin_shortcut"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "packageName"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "oplus.intent.action.PERMISSION_APP_DETAIL_ALL"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private synthetic lambda$showPageWhenPermissionStateRequest$6(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-nez p1, :cond_a

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_a
    return-void
.end method

.method private synthetic lambda$showPageWhenPermissionStateRequest$7(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 p1, 0x4

    if-ne p2, p1, :cond_10

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result p1

    if-nez p1, :cond_10

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->onCancelClick(Landroid/view/View;)V

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$showPageWhenPermissionStateRequest$8(Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/content/DialogInterface;I)V
    .registers 7

    if-eqz p4, :cond_1d

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p4, v1, :cond_13

    if-eq p4, v0, :cond_9

    goto :goto_27

    :cond_9
    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->grantShortcutAddPermission(Ljava/lang/String;I)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_27

    :cond_13
    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->grantShortcutAddPermission(Ljava/lang/String;I)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->createAddShortcutDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto :goto_27

    :cond_1d
    const/4 p4, 0x0

    invoke-direct {p0, p1, p4}, Lcom/android/launcher3/dragndrop/AddItemActivity;->grantShortcutAddPermission(Ljava/lang/String;I)V

    invoke-interface {p3}, Landroid/content/DialogInterface;->dismiss()V

    invoke-direct {p0, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->createAddShortcutDialog(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_27
    return-void
.end method

.method private logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V
    .registers 3

    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getStatsLogManager()Lcom/android/launcher3/logging/StatsLogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/logging/StatsLogManager;->logger()Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object v0

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {p0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/ItemInfo;

    invoke-interface {v0, p0}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->withItemInfo(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/launcher3/logging/StatsLogManager$StatsLogger;->log(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public static synthetic m(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddItemDialog$5(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic n(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$showPageWhenPermissionStateRequest$6(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic o(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$setupShortcut$0(Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic p(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddShortcutDialog$10(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic q(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroid/view/View;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$showPageWhenPermissionStateReject$9(Ljava/lang/String;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic r(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$setupWidget$1(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)Lcom/android/launcher3/model/WidgetItem;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddItemDialog$4(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public static setCreateShortcutForPopup(Z)V
    .registers 1

    sput-boolean p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->sIsCreateShortcutForPopup:Z

    return-void
.end method

.method private setupShortcut()V
    .registers 4

    new-instance v0, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {v0, v1, p0}, Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v1

    new-instance v2, Lcom/android/launcher3/widget/PendingAddShortcutInfo;

    invoke-direct {v2, v0}, Lcom/android/launcher3/widget/PendingAddShortcutInfo;-><init>(Lcom/android/launcher3/pm/ShortcutConfigActivityInfo;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/h;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/dragndrop/h;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/dragndrop/PinShortcutRequestActivityInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    return-void
.end method

.method private setupWidget()Z
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->fromProviderInfo(Landroid/content/Context;Landroid/appwidget/AppWidgetProviderInfo;)Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;

    move-result-object v0

    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v3, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    if-gt v1, v3, :cond_6a

    iget v1, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->minSpanY:I

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    if-le v1, v2, :cond_19

    goto :goto_6a

    :cond_19
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-static {v2}, Lcom/android/launcher3/dragndrop/PinItemDragListener;->getPreview(Landroid/content/pm/LauncherApps$PinItemRequest;)Landroid/widget/RemoteViews;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/launcher3/widget/WidgetCell;->setRemoteViewsPreview(Landroid/widget/RemoteViews;)V

    new-instance v1, Lcom/android/launcher3/widget/WidgetManagerHelper;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/WidgetManagerHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    new-instance v1, Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-direct {v1, p0}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    new-instance v1, Lcom/android/launcher3/widget/PendingAddWidgetInfo;

    const/16 v2, -0x71

    invoke-direct {v1, v0, v2}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;-><init>(Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;I)V

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numColumns:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanX:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanX:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    iget v2, v2, Lcom/android/launcher3/InvariantDeviceProfile;->numRows:I

    iget v3, v0, Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;->spanY:I

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    iput v2, v1, Lcom/android/launcher3/model/data/ItemInfo;->spanY:I

    invoke-virtual {v1, p0}, Lcom/android/launcher3/widget/PendingAddWidgetInfo;->getDefaultSizeOptions(Landroid/content/Context;)Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v2}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/h;

    invoke-direct {v1, p0, v0}, Lcom/android/launcher3/dragndrop/h;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Lcom/android/launcher3/widget/LauncherAppWidgetProviderInfo;)V

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->applyWidgetItemAsync(Ljava/util/function/Supplier;)V

    const/4 p0, 0x1

    return p0

    :cond_6a
    :goto_6a
    const-string p0, "Widget"

    const-string v0, "Cannot add widget"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method private showPageWhenPermissionStateReject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const v0, 0x7f0a06c7

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_18

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_18
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x7f130044

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201df

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const/16 v2, 0x1388

    sget-object v3, Lcom/coui/appcompat/snackbar/COUISnackBar;->w:Landroid/view/animation/PathInterpolator;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/support/control/R$dimen;->coui_snack_bar_margin_bottom:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-static {v0, v1, p2, v2, v3}, Lcom/coui/appcompat/snackbar/COUISnackBar;->h(Landroid/content/Context;Landroid/view/View;Ljava/lang/String;II)Lcom/coui/appcompat/snackbar/COUISnackBar;

    move-result-object p2

    new-instance v0, Lcom/android/launcher3/dragndrop/AddItemActivity$3;

    invoke-direct {v0, p0}, Lcom/android/launcher3/dragndrop/AddItemActivity$3;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;)V

    invoke-virtual {p2, v0}, Lcom/coui/appcompat/snackbar/COUISnackBar;->setOnStatusChangeListener(Lcom/coui/appcompat/snackbar/COUISnackBar$OnStatusChangeListener;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1201de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/folder/recommend/view/b;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/folder/recommend/view/b;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;)V

    invoke-virtual {p2, v0, v1}, Lcom/coui/appcompat/snackbar/COUISnackBar;->i(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    invoke-virtual {p2}, Lcom/coui/appcompat/snackbar/COUISnackBar;->j()V

    return-void
.end method

.method private showPageWhenPermissionStateRequest(Landroid/content/Context;Ljava/lang/String;)V
    .registers 14

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_16

    :cond_14
    const-string v0, ""

    :goto_16
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_25

    const-string p0, "AddItemActivity"

    const-string/jumbo p1, "package name is empty when Permission State is Request!"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_25
    const v2, 0x7f0a06c7

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_3d

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3d
    new-instance v3, Lcom/android/launcher3/dragndrop/b;

    invoke-direct {v3, p0, v1}, Lcom/android/launcher3/dragndrop/b;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V

    invoke-static {v3}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnDismissListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/dragndrop/d;

    invoke-direct {v4, p0, v1}, Lcom/android/launcher3/dragndrop/d;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;I)V

    invoke-static {v4}, Lcom/android/launcher/DetachableAlertDialogListener;->wrap(Landroid/content/DialogInterface$OnKeyListener;)Lcom/android/launcher/DetachableAlertDialogListener;

    move-result-object v4

    const/4 v5, 0x3

    new-array v6, v5, [I

    fill-array-data v6, :array_dc

    new-array v5, v5, [Ljava/lang/String;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1201da

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v5, v8

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f1201db

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v1

    const/4 v7, 0x2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f1201e0

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    aput-object v9, v5, v7

    new-instance v7, Lcom/android/launcher/n0;

    invoke-direct {v7, p0, v0, v2}, Lcom/android/launcher/n0;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Ljava/lang/String;Landroidx/constraintlayout/widget/ConstraintLayout;)V

    new-instance v0, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;

    const v2, 0x7f130001

    invoke-direct {v0, p1, v2}, Lcom/coui/appcompat/dialog/COUIAlertDialogBuilder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f0806a9

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v9, 0x7f1201dc

    invoke-virtual {v2, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p2, v1, v8

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p2

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f1201dd

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    new-instance p2, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;

    invoke-direct {p2, p1, v5, v6}, Lcom/coui/appcompat/dialog/adapter/COUIListDialogAdapter;-><init>(Landroid/content/Context;[Ljava/lang/CharSequence;[I)V

    invoke-virtual {p0, p2, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0, v4}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0, v8}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    return-void

    nop

    :array_dc
    .array-data 4
        0x7f1304f0
        0x7f1304f0
        0x7f1304f0
    .end array-data
.end method

.method public static synthetic t(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddShortcutDialog$13(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->lambda$createAddShortcutDialog$12(Landroid/content/DialogInterface;)V

    return-void
.end method


# virtual methods
.method public attachBaseContext(Landroid/content/Context;)V
    .registers 3

    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isSmallScreen()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    goto :goto_11

    :cond_a
    invoke-static {p1}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    :goto_11
    return-void
.end method

.method public getDragLayer()Lcom/android/launcher3/views/BaseDragLayer;
    .registers 1

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1f

    if-eqz p3, :cond_e

    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string v0, "appWidgetId"

    invoke-static {p3, v0, p1}, Lcom/android/common/util/IntentUtils;->getIntExtra(Landroid/content/Intent;Ljava/lang/String;I)I

    move-result p1

    goto :goto_10

    :cond_e
    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    :goto_10
    const/4 p3, -0x1

    if-ne p2, p3, :cond_17

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    goto :goto_1e

    :cond_17
    iget-object p2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    iput p3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    :goto_1e
    return-void

    :cond_1f
    invoke-super {p0, p1, p2, p3}, Lcom/android/launcher3/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_BACK:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method public onCancelClick(Landroid/view/View;)V
    .registers 2

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_CANCELLED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->initReferrer()V

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->checkLauncherLockedAndToast(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "AddItemActivity"

    if-eqz v0, :cond_18

    const-string/jumbo p1, "onCreate -- checkLauncherLockedAndToast() is true."

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_18
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/pm/PinRequestHelper;->getPinItemRequest(Landroid/content/Intent;)Landroid/content/pm/LauncherApps$PinItemRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    if-nez v0, :cond_2e

    const-string/jumbo p1, "onCreate exit"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_2e
    invoke-direct {p0, p0, v0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->allowToAddItem(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;)Z

    move-result v0

    if-nez v0, :cond_3e

    const-string/jumbo p1, "onCreate -- allowToAddItem() is false."

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_3e
    invoke-static {p0}, Lcom/android/launcher3/LauncherAppState;->getInstance(Landroid/content/Context;)Lcom/android/launcher3/LauncherAppState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mApp:Lcom/android/launcher3/LauncherAppState;

    invoke-virtual {v0}, Lcom/android/launcher3/LauncherAppState;->getInvariantDeviceProfile()Lcom/android/launcher3/InvariantDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mIdp:Lcom/android/launcher3/InvariantDeviceProfile;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/launcher3/InvariantDeviceProfile;->getDeviceProfile(Landroid/content/Context;)Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/BaseActivity;->mDeviceProfile:Lcom/android/launcher3/DeviceProfile;

    const v0, 0x7f0d0033

    invoke-virtual {p0, v0}, Lcom/android/launcher3/OplusBaseActivity;->setContentView(I)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x200

    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v0, 0x7f0a06c5

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetCell;

    iput-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_7b

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupShortcut()V

    goto :goto_8a

    :cond_7b
    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupWidget()Z

    move-result v0

    if-nez v0, :cond_8a

    const-string/jumbo v0, "setup widget failed!"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_8a
    :goto_8a
    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    const v3, 0x7f0a06cd

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/widget/WidgetImageView;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    if-nez p1, :cond_a2

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_START:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_a2
    invoke-static {}, Lcom/android/common/util/DisplayUtils;->isSmallScreen()Z

    move-result p1

    if-eqz p1, :cond_ab

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_ab
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {p0, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->handleAutoInstallShortcutWidget(Landroid/content/Context;Landroid/content/pm/LauncherApps$PinItemRequest;)Z

    move-result p1

    if-eqz p1, :cond_bd

    const-string/jumbo p1, "onCreate -- handle by autoInstall"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_da

    :cond_bd
    invoke-static {}, Lcom/android/common/util/AppFeatureUtils;->support131()Z

    move-result p1

    if-eqz p1, :cond_cf

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result p1

    if-ne p1, v2, :cond_cf

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->dispatchShortcutPermissionState()V

    goto :goto_da

    :cond_cf
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->isAllowedAddWidget(Landroid/content/pm/LauncherApps$PinItemRequest;)Z

    move-result p1

    if-eqz p1, :cond_da

    invoke-direct {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->createAddItemDialog()V

    :cond_da
    :goto_da
    invoke-virtual {p0}, Lcom/android/launcher3/dragndrop/AddItemActivity;->setupNavBarColor()V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 12

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getWidgetView()Lcom/android/launcher3/widget/WidgetImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v1}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewPreview()Lcom/android/launcher3/widget/NavigableAppWidgetHostView;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    if-nez v2, :cond_1d

    if-nez v1, :cond_1d

    const-string p0, "Widget"

    const-string p1, "img.getDrawable() == null && appWidgetHostView == null"

    invoke-static {p0, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_1d
    if-eqz v1, :cond_57

    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    invoke-interface {v1, v6}, Lcom/android/launcher3/dragndrop/DraggableView;->getSourceVisualDragBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetCell;->getAppWidgetHostViewScale()F

    move-result v9

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getLeft()I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    mul-float/2addr v2, v9

    float-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getTop()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->y:F

    mul-float/2addr v4, v9

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v6, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    new-instance v0, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v7

    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getMeasuredWidth()I

    move-result v8

    move-object v4, v0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;IIF)V

    goto :goto_86

    :cond_57
    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getBitmapBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v4, v4, Landroid/graphics/PointF;->x:F

    float-to-int v4, v4

    sub-int/2addr v2, v4

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v4

    iget-object v5, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    iget v5, v5, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Rect;->offset(II)V

    new-instance v2, Lcom/android/launcher3/dragndrop/PinItemDragListener;

    iget-object v4, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Lcom/android/launcher3/widget/WidgetImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-direct {v2, v4, v1, v5, v0}, Lcom/android/launcher3/dragndrop/PinItemDragListener;-><init>(Landroid/content/pm/LauncherApps$PinItemRequest;Landroid/graphics/Rect;II)V

    move-object v0, v2

    :goto_86
    new-instance v1, Landroid/content/ClipDescription;

    const/4 v2, 0x1

    new-array v4, v2, [Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/BaseItemDragListener;->getMimeType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, ""

    invoke-direct {v1, v5, v4}, Landroid/content/ClipDescription;-><init>(Ljava/lang/CharSequence;[Ljava/lang/String;)V

    new-instance v4, Landroid/os/PersistableBundle;

    invoke-direct {v4}, Landroid/os/PersistableBundle;-><init>()V

    const-string v6, "add_shortcut_item"

    invoke-virtual {v4, v6, v2}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v1, v4}, Landroid/content/ClipDescription;->setExtras(Landroid/os/PersistableBundle;)V

    new-instance v4, Landroid/content/ClipData;

    new-instance v6, Landroid/content/ClipData$Item;

    invoke-direct {v6, v5}, Landroid/content/ClipData$Item;-><init>(Ljava/lang/CharSequence;)V

    invoke-direct {v4, v1, v6}, Landroid/content/ClipData;-><init>(Landroid/content/ClipDescription;Landroid/content/ClipData$Item;)V

    new-instance v1, Lcom/android/launcher3/dragndrop/AddItemActivity$1;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity$1;-><init>(Lcom/android/launcher3/dragndrop/AddItemActivity;Landroid/view/View;)V

    const/4 v5, 0x0

    const/16 v6, 0x100

    invoke-virtual {p1, v4, v1, v5, v6}, Landroid/view/View;->startDragAndDrop(Landroid/content/ClipData;Landroid/view/View$DragShadowBuilder;Ljava/lang/Object;I)Z

    new-instance p1, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string v1, "is_add_item_activity"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object p1

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/Launcher;->ACTIVITY_TRACKER:Lcom/android/launcher3/util/ActivityTracker;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/util/ActivityTracker;->registerCallback(Lcom/android/launcher3/util/ActivityTracker$SchedulerCallback;)V

    const v0, 0x10a0001

    invoke-static {p0, v3, v0}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-object p1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_DRAGGED:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    iput-boolean v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    return v3
.end method

.method public onPause()V
    .registers 2

    invoke-super {p0}, Lcom/android/launcher3/BaseActivity;->onPause()V

    iget-boolean v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mFinishOnPause:Z

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_a
    return-void
.end method

.method public onPlaceAutomaticallyClick(Landroid/view/View;)V
    .registers 6

    const-string p1, "AddItemActivity"

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getRequestType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getShortcutInfo()Landroid/content/pm/ShortcutInfo;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/model/ItemInstallQueue;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v1, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/model/ItemInstallQueue;

    invoke-virtual {v1, v0}, Lcom/android/launcher3/model/ItemInstallQueue;->queueItem(Landroid/content/pm/ShortcutInfo;)V

    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetCell:Lcom/android/launcher3/widget/WidgetCell;

    if-eqz v1, :cond_25

    sget-object v1, Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;->LAUNCHER_ADD_EXTERNAL_ITEM_PLACED_AUTOMATICALLY:Lcom/android/launcher3/logging/StatsLogManager$LauncherEvent;

    invoke-direct {p0, v1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->logCommand(Lcom/android/launcher3/logging/StatsLogManager$EventEnum;)V

    :cond_25
    :try_start_25
    iget-object v1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v1}, Landroid/content/pm/LauncherApps$PinItemRequest;->accept()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "acceptWidget result: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shortcutInfo:"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutInfo;->toDumpString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/lang/IllegalStateException; {:try_start_25 .. :try_end_4c} :catch_4d

    goto :goto_53

    :catch_4d
    move-exception v1

    const-string v2, "acceptWidget error, "

    invoke-static {p1, v2, v1}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_53
    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getLongLabel()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_61

    invoke-virtual {v0}, Landroid/content/pm/ShortcutInfo;->getShortLabel()Ljava/lang/CharSequence;

    move-result-object p1

    :cond_61
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    return-void

    :cond_69
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    invoke-virtual {p1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->allocateAppWidgetId()I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {p1, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetManager:Lcom/android/launcher3/widget/WidgetManagerHelper;

    iget v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v3, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mWidgetOptions:Landroid/os/Bundle;

    invoke-virtual {v0, v2, p1, v3}, Lcom/android/launcher3/widget/WidgetManagerHelper;->bindAppWidgetIdIfAllowed(ILandroid/appwidget/AppWidgetProviderInfo;Landroid/os/Bundle;)Z

    move-result v0

    if-eqz v0, :cond_8e

    iget-object p1, p1, Landroid/appwidget/AppWidgetProviderInfo;->label:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->sendWidgetAddedToScreenAccessibilityEvent(Ljava/lang/String;)V

    iget p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    invoke-direct {p0, p1}, Lcom/android/launcher3/dragndrop/AddItemActivity;->acceptWidget(I)V

    return-void

    :cond_8e
    iget-object p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mAppWidgetHost:Lcom/android/launcher3/widget/LauncherAppWidgetHost;

    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    iget-object v2, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mRequest:Landroid/content/pm/LauncherApps$PinItemRequest;

    invoke-virtual {v2, p0}, Landroid/content/pm/LauncherApps$PinItemRequest;->getAppWidgetProviderInfo(Landroid/content/Context;)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    invoke-virtual {p1, p0, v0, v2, v1}, Lcom/android/launcher3/widget/LauncherAppWidgetHost;->startBindFlow(Lcom/android/launcher3/BaseActivity;ILandroid/appwidget/AppWidgetProviderInfo;I)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    iget v0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string/jumbo v1, "state.widget.id"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/android/launcher3/OplusBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mPendingBindWidgetId:I

    const-string/jumbo v0, "state.widget.id"

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onSlideInViewClosed()V
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/dragndrop/AddItemActivity;->mLastTouchPos:Landroid/graphics/PointF;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    const/4 p0, 0x0

    return p0
.end method

.method public setupNavBarColor()V
    .registers 5

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v0, v0, 0x30

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/16 v3, 0x20

    if-ne v0, v3, :cond_18

    move v0, v1

    goto :goto_19

    :cond_18
    move v0, v2

    :goto_19
    invoke-virtual {p0}, Lcom/android/launcher3/BaseActivity;->getSystemUiController()Lcom/android/launcher3/util/SystemUiController;

    move-result-object p0

    if-eqz v0, :cond_20

    const/4 v1, 0x2

    :cond_20
    invoke-virtual {p0, v2, v1}, Lcom/android/launcher3/util/SystemUiController;->updateUiState(II)V

    return-void
.end method
