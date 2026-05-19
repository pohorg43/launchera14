.class public Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ZoomUiConfiguration"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mDensityDpi:I

.field private mDisplayId:I

.field private mFontScale:F

.field private mNightMode:Z

.field private final mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oplus/zoom/ui/ZoomUiManager;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-direct {p0}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->init()V

    return-void
.end method

.method private init()V
    .registers 2

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mNightMode:Z

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDisplayId:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDensityDpi:I

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->fontScale:F

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mFontScale:F

    invoke-static {}, Lcom/oplus/zoom/common/ZoomDisplayController;->getInstance()Lcom/oplus/zoom/common/ZoomDisplayController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oplus/zoom/common/ZoomDisplayController;->registerDisplayChangedListener(Lcom/oplus/zoom/common/ZoomDisplayController$DisplayChangedListener;)V

    return-void
.end method

.method private isNightMode(Landroid/content/res/Configuration;)Z
    .registers 2

    iget p0, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p0, p0, 0x30

    const/16 p1, 0x20

    if-ne p0, p1, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .registers 6

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDisplayId:I

    const-string v0, "ZoomUiConfiguration"

    const-string v1, "onConfigChanged()"

    invoke-static {v0, v1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    iget-object v3, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onConfigurationChange(Landroid/content/res/Configuration;)V

    iget-object v3, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oplus/zoom/ui/tips/TipsController;->hideAllTipsView()V

    iget-boolean v3, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mNightMode:Z

    if-eq v0, v3, :cond_3f

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->updateUiStyle(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->refreshFloatHandle()V

    :cond_3f
    iget v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDensityDpi:I

    if-eq v0, v1, :cond_55

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->updateUiStyle(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->relaunchFloatHandle()V

    :cond_55
    iget v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mFontScale:F

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_6d

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oplus/zoom/ui/tips/TipsController;->updateUiStyle(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->relaunchFloatHandle()V

    :cond_6d
    invoke-virtual {p0, p1}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->refreshConfiguration(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public onDisplayChanged(IILandroid/content/res/Configuration;)V
    .registers 4

    iget p2, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDisplayId:I

    if-eq p1, p2, :cond_c

    const-string p0, "ZoomUiConfiguration"

    const-string p1, "onDisplayChanged no changed in current display"

    invoke-static {p0, p1}, Lcom/oplus/zoom/ui/common/UiLogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_c
    iget-object p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/ZoomUiManager;->getTipsController()Lcom/oplus/zoom/ui/tips/TipsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oplus/zoom/ui/tips/TipsController;->hideAllTipsView()V

    iget p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDensityDpi:I

    iget p2, p3, Landroid/content/res/Configuration;->densityDpi:I

    if-ne p1, p2, :cond_24

    iget-object p0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mUiManager:Lcom/oplus/zoom/ui/ZoomUiManager;

    invoke-virtual {p0}, Lcom/oplus/zoom/ui/ZoomUiManager;->getFloatHandleController()Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    move-result-object p0

    invoke-virtual {p0, p3}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->onDisplayChanged(Landroid/content/res/Configuration;)V

    :cond_24
    return-void
.end method

.method public refreshConfiguration(Landroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->isNightMode(Landroid/content/res/Configuration;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mNightMode:Z

    iget-object v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    move-result v0

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDisplayId:I

    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mDensityDpi:I

    iget p1, p1, Landroid/content/res/Configuration;->fontScale:F

    iput p1, p0, Lcom/oplus/zoom/ui/common/ZoomUiConfigManager;->mFontScale:F

    return-void
.end method
