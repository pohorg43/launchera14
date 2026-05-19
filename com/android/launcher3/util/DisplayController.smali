.class public Lcom/android/launcher3/util/DisplayController;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Lcom/android/launcher3/util/SafeCloseable;
.implements Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NewApi"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/util/DisplayController$NavigationMode;,
        Lcom/android/launcher3/util/DisplayController$PortraitSize;,
        Lcom/android/launcher3/util/DisplayController$Info;,
        Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;
    }
.end annotation


# static fields
.field private static final ACTION_OVERLAY_CHANGED:Ljava/lang/String; = "android.intent.action.OVERLAY_CHANGED"

.field public static final CHANGE_ACTIVE_SCREEN:I = 0x1

.field public static final CHANGE_ALL:I = 0x1f

.field public static final CHANGE_DENSITY:I = 0x4

.field public static final CHANGE_NAVIGATION_MODE:I = 0x10

.field public static final CHANGE_ROTATION:I = 0x2

.field public static final CHANGE_SUPPORTED_BOUNDS:I = 0x8

.field public static final INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/util/MainThreadInitializedObject<",
            "Lcom/android/launcher3/util/DisplayController;",
            ">;"
        }
    .end annotation
.end field

.field private static final NAV_BAR_INTERACTION_MODE_RES_NAME:Ljava/lang/String; = "config_navBarInteractionMode"

.field private static final TAG:Ljava/lang/String; = "DisplayController"

.field private static final TARGET_OVERLAY_PACKAGE:Ljava/lang/String; = "android"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDM:Landroid/hardware/display/DisplayManager;

.field private mDestroyed:Z

.field private mInfo:Lcom/android/launcher3/util/DisplayController$Info;

.field private mInfoMap:Lcom/android/common/util/OplusLruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/common/util/OplusLruCache<",
            "Lcom/android/common/util/DisplayKey;",
            "Lcom/android/launcher3/util/DisplayController$Info;",
            ">;"
        }
    .end annotation
.end field

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

