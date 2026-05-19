.class public Lcom/oplus/zoom/ui/ZoomUiManager;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomUIManager"


# instance fields
.field private final mAms:Landroid/app/OplusActivityManager;

.field private mConfigurationManager:Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;

.field private final mContext:Landroid/content/Context;

.field private final mFloatHandleController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

.field private final mImpl:Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;

.field private mMainHandler:Landroid/os/Handler;

.field private mSettingObserver:Lcom/oplus/zoom/ui/common/ZoomUiObserver;

.field private final mTipsController:Lcom/oplus/zoom/ui/tips/TipsController;

.field private mZoomController:Lcom/oplus/zoom/IZoom;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/os/Handler;Lcom/oplus/zoom/IZoom;Lcom/android/wm/shell/common/ShellExecutor;)V
    .registers 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;-><init>(Lcom/oplus/zoom/ui/ZoomUiManager;Lcom/oplus/zoom/ui/ZoomUiManager$1;)V

    iput-object v0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mImpl:Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;

    iput-object p1, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mMainHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mZoomController:Lcom/oplus/zoom/IZoom;

    new-instance p4, Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-direct {p4, p1, p3, p0, p5}, Lcom/oplus/zoom/ui/tips/TipsController;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oplus/zoom/ui/ZoomUiManager;Lcom/android/wm/shell/common/ShellExecutor;)V

    iput-object p4, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mTipsController:Lcom/oplus/zoom/ui/tips/TipsController;

    new-instance p4, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    invoke-direct {p4, p1, p2, p3, p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;-><init>(Landroid/content/Context;Lcom/android/wm/shell/common/SyncTransactionQueue;Landroid/os/Handler;Lcom/oplus/zoom/ui/ZoomUiManager;)V

    iput-object p4, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mFloatHandleController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    new-instance p2, Lcom/oplus/zoom/ui/common/ZoomUiObserver;

    invoke-direct {p2, p1, p0}, Lcom/oplus/zoom/ui/common/ZoomUiObserver;-><init>(Landroid/content/Context;Lcom/oplus/zoom/ui/ZoomUiManager;)V

    iput-object p2, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mSettingObserver:Lcom/oplus/zoom/ui/common/ZoomUiObserver;

    new-instance p2, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;

    invoke-direct {p2, p1, p0}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;-><init>(Landroid/content/Context;Lcom/oplus/zoom/ui/ZoomUiManager;)V

    iput-object p2, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mConfigurationManager:Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;

    new-instance p1, Landroid/app/OplusActivityManager;

    invoke-direct {p1}, Landroid/app/OplusActivityManager;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mAms:Landroid/app/OplusActivityManager;

    return-void
.end method

.method public static synthetic access$100(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mConfigurationManager:Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/floathandle/FloatHandleController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mFloatHandleController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    return-object p0
.end method

.method public static synthetic access$300(Lcom/oplus/zoom/ui/ZoomUiManager;)Lcom/oplus/zoom/ui/tips/TipsController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mTipsController:Lcom/oplus/zoom/ui/tips/TipsController;

    return-object p0
.end method


# virtual methods
.method public asZoomUi()Lcom/oplus/zoom/ui/IZoomUiManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mImpl:Lcom/oplus/zoom/ui/ZoomUiManager$ZoomUiManagerImpl;

    return-object p0
.end method

.method public getActivityManager()Landroid/app/OplusActivityManager;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mAms:Landroid/app/OplusActivityManager;

    return-object p0
.end method

.method public getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mFloatHandleController:Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    return-object p0
.end method

.method public getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;
    .registers 1

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mTipsController:Lcom/oplus/zoom/ui/tips/TipsController;

    return-object p0
.end method

.method public requestChangeZoomState(I)V
    .registers 3

    iget-object p0, p0, Lcom/oplus/zoom/ui/ZoomUiManager;->mZoomController:Lcom/oplus/zoom/IZoom;

    const/4 v0, -0x1

    invoke-interface {p0, v0, p1}, Lcom/oplus/zoom/IZoom;->requestChangeZoomState(II)V

    return-void
.end method
