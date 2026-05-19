.class public Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;
.super Ljava/lang/Object;
.source ""


# static fields
.field public static final CONNECT_REASON_ASSI_APP_STATUS:Ljava/lang/String; = "assiAppStatusChange"

.field public static final CONNECT_REASON_CHILDREN_MODE:Ljava/lang/String; = "childrenMode"

.field public static final CONNECT_REASON_FINISH_BINDING:Ljava/lang/String; = "finishBindingItems"

.field public static final CONNECT_REASON_ONLY_SHELF:Ljava/lang/String; = "only_shelf"

.field public static final CONNECT_REASON_ON_START:Ljava/lang/String; = "onStart"

.field public static final CONNECT_REASON_RECONNECT:Ljava/lang/String; = "reconnect"

.field public static final CONNECT_REASON_SWITCH:Ljava/lang/String; = "switch"

.field public static final CONNECT_REASON_USER_UNLOCK:Ljava/lang/String; = "userUnlock"

.field private static final DEBUG:Z = false

.field private static final DELAY_RECONNECT_WHEN_ASSIS_STATUS_CHANGE:I = 0x7d0

.field private static final DELAY_RECONNECT_WHEN_SERVICE_DISCONNECT:I = 0x1f4

.field private static final DISABLE_ASSISTANT_SCREEN:Ljava/lang/String; = "disable_assistant_screen"

.field private static final DISABLE_SHELF_SLIDE_DOWN:Ljava/lang/String; = "disable_shelf_on_slide"

.field private static final EXTRA_CLIENT_OPTIONS:Ljava/lang/String; = "client_options"

.field private static final EXTRA_CONFIGURATION:Ljava/lang/String; = "configuration"

.field private static final EXTRA_LAYOUT_PARAMS:Ljava/lang/String; = "layout_params"

.field private static final KEY_SERVICE_API_VERSION:Ljava/lang/String; = "service.api.version"

.field public static final SERVICE_STATE_CONNECTED:I = 0x1

.field private static final SERVICE_STATE_DISCONNECTED:I = 0x0

.field private static final SETTING_CHILDREN_MODE:Ljava/lang/String; = "children_mode_on"

.field public static final TAG:Ljava/lang/String; = "LauncherClient"

.field private static sApiVersion:I = -0x1


# instance fields
.field public mActivity:Landroid/app/Activity;

.field private mActivityState:I

.field public mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

.field public mAssistScreenSettingsOn:Z

.field public mAssistScreenShowing:Z

.field private mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

.field public mDestroyed:Z

.field private mDisableShelfSlideDownObserver:Landroid/database/ContentObserver;

.field public mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

.field private mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

.field public mFlags:I

.field private mIdPreload:Z

.field private mIsLandscape:Z

.field private mIsMultiWindowMode:Z

.field public mIsOverlayScrolling:Z

.field private mIsScrolling:Z

.field private mIsZeroAlphaOverlay:Z

.field public final mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

.field public mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

.field private mOverlay:Lcom/android/overlay/OverlayProxy;

.field public mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

.field private mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

.field public mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