.field private final mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/MainThreadInitializedObject;

    sget-object v1, Lcom/android/launcher3/x;->c:Lcom/android/launcher3/x;

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;-><init>(Lcom/android/launcher3/util/MainThreadInitializedObject$ObjectProvider;)V

    sput-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    new-instance v1, Lcom/android/launcher3/g;

    invoke-direct {v1, p0}, Lcom/android/launcher3/g;-><init>(Lcom/android/launcher3/util/DisplayController;)V

    invoke-direct {v0, v1}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;-><init>(Ljava/util/function/Consumer;)V

    iput-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mReceiver:Lcom/android/launcher3/util/SimpleBroadcastReceiver;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    new-instance v2, Lcom/android/common/util/OplusLruCache;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lcom/android/common/util/OplusLruCache;-><init>(I)V

    iput-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    sget-object v2, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {v3, p1}, Lcom/oplus/quickstep/navigation/NavigationController;->initBeforeRegistered(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManager;

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v3, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v1

    sget-boolean v3, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4c

    const/4 v3, 0x2

    invoke-virtual {p1, v1, v3, v4}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v3, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    goto :goto_57

    :cond_4c
    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    const-string v3, "android.intent.action.CONFIGURATION_CHANGED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, p1, v3}, Lcom/android/launcher3/util/SimpleBroadcastReceiver;->register(Landroid/content/Context;[Ljava/lang/String;)V

    :goto_57
    const-string v3, "android.intent.action.OVERLAY_CHANGED"

    filled-new-array {v3}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "android"

    invoke-static {v4, v3}, Lcom/android/launcher3/util/PackageManagerHelper;->getPackageFilter(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/IntentFilter;

    move-result-object v3

    invoke-static {p1, v0, v3}, Lcom/android/common/util/ContextExtKt;->asyncRegisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    iget-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    new-instance v3, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {p0, v1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-direct {v3, v4, v1, v0, v5}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    iput-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    invoke-static {p1}, Lcom/android/common/util/DisplayKey;->from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;

    move-result-object p1

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v0, p1, v1}, Lcom/android/common/util/OplusLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/navigation/NavigationController;->setModeChangeListener(Lcom/oplus/quickstep/navigation/NavigationController$ModeChangeListener;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->lambda$handleInfoChange$0(Landroid/content/Context;I)V

    return-void
.end method

.method public static synthetic access$200(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController;->parseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController;
    .registers 2

    new-instance v0, Lcom/android/launcher3/util/DisplayController;

    invoke-direct {v0, p0}, Lcom/android/launcher3/util/DisplayController;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static synthetic c(Lcom/android/launcher3/util/DisplayController;Landroid/content/Intent;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->onIntent(Landroid/content/Intent;)V

    return-void
.end method

.method private getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;
    .registers 3

    sget-boolean v0, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v0, :cond_7

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    goto :goto_d

    :cond_7
    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->createDisplayContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object p0

    :goto_d
    return-object p0
.end method

.method public static getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 2

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0, p0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/util/DisplayController;

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    return-object p0
.end method

.method private handleInfoChange(Landroid/view/Display;)Z
    .registers 11
    .annotation build Landroidx/annotation/AnyThread;
    .end annotation

    sget-object v0, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/window/WindowManagerProxy;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->getDisplayInfoContext(Landroid/view/Display;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/DisplayDensityUtils;->getDefaultDisplayContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/common/util/DisplayKey;->from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;

    move-result-object v3

    sget-object v4, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v4

    const-string v5, "DisplayController"

    if-eqz v4, :cond_52

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleInfoChange context = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "; newKey = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "display = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_52
    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    invoke-virtual {v4, v3}, Lcom/android/common/util/OplusLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-direct {p0, v4, v3, v2}, Lcom/android/launcher3/util/DisplayController;->isValidInfoForRotationOrSize(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/common/util/DisplayKey;Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_66

    const-string v4, "handleInfoChange: will set newInfo as null, which is invalidate;"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :cond_66
    if-nez v4, :cond_86

    new-instance v4, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v4, v2, p1, v0, v6}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleInfoChange cache miss: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_9c

    :cond_86
    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v6, v3}, Lcom/android/common/util/DisplayUtils;->isOrientationMatch(Landroid/util/DisplayMetrics;Lcom/android/common/util/DisplayKey;)Z

    move-result v6

    if-nez v6, :cond_9c

    const-string v4, "handleInfoChange cache hit, but orientation mismatch,create new Info"

    invoke-static {v5, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v4, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v4, v2, p1, v0, v6}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    :cond_9c
    :goto_9c
    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v6

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v7

    if-ne v6, v7, :cond_b4

    iget v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v6, v6, v7

    if-nez v6, :cond_b4

    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v6, v7, :cond_d1

    :cond_b4
    new-instance v4, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v4, v2, p1, v0, v6}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mInfo new create  = "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d1
    iget-object p1, v4, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    iget v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    iget v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eq v6, v7, :cond_e3

    or-int/lit8 p1, p1, 0x2

    :cond_e3
    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v6

    invoke-static {v1}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v7

    if-ne v6, v7, :cond_f5

    iget v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_f7

    :cond_f5
    or-int/lit8 p1, p1, 0x4

    :cond_f7
    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-object v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-eq v6, v7, :cond_ff

    or-int/lit8 p1, p1, 0x10

    :cond_ff
    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    iget-object v7, v1, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-interface {v6, v7}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_119

    iget-object v6, v4, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v7, v6, Landroid/graphics/Point;->x:I

    iget-object v1, v1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v8, v1, Landroid/graphics/Point;->x:I

    if-ne v7, v8, :cond_119

    iget v6, v6, Landroid/graphics/Point;->y:I

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-eq v6, v1, :cond_11b

    :cond_119
    or-int/lit8 p1, p1, 0x8

    :cond_11b
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    const-string v6, "QuickStep"

    if-eqz v1, :cond_13f

    const-string v1, "handleInfoChange change = "

    invoke-static {v1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", newInfo = "

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v5, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_13f
    if-eqz p1, :cond_160

    iput-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/common/config/ScreenInfo;->initScreenData(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v1, v3, v4}, Lcom/android/common/util/OplusLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v3, Lcom/android/launcher/badge/c;

    invoke-direct {v3, p0, v2, p1}, Lcom/android/launcher/badge/c;-><init>(Lcom/android/launcher3/util/DisplayController;Landroid/content/Context;I)V

    invoke-virtual {v1, v3}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    return v0

    :cond_160
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p1

    if-eqz p1, :cond_178

    const-string p1, "handleInfoChange mInfo = "

    invoke-static {p1}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v6, v5, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_178
    const/4 p0, 0x0

    return p0
.end method

.method public static hasNavigationBar()Z
    .registers 1

    sget-object v0, Lcom/android/launcher3/util/DisplayController;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v0}, Lcom/android/launcher3/util/MainThreadInitializedObject;->getNoCreate()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/util/DisplayController;

    if-nez v0, :cond_17

    invoke-static {}, Lcom/android/common/LauncherApplication;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->parseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_17
    invoke-virtual {v0}, Lcom/android/launcher3/util/DisplayController;->getInfo()Lcom/android/launcher3/util/DisplayController$Info;

    move-result-object v0

    iget-object v0, v0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v0, v0, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private isValidInfoForRotationOrSize(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/common/util/DisplayKey;Landroid/content/Context;)Z
    .registers 11

    sget-object p0, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p0

    const-string v0, "DisplayController"

    if-eqz p0, :cond_26

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isValidInfoForRotationOrSize(), info: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "; key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_26
    const/4 v1, 0x0

    if-eqz p1, :cond_f6

    if-nez p2, :cond_2d

    goto/16 :goto_f6

    :cond_2d
    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    invoke-virtual {p2}, Lcom/android/common/util/DisplayKey;->getRotation()I

    move-result v3

    if-eq v2, v3, :cond_36

    return v1

    :cond_36
    iget-object v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    if-nez v2, :cond_3b

    return v1

    :cond_3b
    invoke-virtual {p2}, Lcom/android/common/util/DisplayKey;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-nez v3, :cond_42

    return v1

    :cond_42
    iget v4, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    if-ne v4, v5, :cond_f6

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-eq v4, v3, :cond_54

    goto/16 :goto_f6

    :cond_54
    iget-object v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    invoke-static {v3, p3}, Lcom/android/common/util/DisplaySizeUtils;->getDisplaySizePoint(Ljava/lang/String;Landroid/content/Context;)Landroid/graphics/Point;

    move-result-object p3

    if-eqz p0, :cond_70

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isValidInfoForRotationOrSize(), sizeFromPhysical: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_70
    if-nez p3, :cond_73

    return v1

    :cond_73
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, p3, Landroid/graphics/Point;->x:I

    if-ne v3, v4, :cond_7f

    iget v5, v2, Landroid/graphics/Point;->y:I

    iget v6, p3, Landroid/graphics/Point;->y:I

    if-eq v5, v6, :cond_89

    :cond_7f
    iget v5, p3, Landroid/graphics/Point;->y:I

    if-ne v3, v5, :cond_f6

    iget v3, v2, Landroid/graphics/Point;->y:I

    if-eq v3, v4, :cond_89

    goto/16 :goto_f6

    :cond_89
    invoke-static {}, Lcom/android/common/util/ScreenUtils;->hasLargeDisplayFeatures()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_c7

    iget v3, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-eqz v3, :cond_b1

    if-eq v3, v4, :cond_9d

    const/4 v5, 0x2

    if-eq v3, v5, :cond_b1

    const/4 v5, 0x3

    if-eq v3, v5, :cond_9d

    return v1

    :cond_9d
    invoke-static {p3}, Lcom/android/common/util/DisplaySizeUtils;->isTraditionalPortrait(Landroid/graphics/Point;)Z

    move-result p3

    if-eqz p3, :cond_aa

    iget p3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le p3, v2, :cond_c5

    goto :goto_c7

    :cond_aa
    iget p3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge p3, v2, :cond_c5

    goto :goto_c7

    :cond_b1
    invoke-static {p3}, Lcom/android/common/util/DisplaySizeUtils;->isTraditionalPortrait(Landroid/graphics/Point;)Z

    move-result p3

    if-eqz p3, :cond_be

    iget p3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ge p3, v2, :cond_c5

    goto :goto_c7

    :cond_be
    iget p3, v2, Landroid/graphics/Point;->x:I

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-le p3, v2, :cond_c5

    goto :goto_c7

    :cond_c5
    move p3, v1

    goto :goto_c8

    :cond_c7
    :goto_c7
    move p3, v4

    :goto_c8
    if-eqz p3, :cond_ef

    invoke-virtual {p2}, Lcom/android/common/util/DisplayKey;->getRotation()I

    move-result p3

    iget v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne p3, v2, :cond_ef

    invoke-virtual {p2}, Lcom/android/common/util/DisplayKey;->getBounds()Landroid/graphics/Rect;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p3

    iget-object v2, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne p3, v2, :cond_ef

    invoke-virtual {p2}, Lcom/android/common/util/DisplayKey;->getBounds()Landroid/graphics/Rect;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    iget-object p1, p1, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    iget p1, p1, Landroid/graphics/Point;->y:I

    if-ne p2, p1, :cond_ef

    move v1, v4

    :cond_ef
    if-eqz p0, :cond_f6

    const-string p0, "isValidInfoForRotationOrSize: isValidInfo: "

    invoke-static {p0, v1, v0}, Lcom/android/common/config/b;->a(Ljava/lang/String;ZLjava/lang/String;)V

    :cond_f6
    :goto_f6
    return v1
.end method

.method private synthetic lambda$handleInfoChange$0(Landroid/content/Context;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/util/DisplayController;->notifyChange(Landroid/content/Context;I)V

    return-void
.end method

.method private notifyChange(Landroid/content/Context;I)V
    .registers 7

    const-string/jumbo v0, "notifyChange(), flags="

    const-string v1, "; caller = "

    invoke-static {v0, p2, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0xa

    const-string v2, "DisplayController"

    invoke-static {v1, v0, v2}, Lcom/android/common/util/k;->a(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    if-eqz v0, :cond_19

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v0, p1, v1, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    :cond_19
    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_20
    if-ge v1, v0, :cond_32

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    iget-object v3, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-interface {v2, p1, v3, p2}, Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;->onDisplayInfoChanged(Landroid/content/Context;Lcom/android/launcher3/util/DisplayController$Info;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_32
    return-void
.end method

.method private onIntent(Landroid/content/Intent;)V
    .registers 8

    iget-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    if-eqz v0, :cond_5

    return-void

    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.OVERLAY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, "DisplayController"

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RRO overlay changed: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_54

    :cond_2a
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_53

    iget-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v4, v0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    iget v5, p1, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v4, v4, v5

    if-nez v4, :cond_54

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v0

    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    if-eq v0, p1, :cond_53

    goto :goto_54

    :cond_53
    move v1, v3

    :cond_54
    :goto_54
    if-eqz v1, :cond_66

    const-string p1, "Configuration changed, notifying listeners"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mDM:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object p1

    if-eqz p1, :cond_66

    invoke-direct {p0, p1}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)Z

    :cond_66
    return-void
.end method

.method private static parseNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;
    .registers 1

    sget-object p0, Lcom/oplus/quickstep/navigation/NavigationController;->INSTANCE:Lcom/oplus/quickstep/navigation/NavigationController$INSTANCE;

    invoke-virtual {p0}, Lcom/oplus/quickstep/utils/SingletonHolder;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/oplus/quickstep/navigation/NavigationController;

    invoke-virtual {p0}, Lcom/oplus/quickstep/navigation/NavigationController;->calculateSpecificNavigationMode()Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public addChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public clearCache()V
    .registers 3

    const-string v0, "DisplayController"

    :try_start_2
    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    invoke-virtual {p0}, Lcom/android/common/util/OplusLruCache;->evictAll()V

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result p0

    if-eqz p0, :cond_19

    const-string p0, "clearCache"

    invoke-static {v0, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_12} :catch_13

    goto :goto_19

    :catch_13
    move-exception p0

    const-string v1, "clearCache error, "

    invoke-static {v1, p0, v0}, Lcom/android/common/debug/d;->a(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    :cond_19
    :goto_19
    return-void
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/util/DisplayController;->mDestroyed:Z

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_a
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .registers 3

    const-string v0, ""

    invoke-virtual {p0, v0, p1}, Lcom/android/launcher3/util/DisplayController;->dump(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .registers 6

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "DisplayController.Info:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->displayId:Ljava/lang/String;

    const-string v2, "\trotation="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/m;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    const-string v2, "\tfontScale="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/e;->a(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    const-string v2, "\tdensityDpi="

    invoke-static {v0, v1, p2, p1, v2}, Lcom/android/launcher3/k;->a(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tnavigationMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcurrentSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->currentSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tcutout="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->cutout:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\tmetrics="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\tsupportedBounds="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController$Info;->supportedBounds:Ljava/util/Set;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method public getInfo()Lcom/android/launcher3/util/DisplayController$Info;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    return-object p0
.end method

.method public getInfo(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$Info;
    .registers 9

    invoke-static {p1}, Lcom/android/common/util/DisplayKey;->from(Landroid/content/Context;)Lcom/android/common/util/DisplayKey;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    invoke-virtual {v1, v0}, Lcom/android/common/util/OplusLruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/util/DisplayController$Info;

    sget-object v2, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result v2

    const-string v3, "DisplayController"

    if-eqz v2, :cond_32

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getInfo, key: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "; info: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_32
    invoke-direct {p0, v1, v0, p1}, Lcom/android/launcher3/util/DisplayController;->isValidInfoForRotationOrSize(Lcom/android/launcher3/util/DisplayController$Info;Lcom/android/common/util/DisplayKey;Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_3e

    const-string v1, "getInfo: will set info as null, which is invalidate;"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_3e
    if-eqz v1, :cond_64

    iget-object v4, v1, Lcom/android/launcher3/util/DisplayController$Info;->metrics:Landroid/util/DisplayMetrics;

    invoke-static {v4, v0}, Lcom/android/common/util/DisplayUtils;->isOrientationMatch(Landroid/util/DisplayMetrics;Lcom/android/common/util/DisplayKey;)Z

    move-result v4

    if-eqz v4, :cond_5f

    if-eqz v2, :cond_5e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getInfo cache hit, info: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5e
    return-object v1

    :cond_5f
    const-string v1, "getInfo cache hit, but orientation mismatch, ignore cache!"

    invoke-static {v3, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_64
    invoke-virtual {p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    sget-object v4, Lcom/android/launcher3/util/window/WindowManagerProxy;->INSTANCE:Lcom/android/launcher3/util/MainThreadInitializedObject;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/MainThreadInitializedObject;->get(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/util/window/WindowManagerProxy;

    new-instance v5, Lcom/android/launcher3/util/DisplayController$Info;

    invoke-virtual {v4, p1}, Lcom/android/launcher3/util/window/WindowManagerProxy;->estimateInternalDisplayBounds(Landroid/content/Context;)Landroid/util/ArrayMap;

    move-result-object v6

    invoke-direct {v5, p1, v1, v4, v6}, Lcom/android/launcher3/util/DisplayController$Info;-><init>(Landroid/content/Context;Landroid/view/Display;Lcom/android/launcher3/util/window/WindowManagerProxy;Landroid/util/ArrayMap;)V

    if-eqz v2, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInfo context = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "; create info"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_97
    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfoMap:Lcom/android/common/util/OplusLruCache;

    invoke-virtual {p0, v0, v5}, Lcom/android/common/util/OplusLruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 9
    .annotation build Landroid/annotation/TargetApi;
        value = 0x1f
    .end annotation

    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    const-wide/16 v0, 0x8

    const-string v2, "DisplayController#configChange"

    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {p1}, Lcom/android/common/util/DisplaySizeUtils;->tryCleanDisplaySizeCache(Landroid/content/res/Configuration;)V

    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v2

    const-string/jumbo v3, "onConfigurationChanged() : "

    invoke-static {v3}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {p1}, Lcom/android/common/debug/LogUtils;->getPrintInfo(Landroid/content/res/Configuration;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "QuickStep"

    const-string v5, "DisplayController"

    invoke-static {v4, v5, v3}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result v4

    if-ne v3, v4, :cond_5a

    iget v3, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v4, v4, Lcom/android/launcher3/util/DisplayController$Info;->fontScale:F

    cmpl-float v3, v3, v4

    if-nez v3, :cond_5a

    invoke-virtual {v2}, Landroid/view/Display;->getRotation()I

    move-result v3

    iget-object v4, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget v5, v4, Lcom/android/launcher3/util/DisplayController$Info;->rotation:I

    if-ne v3, v5, :cond_5a

    invoke-static {v4}, Lcom/android/launcher3/util/DisplayController$Info;->access$100(Lcom/android/launcher3/util/DisplayController$Info;)Lcom/android/launcher3/util/DisplayController$PortraitSize;

    move-result-object v3

    new-instance v4, Lcom/android/launcher3/util/DisplayController$PortraitSize;

    iget v5, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-direct {v4, v5, v6}, Lcom/android/launcher3/util/DisplayController$PortraitSize;-><init>(II)V

    invoke-virtual {v3, v4}, Lcom/android/launcher3/util/DisplayController$PortraitSize;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    :cond_5a
    invoke-direct {p0, v2}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)Z

    :cond_5d
    iget-object v2, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    iget-object v2, v2, Lcom/android/launcher3/util/DisplayController$Info;->navigationMode:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    iget-boolean v2, v2, Lcom/android/launcher3/util/DisplayController$NavigationMode;->hasGestures:Z

    if-nez v2, :cond_6a

    sget-object v2, Lcom/oplus/quickstep/learning/NotificationHelper;->INSTANCE:Lcom/oplus/quickstep/learning/NotificationHelper;

    invoke-virtual {v2}, Lcom/oplus/quickstep/learning/NotificationHelper;->cancelNotification()V

    :cond_6a
    iget p1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mInfo:Lcom/android/launcher3/util/DisplayController$Info;

    invoke-static {p0}, Lcom/android/launcher3/util/DisplayController$Info;->access$000(Lcom/android/launcher3/util/DisplayController$Info;)I

    move-result p0

    if-eq p1, p0, :cond_77

    invoke-static {}, Lcom/oplus/systemui/shared/system/DisplayDensitySharedLibUtils;->clearBaseDensityCache()V

    :cond_77
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    return-void
.end method

.method public final onLowMemory()V
    .registers 1

    return-void
.end method

.method public onModeChange(Lcom/android/launcher3/util/DisplayController$NavigationMode;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "onModeChange: new mode is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickStep"

    const-string v1, "DisplayController"

    invoke-static {v0, v1, p1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->updateDisplayInfo()Z

    return-void
.end method

.method public removeChangeListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .registers 2

    iget-object p0, p0, Lcom/android/launcher3/util/DisplayController;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setPriorityListener(Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mPriorityListener:Lcom/android/launcher3/util/DisplayController$DisplayInfoChangeListener;

    return-void
.end method

.method public updateDisplayInfo()Z
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/util/DisplayController;->updateDisplayInfo(Z)Z

    move-result p0

    return p0
.end method

.method public updateDisplayInfo(Z)Z
    .registers 7

    invoke-static {}, Lcom/android/common/config/ContextFetcher;->getInstance()Lcom/android/common/config/ContextFetcher;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/common/config/ContextFetcher;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateDisplayInfo, forceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", context: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickStep"

    const-string v3, "DisplayController"

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_54

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v0

    if-eqz v0, :cond_4a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateDisplayInfo: display: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4a
    if-eqz p1, :cond_4f

    invoke-virtual {p0}, Lcom/android/launcher3/util/DisplayController;->clearCache()V

    :cond_4f
    invoke-direct {p0, v1}, Lcom/android/launcher3/util/DisplayController;->handleInfoChange(Landroid/view/Display;)Z

    move-result p0

    return p0

    :cond_54
    const-string/jumbo p0, "updateDisplayInfo, display is null, will return false;"

    invoke-static {v2, v3, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public updateWindowContext(Landroid/content/Context;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    const-string v1, "DisplayController"

    const-string v2, "QuickStep"

    if-nez v0, :cond_e

    const-string p0, "Do not update windowContext，mWindowContext is null"

    invoke-static {v2, v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    const-string/jumbo v0, "updateWindowContext()"

    invoke-static {v2, v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    const-class v0, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    sget-boolean v1, Lcom/android/launcher3/Utilities;->ATLEAST_S:Z

    if-eqz v1, :cond_35

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->createWindowContext(Landroid/view/Display;ILandroid/os/Bundle;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/util/DisplayController;->mWindowContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/content/Context;->registerComponentCallbacks(Landroid/content/ComponentCallbacks;)V

    :cond_35
    return-void
.end method