.field public mServiceState:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsOverlayScrolling:Z

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$1;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;

    sget-object v2, Lcom/android/launcher3/util/Executors;->MODEL_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$2;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;

    sget-object v2, Lcom/oplus/util/OplusExecutors;->URGENT_TRANSACTION_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$3;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDisableShelfSlideDownObserver:Landroid/database/ContentObserver;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$4;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    new-instance v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$5;

    invoke-direct {v1, p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient$5;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    iget p2, p3, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;->mData:I

    iput p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->getInstance(Landroid/content/Context;)Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    new-instance p3, Ljava/lang/ref/WeakReference;

    invoke-direct {p3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p2, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    iget-object p2, p2, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iput-object p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    new-instance p2, Landroid/content/IntentFilter;

    invoke-direct {p2}, Landroid/content/IntentFilter;-><init>()V

    const-string p3, "package"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object p3

    const-string v1, "com.coloros.assistantscreen"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_80

    invoke-virtual {p2, v1, v0}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    :cond_80
    const-string p3, "android.intent.action.PACKAGE_DATA_CLEARED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string p3, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {p2, p3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {p3, v1, p2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p2

    iput-boolean p2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    sget p2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    if-gtz p2, :cond_a3

    invoke-static {p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    :cond_a3
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isMultiWindowMode:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/BaseActivity;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p1

    iget-boolean p1, p1, Lcom/android/launcher3/DeviceProfile;->isLandscape:Z

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    sget-object p1, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {p1}, Lcom/android/common/util/AppFeatureUtils;->isFoldScreen()Z

    move-result p1

    const-string p2, "LauncherClient"

    if-eqz p1, :cond_de

    invoke-static {}, Lcom/android/common/util/ScreenUtils;->isFoldScreenFolded()Z

    move-result p1

    if-eqz p1, :cond_de

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    if-nez p1, :cond_de

    iget-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    if-eqz p1, :cond_de

    const-string p1, "LauncherClient reset mIsLandscape false, current isLandscape but now isFoldScreenFolded and isNotMultiWindowMode!"

    invoke-static {p2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    :cond_de
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "disable_assistant_screen"

    invoke-static {p1, p3, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_ee

    const/4 p1, 0x1

    goto :goto_ef

    :cond_ee
    move p1, v0

    :goto_ef
    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSettingsOn:Z

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isExpTablet()Z

    move-result p1

    if-eqz p1, :cond_fa

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->updateShelfSlideDownStatusFromSettings()Z

    :cond_fa
    :try_start_fa
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isExpTablet()Z

    move-result p1

    if-eqz p1, :cond_120

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p3, "disable_shelf_on_slide"

    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDisableShelfSlideDownObserver:Landroid/database/ContentObserver;

    invoke-virtual {p1, p3, v0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_120
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p1

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {p1, p3}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iget-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {p1, p3}, Lcom/android/launcher3/BaseActivity;->addMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    invoke-virtual {p1}, Lcom/android/launcher/Launcher;->isOplusLauncher()Z

    move-result p3

    if-eqz p3, :cond_146

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->setupLauncher(Lcom/android/launcher/Launcher;)V
    :try_end_13f
    .catch Ljava/lang/Exception; {:try_start_fa .. :try_end_13f} :catch_140

    goto :goto_146

    :catch_140
    move-exception p1

    const-string p3, "init exception, message:"

    invoke-static {p3, p1, p2}, Lcom/android/common/config/m;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_146
    :goto_146
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_16d

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_16d

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p1

    if-eqz p1, :cond_16d

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->onAttachedToWindow()V

    :cond_16d
    return-void
.end method

.method public static synthetic a(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$onStart$0()V

    return-void
.end method

.method public static synthetic access$000(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    return-void
.end method

.method public static synthetic access$100(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    return-void
.end method

.method public static synthetic access$200(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->updateShelfSlideDownStatusFromSettings()Z

    move-result p0

    return p0
.end method

.method public static synthetic access$300(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    return p0
.end method

.method public static synthetic access$302(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    return p1
.end method

.method public static synthetic access$400(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->notifyWindowChange()V

    return-void
.end method

.method public static synthetic access$500(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    return p0
.end method

.method public static synthetic access$502(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    return p1
.end method

.method public static synthetic b(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$reconnectIfNecessary$2()V

    return-void
.end method

.method public static synthetic c(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V
    .registers 1

    invoke-direct {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->lambda$connectIfNecessary$1()V

    return-void
.end method

.method private disconnectBySelf(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    if-eqz v0, :cond_19

    const-string v0, "disconnect"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setIgnoreReconnect(Z)V

    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->setOverlay(Lcom/android/overlay/OverlayProxy;)V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->disconnect()V

    :cond_19
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .registers 1

    invoke-static {p0}, Lcom/android/overlay/OverlayProxy;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method private isAssistScreenSwtichEnabled(Landroid/content/Context;)Z
    .registers 2

    if-nez p1, :cond_4

    const/4 p0, 0x0

    return p0

    :cond_4
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result p1

    if-eqz p1, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSettingsOn:Z

    return p0
.end method

.method private synthetic lambda$connectIfNecessary$1()V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    return-void
.end method

.method private synthetic lambda$onStart$0()V
    .registers 2

    const-string v0, "onStart"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$reconnectIfNecessary$2()V
    .registers 2

    const-string v0, "reconnect"

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    return-void
.end method

.method private static loadApiVersion(Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    if-nez p0, :cond_6

    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    return-void

    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-static {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p0

    const/16 v2, 0x80

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_26

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->metaData:Landroid/os/Bundle;

    if-nez p0, :cond_1d

    goto :goto_26

    :cond_1d
    const-string v1, "service.api.version"

    invoke-virtual {p0, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    sput p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    goto :goto_28

    :cond_26
    :goto_26
    sput v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    :goto_28
    return-void
.end method

.method private logLifecycle(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v0

    if-eqz v0, :cond_3c

    const-string v0, "LauncherClient."

    const-string v1, ", mDestroyed:"

    invoke-static {v0, p1, v1}, Landroidx/activity/result/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mAssistScreenShowing:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", overlay connected:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", layoutParams:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez p0, :cond_36

    const/4 p0, 0x1

    goto :goto_37

    :cond_36
    const/4 p0, 0x0

    :goto_37
    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/config/f;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_3c
    return-void
.end method

.method private notifyWindowChange()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsLandscape:Z

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsMultiWindowMode:Z

    invoke-virtual {v0, v1, p0}, Lcom/android/overlay/OverlayProxy;->onProfileChanged(ZZ)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_f} :catch_10

    goto :goto_18

    :catch_10
    move-exception p0

    const-string v0, "notifyWindowChange exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method

.method private updateShelfSlideDownStatusFromSettings()Z
    .registers 3

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "disable_shelf_on_slide"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_11

    move v1, v0

    :cond_11
    sget-object p0, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    invoke-virtual {p0, v1}, Lcom/android/overlay/ShelfService;->setDisableShelfSlideDown(Z)V

    invoke-static {}, Lcom/android/common/config/FeatureOption;->updateShelfSupport()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update shelf disable status: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "LauncherClient"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v1
.end method


# virtual methods
.method public checkoutAssistantAllowDrag(Ljava/lang/String;)I
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->checkoutAssistantAllowDrag(Ljava/lang/String;)I

    move-result p0
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_c} :catch_d

    return p0

    :catch_d
    move-exception p0

    const-string p1, "checkoutAssistantAllowDrag exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_15
    const/4 p0, -0x1

    return p0
.end method

.method public closeAlphaOverlay()V
    .registers 3

    const-string v0, "LauncherClient"

    const-string v1, "closeAlphaOverlay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayProxy;->closeAlphaOverlay()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    const-string v1, "closeAlphaOverlay exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public connectIfNecessary(Ljava/lang/String;)V
    .registers 9

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_5

    return-void

    :cond_5
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const-string v1, "LauncherClient"

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1c

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_1c

    const-string v0, "google api version is too low, try get again"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->loadApiVersion(Landroid/content/Context;)V

    :cond_1c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenSwtichEnabled(Landroid/content/Context;)Z

    move-result v0

    iget-object v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v3}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v3

    xor-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v3

    sget-object v4, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v4

    if-eqz v4, :cond_5f

    const-string v4, "connectIfNecessary, isAssisScreenEnable:"

    const-string v5, ", isNotInChildMode:"

    const-string v6, ", isConnected:"

    invoke-static {v4, v0, v5, v2, v6}, Lcom/android/common/config/h;->a(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", mDestroyed:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ",reason:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5f
    const-string v1, "only_shelf"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_71

    if-eqz v2, :cond_71

    sget-object p1, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, p0}, Lcom/android/overlay/ShelfService;->bindShelfService(Landroid/content/Context;)V

    return-void

    :cond_71
    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v1, :cond_81

    if-eqz v0, :cond_81

    if-eqz v2, :cond_81

    if-nez v3, :cond_81

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    invoke-virtual {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->connect(Ljava/lang/String;)V

    goto :goto_9d

    :cond_81
    const-string v1, "switch"

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8b

    if-eqz v0, :cond_93

    :cond_8b
    const-string v0, "childrenMode"

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_9d

    :cond_93
    sget-object p1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v0, Lcom/android/wm/shell/onehanded/d;

    invoke-direct {v0, p0}, Lcom/android/wm/shell/onehanded/d;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    :cond_9d
    :goto_9d
    if-eqz v2, :cond_ac

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportCardGlobalDrag()Z

    move-result p1

    if-eqz p1, :cond_ac

    invoke-static {}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->getInstance()Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->bindDragSever()V

    :cond_ac
    if-eqz v2, :cond_b7

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz p0, :cond_b7

    sget-object p1, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    invoke-virtual {p1, p0}, Lcom/android/overlay/ShelfService;->bindShelfService(Landroid/content/Context;)V

    :cond_b7
    return-void
.end method

.method public final endScroll()V
    .registers 4

    const-string v0, "LauncherClient"

    const-string v1, "endScroll"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_25

    const/4 v1, 0x0

    :try_start_16
    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->endScroll()V
    :try_end_1d
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_1d} :catch_1e

    goto :goto_47

    :catch_1e
    move-exception p0

    const-string v1, "endScroll exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_47

    :cond_25
    const-string v1, "endScroll but isConnect: "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " isAssistScreenEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public final endScrollWithVelocity(F)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endScrollWithVelocity velocity: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_33

    const/4 v0, 0x0

    :try_start_25
    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->endScrollWithVelocity(F)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p0

    const-string p1, "endScrollWithVelocity exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public final exchangeConfig()V
    .registers 5

    const-string v0, "exchangeConfig apiVersion "

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_9f

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_9f

    :try_start_1c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    if-nez v0, :cond_27

    new-instance v0, Lcom/android/overlay/OverlayCallbackProxy;

    invoke-direct {v0}, Lcom/android/overlay/OverlayCallbackProxy;-><init>()V

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    :cond_27
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/overlay/OverlayCallbackProxy;->setup(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;Landroid/view/WindowManager;Landroid/view/Window;)V

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x3

    if-ge v0, v1, :cond_49

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/overlay/OverlayProxy;->windowAttached(Landroid/view/WindowManager$LayoutParams;Lcom/android/overlay/OverlayCallbackProxy;I)V

    goto :goto_72

    :cond_49
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "layout_params"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "configuration"

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    const-string v1, "client_options"

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    invoke-virtual {v1, v0, v2}, Lcom/android/overlay/OverlayProxy;->windowAttached2(Landroid/os/Bundle;Lcom/android/overlay/OverlayCallbackProxy;)V

    :goto_72
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_9f

    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x4

    if-lt v0, v1, :cond_85

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v0, p0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V

    goto :goto_9f

    :cond_85
    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_91

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onResume()V

    goto :goto_9f

    :cond_91
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onPause()V
    :try_end_96
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_96} :catch_97

    goto :goto_9f

    :catch_97
    move-exception p0

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_9f
    :goto_9f
    return-void
.end method

.method public getIsScrolling()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    return p0
.end method

.method public getIsZeroAlphaOverlay()Z
    .registers 1

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z

    return p0
.end method

.method public final hideOverlay(Z)V
    .registers 5

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLoggable()Z

    move-result v0

    const-string v1, "LauncherClient"

    if-eqz v0, :cond_40

    const-string v0, "hideOverlay, feedRunning = "

    const-string v2, ", isConnected() = "

    invoke-static {v0, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mAssistScreenShowing = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsOverlayScrolling = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsOverlayScrolling:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", Callers = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_40
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z

    if-eqz v0, :cond_4d

    const-string p1, "hideOverlay when overlay is zero alpha"

    invoke-static {v1, p1}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->closeAlphaOverlay()V

    return-void

    :cond_4d
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_6d

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    if-nez v0, :cond_5b

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsOverlayScrolling:Z

    if-eqz v0, :cond_6d

    :cond_5b
    :try_start_5b
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz p1, :cond_61

    const/4 p1, 0x1

    goto :goto_62

    :cond_61
    const/4 p1, 0x0

    :goto_62
    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->closeOverlay(I)V
    :try_end_65
    .catch Landroid/os/RemoteException; {:try_start_5b .. :try_end_65} :catch_66

    goto :goto_95

    :catch_66
    move-exception p0

    const-string p1, "hideOverlay exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_95

    :cond_6d
    const-string p1, "hideOverlay but ignore, isConnected: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,mAssistScreenShowing: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " ,mIsScrolling: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_95
    return-void
.end method

.method public hideOverlayWhenScrolling(Z)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "hideOverlayWhenScrolling feedRunning: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_38

    :try_start_1c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->endScroll()V

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz p1, :cond_2d

    const/4 p1, 0x1

    goto :goto_2e

    :cond_2d
    const/4 p1, 0x0

    :goto_2e
    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->closeOverlay(I)V
    :try_end_31
    .catch Landroid/os/RemoteException; {:try_start_1c .. :try_end_31} :catch_32

    goto :goto_38

    :catch_32
    move-exception p0

    const-string p1, "hideOverlay exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_38
    :goto_38
    return-void
.end method

.method public isAssistScreenEnable(Landroid/content/Context;)Z
    .registers 6

    invoke-static {}, Lcom/android/overlay/OverlayProxy;->getOverlayPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsAssistantScreenPackageInstalled()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "LauncherClient"

    if-nez v1, :cond_22

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isAssistScreenEnable, not installed! "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_22
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-nez v0, :cond_2e

    const-string p0, "isAssistScreenEnable, not connected!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_2e
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/model/ChildrenModeManager;->getInstance(Landroid/content/Context;)Lcom/android/launcher/model/ChildrenModeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/model/ChildrenModeManager;->isInChildrenMode()Z

    move-result v0

    if-eqz v0, :cond_40

    const-string p0, "isAssistScreenEnable, child mode!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_40
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-nez v0, :cond_5a

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    instance-of v1, v0, Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_5a

    check-cast v0, Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/OplusBaseActivity;->isInSplitScreenMode()Z

    move-result v0

    if-eqz v0, :cond_5a

    const-string p0, "isAssistScreenEnable, split"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_5a
    invoke-direct {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenSwtichEnabled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_66

    const-string p0, "isAssistScreenEnable, switch off!"

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_66
    const/4 p0, 0x1

    return p0
.end method

.method public isConnected()Z
    .registers 3

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    iget-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    if-nez v1, :cond_13

    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mClient:Ljava/lang/ref/WeakReference;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLauncherService:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    iget-object v0, v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iput-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    :cond_13
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-nez p0, :cond_20

    const-string p0, "LauncherClient"

    const-string v0, "isConnected false because mOverlay is null"

    invoke-static {p0, v0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_20
    const/4 p0, 0x1

    return p0
.end method

.method public isOverviewState()Z
    .registers 2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object p0

    sget-object v0, Lcom/android/launcher3/LauncherState;->OVERVIEW:Lcom/android/launcher3/LauncherState;

    invoke-virtual {p0, v0}, Lcom/android/launcher3/statemanager/StatefulActivity;->isInState(Lcom/android/launcher3/statemanager/BaseState;)Z

    move-result p0

    return p0
.end method

.method public needDelayReconnect()Z
    .registers 4

    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsShelfSupport()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    if-eqz v0, :cond_f

    return v1

    :cond_f
    invoke-static {}, Lcom/android/common/config/FeatureOption;->getSIsSupportOplusAssistantKeepAlive()Z

    move-result v0

    if-nez v0, :cond_16

    return v1

    :cond_16
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-nez v0, :cond_1b

    return v1

    :cond_1b
    sget-object v0, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->INSTANCE:Lcom/android/launcher3/dragndrop/DragOverWindowClient;

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragOverWindowClient;->dragServerBinderAlive()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->isResumed()Z

    move-result p0

    if-nez p0, :cond_2e

    move v1, v2

    :cond_2e
    return v1
.end method

.method public final onAttachedToWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_1b
    return-void
.end method

.method public final onDestroyed()V
    .registers 4

    const-string v0, "LauncherClient"

    const-string v1, "onDestroyed"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayProxy;->onDestory()V

    :cond_12
    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/overlay/OverlayKeepAliveService;->stopKeepAliveImmediately(Landroid/app/Activity;)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_17} :catch_18

    goto :goto_1e

    :catch_18
    move-exception v1

    const-string v2, "onDestory exception, message:"

    invoke-static {v2, v1, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :goto_1e
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->disconnectBySelf(Z)V

    sget-object v0, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    const/4 v1, 0x0

    if-eqz v0, :cond_2c

    sput-object v1, Lcom/google/android/libraries/gsa/launcherclient/OverlayService;->sInstance:Lcom/google/android/libraries/gsa/launcherclient/OverlayService;

    :cond_2c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragInterfaceManager:Lcom/android/launcher3/dragndrop/DragInterfaceManager;

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/android/launcher3/dragndrop/DragInterfaceManager;->unBindDragSever()V

    :cond_33
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_3c

    sget-object v2, Lcom/android/overlay/ShelfService;->INSTANCE:Lcom/android/overlay/ShelfService;

    invoke-virtual {v2, v0}, Lcom/android/overlay/ShelfService;->unBindShelfServices(Landroid/content/Context;)V

    :cond_3c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz v0, :cond_83

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistAppStatusListener:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenSwitchObserver:Landroid/database/ContentObserver;

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isExpTablet()Z

    move-result v0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDisableShelfSlideDownObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDisableShelfSlideDownObserver:Landroid/database/ContentObserver;

    :cond_67
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    invoke-interface {v0, v2}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->removeOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mProfileChangeListener:Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/BaseActivity;->removeMultiWindowModeChangedListener(Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;)V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mMultiWindowModeChangedListener:Lcom/android/launcher3/BaseActivity$MultiWindowModeChangedListener;

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    :cond_83
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    if-eqz v0, :cond_8c

    invoke-virtual {v0}, Lcom/android/overlay/OverlayCallbackProxy;->destory()V

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlayCallback:Lcom/android/overlay/OverlayCallbackProxy;

    :cond_8c
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_92

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    :cond_92
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    if-eqz v0, :cond_98

    iput-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    :cond_98
    return-void
.end method

.method public final onDetachedFromWindow()V
    .registers 2

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V

    :cond_8
    return-void
.end method

.method public onGestureSwipeUp(Ljava/lang/String;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0, p1}, Lcom/android/overlay/OverlayProxy;->onGestureSwipeUp(Ljava/lang/String;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_f

    goto :goto_17

    :catch_f
    move-exception p0

    const-string p1, "onGestureSwipeUp exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_17
    :goto_17
    return-void
.end method

.method public final onPause()V
    .registers 3

    const-string v0, "onPause"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_34

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v0, :cond_34

    :try_start_19
    sget v0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_24

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onPause()V

    goto :goto_34

    :cond_24
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v0, p0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_2b} :catch_2c

    goto :goto_34

    :catch_2c
    move-exception p0

    const-string v0, "onPause exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method public onRecentsAnimationFinished(Landroid/os/Bundle;)Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationFinished(Landroid/os/Bundle;)Z

    move-result p0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_f

    return p0

    :cond_e
    return v0

    :catch_f
    move-exception p0

    const-string p1, "onRecentsAnimationFinished exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    return v0
.end method

.method public onRecentsAnimationStart()V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationStart()V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string v0, "onRecentsAnimationStart exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onRecentsAnimationSurfaceSave(Landroid/os/Bundle;)V
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c

    goto :goto_14

    :catch_c
    move-exception p0

    const-string p1, "onRecentsAnimationSurfaceSave exception, message:"

    const-string v0, "LauncherClient"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_14
    :goto_14
    return-void
.end method

.method public final onResume()V
    .registers 6

    const-string v0, "onResume exception, message:"

    const-string v1, "LauncherClient"

    const-string v2, "onResume"

    invoke-direct {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v2, :cond_6d

    iget v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_6d

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz v2, :cond_6d

    :try_start_1d
    sget v2, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->sApiVersion:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_28

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v2}, Lcom/android/overlay/OverlayProxy;->onResume()V

    goto :goto_2f

    :cond_28
    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    iget v3, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    invoke-virtual {v2, v3}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V

    :goto_2f
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    invoke-static {v2}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getThreadPriority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, -0xa

    if-le v2, v3, :cond_50

    return-void

    :cond_50
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startKeepAlive(Z)V
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_54} :catch_69
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1d .. :try_end_54} :catch_55

    goto :goto_6d

    :catch_55
    move-exception p0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6d

    :catch_69
    move-exception p0

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public final onStart()V
    .registers 5

    const-string v0, "onStart"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v1, :cond_57

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v1

    const-string v2, "LauncherClient"

    if-eqz v1, :cond_2a

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz v1, :cond_57

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_57

    :try_start_1f
    invoke-virtual {v1, v0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_57

    :catch_23
    move-exception p0

    const-string v0, "onStart exception, message: "

    invoke-static {v0, p0, v2}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_57

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_3d

    :try_start_30
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->onStart()V
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_35} :catch_36

    goto :goto_57

    :catch_36
    move-exception p0

    const-string v0, "onStart exception, message:"

    invoke-static {v0, p0, v2}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_57

    :cond_3d
    invoke-static {}, Lcom/android/common/config/FeatureOption;->isRLMDomesticLightOS()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/util/n;

    invoke-direct {v1, p0}, Lcom/android/quickstep/util/n;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_57

    :cond_54
    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->connectIfNecessary(Ljava/lang/String;)V

    :cond_57
    :goto_57
    return-void
.end method

.method public final onStop()V
    .registers 4

    const-string v0, "onStop"

    invoke-direct {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->logLifecycle(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDestroyed:Z

    if-nez v0, :cond_4e

    invoke-static {}, Lcom/android/common/config/FeatureOption;->isSupportGoogleAssistant()Z

    move-result v0

    const-string v1, "LauncherClient"

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivityState:I

    iget-object v2, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-eqz v2, :cond_4e

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p0, :cond_4e

    :try_start_1f
    invoke-virtual {v2, v0}, Lcom/android/overlay/OverlayProxy;->setActivityState(I)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1f .. :try_end_22} :catch_23

    goto :goto_4e

    :catch_23
    move-exception p0

    const-string v0, "onStop exception, message: "

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_4e

    :cond_2a
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_4e

    :try_start_30
    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->endScroll()V

    :cond_3f
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v0}, Lcom/android/overlay/OverlayProxy;->onStop()V

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->stopKeepAlive()V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_30 .. :try_end_47} :catch_48

    goto :goto_4e

    :catch_48
    move-exception p0

    const-string v0, "onStop exception, message:"

    invoke-static {v0, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_4e
    :goto_4e
    return-void
.end method

.method public onViewAlphaChanged(F)V
    .registers 5

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    const-string v1, "LauncherClient"

    if-eqz v0, :cond_d

    const/high16 v0, 0x3f800000  # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_21

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onViewAlphaChanged progress: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    :try_start_21
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_33

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onViewAlphaChanged(F)V
    :try_end_2c
    .catch Landroid/os/RemoteException; {:try_start_21 .. :try_end_2c} :catch_2d

    goto :goto_33

    :catch_2d
    move-exception p0

    const-string p1, "onViewAlphaChanged exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_33
    :goto_33
    return-void
.end method

.method public openAlphaOverlay()V
    .registers 3

    const-string v0, "LauncherClient"

    const-string v1, "openAlphaOverlay"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_1c

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0}, Lcom/android/overlay/OverlayProxy;->openAlphaOverlay()V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    goto :goto_1c

    :catch_16
    move-exception p0

    const-string v1, "openAlphaOverlay exception, message:"

    invoke-static {v1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_1c
    :goto_1c
    return-void
.end method

.method public reconnectIfNecessary()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    const-string v1, "LauncherClient"

    if-nez v0, :cond_c

    const-string p0, "reconnectIfNecessary() mActivity is null !"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isOverviewState()Z

    move-result v0

    const-wide/16 v2, 0x1f4

    if-nez v0, :cond_2a

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->needDelayReconnect()Z

    move-result v0

    if-eqz v0, :cond_1b

    goto :goto_2a

    :cond_1b
    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/coui/appcompat/reddot/a;

    invoke-direct {v1, p0}, Lcom/coui/appcompat/reddot/a;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_2a
    :goto_2a
    const-string v0, "handleMessage: isOverviewState  or assistant stopped, delayed."

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/quickstep/c1;

    invoke-direct {v1, p0}, Lcom/android/quickstep/c1;-><init>(Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public setAssistScreenShowing(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mAssistScreenShowing:Z

    return-void
.end method

.method public setDragCallback(Lcom/android/launcher3/dragndrop/IDragCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mDragCallback:Lcom/android/launcher3/dragndrop/IDragCallback;

    return-void
.end method

.method public setFlags(Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;)V
    .registers 2

    iget p1, p1, Lcom/google/android/libraries/gsa/launcherclient/StaticInteger;->mData:I

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mFlags:I

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    return-void
.end method

.method public final setLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eq v0, p1, :cond_2b

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_c

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    goto :goto_2b

    :cond_c
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result p1

    if-eqz p1, :cond_2b

    :try_start_12
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_28

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/android/overlay/OverlayProxy;->windowDetached(Z)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_1f} :catch_20

    goto :goto_28

    :catch_20
    move-exception p1

    const-string v0, "setLayoutParams exception, message:"

    const-string v1, "LauncherClient"

    invoke-static {v0, p1, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    :cond_28
    :goto_28
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    :cond_2b
    :goto_2b
    return-void
.end method

.method public final setOverlay(Lcom/android/overlay/OverlayProxy;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    if-nez p1, :cond_9

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->setServiceState(I)V

    goto :goto_10

    :cond_9
    iget-object p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-eqz p1, :cond_10

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->exchangeConfig()V

    :cond_10
    :goto_10
    return-void
.end method

.method public setPreloaded(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    if-eq v0, p1, :cond_15

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz v0, :cond_15

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    iget p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    const/4 p1, 0x1

    and-int/2addr p0, p1

    if-eqz p0, :cond_11

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    invoke-interface {v0, p1}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    :cond_15
    return-void
.end method

.method public final setScroll(F)V
    .registers 4

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    const-string v1, "LauncherClient"

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    if-eqz v0, :cond_21

    :try_start_14
    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {p0, p1}, Lcom/android/overlay/OverlayProxy;->onScroll(F)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_19} :catch_1a

    goto :goto_4d

    :catch_1a
    move-exception p0

    const-string p1, "setScroll exception, message:"

    invoke-static {p1, p0, v1}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_4d

    :cond_21
    const-string p1, "setScroll but isConnect: "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " isAssistScreenEnable: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " mIsScrolling: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4d
    return-void
.end method

.method public setScrolling(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsOverlayScrolling:Z

    return-void
.end method

.method public setServiceState(I)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setServiceState, state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LauncherClient"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    if-eq v0, p1, :cond_2d

    iput p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mServiceState:I

    iget-boolean v0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIdPreload:Z

    if-eqz v0, :cond_2d

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mScrollCallback:Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;

    if-eqz p0, :cond_2d

    const/4 v0, 0x1

    and-int/2addr p1, v0

    if-eqz p1, :cond_29

    goto :goto_2a

    :cond_29
    const/4 v0, 0x0

    :goto_2a
    invoke-interface {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/IScrollCallback;->onServiceStateChanged(Z)V

    :cond_2d
    return-void
.end method

.method public startKeepAlive(Z)V
    .registers 2

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0, p1}, Lcom/android/overlay/OverlayKeepAliveService;->startKeepAlive(Landroid/app/Activity;Z)V

    return-void
.end method

.method public final startScroll()V
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startScroll(Z)V

    return-void
.end method

.method public final startScroll(Z)V
    .registers 6

    const-string v0, "LauncherClient"

    const-string v1, "startScroll"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_11

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_11
    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_55

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, v1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isAssistScreenEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_55

    iget-boolean v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    if-eqz v1, :cond_25

    if-eqz p1, :cond_55

    :cond_25
    const/4 p1, 0x1

    :try_start_26
    invoke-virtual {p0, p1}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->startKeepAlive(Z)V

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mOverlay:Lcom/android/overlay/OverlayProxy;

    invoke-virtual {v1}, Lcom/android/overlay/OverlayProxy;->startScroll()V

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {v1}, Lcom/android/launcher/Launcher;->getLauncher(Landroid/content/Context;)Lcom/android/launcher/Launcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getFloatingIconContainer()Lcom/android/launcher3/views/FloatingIconViewContainer;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/launcher3/views/FloatingIconViewContainer;->interruptRecentBySomeReason(ILjava/util/function/Consumer;)V

    sget-object v1, Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy;->INSTANCE:Lcom/android/launcher3/anim/iconsurfacemanager/IconSurfaceManagerProxy$INSTANCE;

    invoke-virtual {v1}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;

    invoke-interface {v1, p1}, Lcom/android/launcher3/anim/iconsurfacemanager/IIconSurfaceManager;->forceReleaseIconSurface(Z)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsZeroAlphaOverlay:Z
    :try_end_4d
    .catch Landroid/os/RemoteException; {:try_start_26 .. :try_end_4d} :catch_4e

    goto :goto_83

    :catch_4e
    move-exception p0

    const-string p1, "startScroll exception, message:"

    invoke-static {p1, p0, v0}, Lcom/android/common/util/s;->a(Ljava/lang/String;Landroid/os/RemoteException;Ljava/lang/String;)V

    goto :goto_83

    :cond_55
    const-string v1, "startScroll forceScroll: "

    const-string v2, " ,isResumed: "

    invoke-static {v1, p1, v2}, Landroidx/slice/widget/a;->a(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isResumed()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,isConnected: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->isConnected()Z

    move-result v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ,mIsScrolling: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mIsScrolling:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_83
    return-void
.end method

.method public stopKeepAlive()V
    .registers 1

    iget-object p0, p0, Lcom/google/android/libraries/gsa/launcherclient/LauncherClient;->mActivity:Landroid/app/Activity;

    invoke-static {p0}, Lcom/android/overlay/OverlayKeepAliveService;->stopKeepAlive(Landroid/app/Activity;)V

    return-void
.end method
