.class public Lcom/android/launcher/locateaction/FindLocateIconFunction;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/launcher/ILauncherLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;
    }
.end annotation


# static fields
.field private static final ADD_VIEW_DELAY_MILLIS:I = 0x64

.field public static final CANCEL:I = 0x2

.field public static final END:I = 0x1

.field private static final FOLDER_SNAP_TO_PAGE_DURATION:I = 0x258

.field private static final ICON_ANIMATION_DURATION:I = 0x168

.field public static final METHOD_ON_OVERVIEW_TOGGLE_PRESSED:Ljava/lang/String; = "onOverviewTogglePressed"

.field private static final METHOD_REQUEST_LOCATE_ITEM_INFO:Ljava/lang/String; = "request_locate_item_info"

.field private static final OPEN_FOLDER_DURATION:I = 0x12c

.field public static final PAUSE:I = 0x3

.field public static final START:I = 0x0

.field public static final STOP:I = 0x4

.field private static final TAG:Ljava/lang/String; = "FindLocateIcon"

.field private static final WORK_SNAP_TO_PAGE_DURATION:I = 0xa

.field public static sState:I = -0x1


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mComponentName:Landroid/content/ComponentName;

.field private final mContext:Landroid/content/Context;

.field private mFindLocateIconView:Landroid/view/View;

.field private mFindView:Landroid/view/View;

.field private mIconVIew:Landroid/view/View;

.field private mIsDisable:Z

.field private mIsDrawerLocation:Z

.field private mIsFindFolder:Z

.field private mIsFirstLocateAndDrag:Z

.field private mLauncher:Lcom/android/launcher/Launcher;

.field private mLocationMessage:Ljava/lang/String;

.field private mStatusBarManager:Landroid/app/StatusBarManager;

.field private onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;


# direct methods
.method public constructor <init>(Lcom/android/launcher/Launcher;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDrawerLocation:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFirstLocateAndDrag:Z

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDisable:Z

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$starRemoveViewAnimation$10(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I

    move-result p0

    return p0
.end method

.method public static synthetic access$100(Lcom/android/launcher/locateaction/FindLocateIconFunction;ILandroidx/recyclerview/widget/LinearLayoutManager;)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p0

    return p0
.end method

.method public static synthetic access$200(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$300(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$400(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    return-void
.end method

.method public static synthetic access$500(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->addView(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic access$600(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->starRemoveViewAnimation()V

    return-void
.end method

.method public static synthetic access$700(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->restore()V

    return-void
.end method

.method private addView(Landroid/view/View;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "FindLocateIcon"

    if-nez v0, :cond_e

    const-string p0, "iconView.getTag()  is  null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_e
    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v0, :cond_18

    const-string p0, "bitmap  is  null"

    invoke-static {v1, p0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_18
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/statistics/LauncherStatistics;->getInstance(Landroid/content/Context;)Lcom/android/statistics/LauncherStatistics;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/statistics/LauncherStatistics;->setLocateInformation(Lcom/android/launcher3/model/data/ItemInfo;)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v1

    if-eqz v1, :cond_75

    iget-object v2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0160

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    const v3, 0x7f0a03ab

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getFindViewRect(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v5, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    iget-object v6, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v5, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget v3, v3, Landroid/graphics/Rect;->left:I

    iput v3, v4, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0, p1, v0, v2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->startAddViewAnimation(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    :cond_75
    return-void
.end method

.method private animationIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 5

    if-eqz p1, :cond_37

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v0, 0x5

    if-ne p2, v0, :cond_11

    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    const v0, 0x7f0100bc

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    goto :goto_1a

    :cond_11
    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    const v0, 0x7f010075

    invoke-static {p2, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p2

    :goto_1a
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v0

    if-nez v0, :cond_21

    return-void

    :cond_21
    if-eqz p2, :cond_34

    sget-object v0, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {p3, p2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    new-instance p3, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;

    invoke-direct {p3, p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$4;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_37

    :cond_34
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :cond_37
    :goto_37
    return-void
.end method

.method public static synthetic b(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToPageOpenFolder$3(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$restore$13()V

    return-void
.end method

.method public static synthetic d(Lcom/android/launcher/locateaction/FindLocateIconFunction;ZI)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$onResume$0(ZI)V

    return-void
.end method

.method private drawerPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;I)I
    .registers 4

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    if-eqz v0, :cond_17

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/launcher/settings/LauncherSettingsUtils;->isShowIndicateAppIndrawerMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_17

    iget p0, p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->mNumAppsPerRow:I

    mul-int/lit8 p0, p0, 0x2

    add-int/2addr p2, p0

    :cond_17
    return p2
.end method

.method private drawerViewItem(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I
    .registers 5

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewList(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Ljava/util/List;

    move-result-object p1

    const/4 v0, 0x0

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_47

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    if-eqz v1, :cond_44

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_44

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v1, v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, v1, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v2, v2, Lcom/android/launcher3/model/data/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_44

    goto :goto_48

    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_47
    const/4 v0, -0x1

    :goto_48
    return v0
.end method

.method private drawerViewList(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/launcher3/allapps/AllAppsRecyclerView;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->getApps()Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I
    .registers 3

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p0

    sub-int/2addr p1, p0

    return p1
.end method

.method public static synthetic e(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$onStart$12()V

    return-void
.end method

.method private executeFindIcon(Landroid/view/View;)V
    .registers 6

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    if-eqz p1, :cond_3a

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIconVIew:Landroid/view/View;

    invoke-static {p1}, Lcom/android/common/util/BitmapUtils;->getSoftBitmapOfView(Landroid/view/View;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    if-eqz v0, :cond_19

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->addView(Landroid/view/View;)V

    goto :goto_3d

    :cond_19
    invoke-static {}, Lcom/android/launcher3/anim/light/AppLaunchAnimUtil;->getAnimDuration()J

    move-result-wide v0

    long-to-float v0, v0

    sget v1, Lcom/android/launcher3/anim/AppLaunchAnimSpeedHandler;->sDurationScale:F

    mul-float/2addr v0, v1

    float-to-long v0, v0

    sget-object v2, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v2}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v2

    new-instance v3, Lcom/android/launcher/locateaction/FindLocateIconFunction$3;

    invoke-direct {v3, p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$3;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V

    const-wide/16 p0, 0x168

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p0

    const-wide/16 v0, 0x64

    add-long/2addr p0, v0

    invoke-virtual {v2, v3, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_3d

    :cond_3a
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_3d
    return-void
.end method

.method private executeLocationIcon()V
    .registers 6

    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLocationMessage:Ljava/lang/String;

    new-instance v2, Lcom/android/launcher/locateaction/FindLocateIconFunction$1;

    invoke-direct {v2, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$1;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    invoke-virtual {v2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_9b

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9b

    new-instance v1, Landroid/content/ComponentName;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v3, v3, Lcom/android/launcher/locateaction/FindItemInfo;->mPackageName:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object v2, v2, Lcom/android/launcher/locateaction/FindItemInfo;->mClassName:Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    sget-object v1, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v2, Landroidx/core/content/res/d;

    invoke-direct {v2, p0, v0}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindView:Landroid/view/View;

    if-eqz v0, :cond_98

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9b

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/model/data/ItemInfo;

    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->container:I

    const/4 v2, 0x3

    const/4 v3, 0x6

    const/16 v4, -0x65

    if-eq v1, v4, :cond_7f

    const/16 v4, -0x64

    if-eq v1, v4, :cond_5f

    goto :goto_9b

    :cond_5f
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_7b

    if-ne v1, v3, :cond_66

    goto :goto_7b

    :cond_66
    if-ne v1, v2, :cond_6c

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceFolderView(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_9b

    :cond_6c
    const/16 v2, 0x64

    if-ne v1, v2, :cond_74

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopCardView(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_9b

    :cond_74
    const/4 v2, 0x5

    if-ne v1, v2, :cond_9b

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopWidgetView(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_9b

    :cond_7b
    :goto_7b
    invoke-direct {p0, v0, v4}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopView(Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_9b

    :cond_7f
    iget v1, v0, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    if-eqz v1, :cond_94

    if-ne v1, v3, :cond_86

    goto :goto_94

    :cond_86
    if-ne v1, v2, :cond_8c

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceFolderView(Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_9b

    :cond_8c
    const/16 v0, 0xca

    if-ne v1, v0, :cond_9b

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceOtherView()V

    goto :goto_9b

    :cond_94
    :goto_94
    invoke-direct {p0, v0, v4}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceDeskTopView(Lcom/android/launcher3/model/data/ItemInfo;I)V

    goto :goto_9b

    :cond_98
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkSpaceOtherView()V

    :cond_9b
    :goto_9b
    return-void
.end method

.method public static synthetic f(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$goToState$5(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method private findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;
    .registers 3

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private findDrawerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->goToState(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V

    return-void
.end method

.method private findFolderPage(Landroid/view/View;)I
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->folderViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPosition(Ljava/util/List;)I

    move-result p0

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_1a

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p1

    div-int/2addr p0, p1

    goto :goto_27

    :cond_1a
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderPagedView;->itemsPerPage()I

    move-result p1

    div-int/2addr p0, p1

    :goto_27
    return p0
.end method

.method private findFolderPosition(Ljava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_46

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v2}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    invoke-virtual {v3}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isComponentName(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_43

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    iget v2, v2, Lcom/android/launcher3/model/data/ItemInfo;->itemType:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_43

    move v0, v1

    goto :goto_46

    :cond_43
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_46
    :goto_46
    return v0
.end method

.method private findFolderPositionView(Landroid/view/View;)Landroid/view/View;
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->folderViews(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPosition(Ljava/util/List;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/model/data/WorkspaceItemInfo;

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_1d

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    goto :goto_27

    :cond_1d
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/launcher3/folder/Folder;->getViewForInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Landroid/view/View;

    move-result-object p0

    :goto_27
    return-object p0
.end method

.method private findWorkSpaceDeskTopCardView(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_11
    return-void
.end method

.method private findWorkSpaceDeskTopView(Lcom/android/launcher3/model/data/ItemInfo;I)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_25

    const/16 v1, -0x64

    if-ne p2, v1, :cond_16

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    goto :goto_25

    :cond_16
    iget p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_22

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_25

    :cond_22
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :cond_25
    :goto_25
    return-void
.end method

.method private findWorkSpaceDeskTopWidgetView(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_11
    return-void
.end method

.method private findWorkSpaceFolderView(Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-nez v0, :cond_5

    return-void

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getWorkspace()Lcom/android/launcher3/OplusWorkspace;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToPageOpenFolder(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V

    :cond_11
    return-void
.end method

.method private findWorkSpaceOtherView()V
    .registers 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFindFolder:Z

    invoke-static {}, Lcom/android/launcher/mode/LauncherModeManager;->getInstance()Lcom/android/launcher/mode/LauncherModeManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher/mode/LauncherModeManager;->isInDrawerMode()Z

    move-result v1

    if-eqz v1, :cond_50

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v1, :cond_2a

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    if-eqz v1, :cond_2a

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->switchToTab(I)V

    :cond_2a
    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_56

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v0

    if-eqz v0, :cond_56

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getActiveRecyclerView()Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v1}, Lcom/android/launcher/Launcher;->getStateManager()Lcom/android/launcher3/statemanager/StateManager;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerView(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V

    goto :goto_56

    :cond_50
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setDragLayerLocationIcon(Z)V

    :cond_56
    :goto_56
    return-void
.end method

.method private findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;
    .registers 3

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getHomescreenIconByItemId(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method private folderViews(Landroid/view/View;)Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/WorkspaceItemInfo;",
            ">;"
        }
    .end annotation

    instance-of p0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz p0, :cond_f

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0

    :cond_f
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p0

    iget-object p0, p0, Lcom/android/launcher3/folder/Folder;->mInfo:Lcom/android/launcher3/model/data/FolderInfo;

    iget-object p0, p0, Lcom/android/launcher3/model/data/FolderInfo;->contents:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic g(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToPageOpenFolder$2(Landroid/view/View;)V

    return-void
.end method

.method private getFindViewRect(Landroid/view/View;)Landroid/graphics/Rect;
    .registers 2

    new-instance p0, Landroid/graphics/Rect;

    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    invoke-virtual {p1, p0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    return-object p0
.end method

.method public static getState()I
    .registers 1

    sget v0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->sState:I

    return v0
.end method

.method private goToState(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/statemanager/StateManager;)V
    .registers 5

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/exceptionmonitor/util/b;

    invoke-direct {v1, p0, p2, p1}, Lcom/android/exceptionmonitor/util/b;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static synthetic h(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToFolderPage$8(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic i(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToPage$9(Landroid/view/View;)V

    return-void
.end method

.method private isComponentName(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1a

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1a

    const/4 p0, 0x1

    goto :goto_1b

    :cond_1a
    const/4 p0, 0x0

    :goto_1b
    return p0
.end method

.method private isStart()Z
    .registers 1

    invoke-static {}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->getState()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public static synthetic j(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$snapToFolderPage$7(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic k(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;Lcom/android/launcher3/folder/Folder;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$openFolder$6(Landroid/view/View;Lcom/android/launcher3/folder/Folder;I)V

    return-void
.end method

.method public static synthetic l(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$goToState$4(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method private synthetic lambda$executeLocationIcon$1(Ljava/util/List;)V
    .registers 5

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mComponentName:Landroid/content/ComponentName;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher/locateaction/FindItemInfo;

    iget-object p1, p1, Lcom/android/launcher/locateaction/FindItemInfo;->mItemType:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/android/exceptionmonitor/util/ViewLostCheckHelper;->locateSearchItemInWorkspace(Landroid/content/ComponentName;Landroid/os/UserHandle;Ljava/lang/String;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindView:Landroid/view/View;

    return-void
.end method

.method private synthetic lambda$goToState$4(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->smoothScrollToPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    return-void
.end method

.method private synthetic lambda$goToState$5(Lcom/android/launcher3/statemanager/StateManager;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/LauncherState;->ALL_APPS:Lcom/android/launcher3/LauncherState;

    new-instance v1, Landroidx/core/content/res/d;

    invoke-direct {v1, p0, p2}, Landroidx/core/content/res/d;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V

    invoke-static {v1}, Lcom/android/launcher3/anim/AnimatorListeners;->forEndCallback(Ljava/lang/Runnable;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, p2, p0}, Lcom/android/launcher3/statemanager/StateManager;->goToState(Lcom/android/launcher3/statemanager/BaseState;ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private synthetic lambda$onResume$0(ZI)V
    .registers 4

    if-eqz p1, :cond_9

    const-string p1, "locationState:"

    const-string v0, "FindLocateIcon"

    invoke-static {p1, p2, v0}, Lcom/android/common/config/i;->a(Ljava/lang/String;ILjava/lang/String;)V

    :cond_9
    if-nez p2, :cond_10

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setDragLayerLocationIcon(Z)V

    goto :goto_1f

    :cond_10
    sget-object p1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FIND_LOCATE_ICON:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {p1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceEnd(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setDragLayerLocationIcon(Z)V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->restore()V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->removeView()V

    :goto_1f
    return-void
.end method

.method private synthetic lambda$onStart$12()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDisable:Z

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mStatusBarManager:Landroid/app/StatusBarManager;

    const/high16 v0, 0x1600000

    invoke-virtual {p0, v0}, Landroid/app/StatusBarManager;->disable(I)V

    return-void
.end method

.method private synthetic lambda$openFolder$6(Landroid/view/View;Lcom/android/launcher3/folder/Folder;I)V
    .registers 5

    const/4 v0, 0x2

    if-ne p3, v0, :cond_7

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->snapToFolderPage(Landroid/view/View;)V

    goto :goto_d

    :cond_7
    if-nez p3, :cond_d

    const/4 p0, 0x0

    invoke-virtual {p2, p0}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    :cond_d
    :goto_d
    return-void
.end method

.method private synthetic lambda$restore$13()V
    .registers 4

    const-string/jumbo v0, "restoreStatusBar:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDisable:Z

    const-string v2, "FindLocateIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDisable:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mStatusBarManager:Landroid/app/StatusBarManager;

    if-eqz v0, :cond_1c

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDisable:Z

    invoke-virtual {v0, v1}, Landroid/app/StatusBarManager;->disable(I)V

    :cond_1c
    return-void
.end method

.method private synthetic lambda$snapToFolderPage$7(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$snapToFolderPage$8(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$snapToPage$9(Landroid/view/View;)V
    .registers 2

    if-eqz p1, :cond_6

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_9

    :cond_6
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_9
    return-void
.end method

.method private synthetic lambda$snapToPageOpenFolder$2(Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->openFolder(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$snapToPageOpenFolder$3(Landroid/view/View;)V
    .registers 5

    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/locateaction/d;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p1, v2}, Lcom/android/launcher/locateaction/d;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    const-wide/16 p0, 0x12c

    invoke-virtual {v0, v1, p0, p1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private synthetic lambda$starRemoveViewAnimation$10(Landroid/animation/ValueAnimator;Landroid/animation/ValueAnimator;)V
    .registers 4

    iget-object p2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    if-eqz p2, :cond_12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_15

    :cond_12
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/4 p2, 0x0

    cmpl-float p1, p1, p2

    if-nez p1, :cond_27

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onEnd()V

    :cond_27
    return-void
.end method

.method private synthetic lambda$startAddViewAnimation$11(Landroid/animation/ValueAnimator;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 7

    iget-object p5, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    if-eqz p5, :cond_12

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p5, v0}, Landroid/view/View;->setAlpha(F)V

    goto :goto_15

    :cond_12
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_15
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 p5, 0x3f800000  # 1.0f

    cmpl-float p1, p1, p5

    if-nez p1, :cond_38

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result p1

    if-eqz p1, :cond_38

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_35

    const/4 p1, 0x4

    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_35
    invoke-direct {p0, p2, p3, p4}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->animationIcon(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    :cond_38
    return-void
.end method

.method public static synthetic m(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/animation/ValueAnimator;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 6

    invoke-direct/range {p0 .. p5}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$startAddViewAnimation$11(Landroid/animation/ValueAnimator;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public static synthetic n(Lcom/android/launcher/locateaction/FindLocateIconFunction;Ljava/util/List;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->lambda$executeLocationIcon$1(Ljava/util/List;)V

    return-void
.end method

.method private onCancel()V
    .registers 3

    const-string v0, "FindLocateIcon"

    const-string/jumbo v1, "onCancel"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_12

    invoke-static {v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    :cond_12
    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_19

    invoke-interface {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_19
    return-void
.end method

.method private onEnd()V
    .registers 3

    const-string v0, "FindLocateIcon"

    const-string/jumbo v1, "onEnd"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_13

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_13
    return-void
.end method

.method private onPause()V
    .registers 3

    const-string v0, "FindLocateIcon"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_13

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_13
    return-void
.end method

.method private onStart()V
    .registers 5

    const-string v0, "FindLocateIcon"

    const-string/jumbo v1, "onStart"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    sget-object v1, Lcom/oplus/quickstep/utils/TracePrintUtil$Type;->FIND_LOCATE_ICON:Lcom/oplus/quickstep/utils/TracePrintUtil$Type;

    invoke-static {v1}, Lcom/oplus/quickstep/utils/TracePrintUtil;->asyncTraceBegin(Lcom/oplus/quickstep/utils/TracePrintUtil$Type;)V

    iget-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz v1, :cond_18

    invoke-interface {v1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_18
    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/launcher3/util/DisplayController;->getNavigationMode(Landroid/content/Context;)Lcom/android/launcher3/util/DisplayController$NavigationMode;

    move-result-object v0

    sget-object v1, Lcom/android/launcher3/util/DisplayController$NavigationMode;->THREE_BUTTONS:Lcom/android/launcher3/util/DisplayController$NavigationMode;

    if-ne v0, v1, :cond_2f

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/recyclerview/widget/a;

    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/a;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setHideGuidePage()V

    :cond_2f
    sget-object v0, Lcom/android/launcher3/util/Executors;->MAIN_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    invoke-virtual {v0}, Lcom/android/launcher3/util/LooperExecutor;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;

    invoke-direct {v1, p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$5;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private onStop()V
    .registers 3

    const-string v0, "FindLocateIcon"

    const-string/jumbo v1, "onStop"

    invoke-static {v0, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x4

    invoke-static {v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setState(I)V

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    if-eqz p0, :cond_13

    invoke-interface {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;->onLocateStateChange(I)V

    :cond_13
    return-void
.end method

.method private openFolder(Landroid/view/View;)V
    .registers 4

    instance-of v0, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v0, :cond_c

    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    goto :goto_13

    :cond_c
    move-object v0, p1

    check-cast v0, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {v0}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object v0

    :goto_13
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v1

    if-nez v1, :cond_1a

    return-void

    :cond_1a
    invoke-virtual {v0}, Lcom/android/launcher3/AbstractFloatingView;->isOpen()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isDestroyed()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->isAnimateClosing()Z

    move-result v1

    if-nez v1, :cond_2f

    invoke-virtual {v0}, Lcom/android/launcher3/folder/Folder;->animateOpen()V

    :cond_2f
    new-instance v1, Lcom/android/launcher/q0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/launcher/q0;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;Lcom/android/launcher3/folder/Folder;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/folder/Folder;->setOnFolderStateChangedListener(Lcom/android/launcher3/folder/Folder$OnFolderStateChangedListener;)V

    return-void
.end method

.method private removeView()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mBitmap:Landroid/graphics/Bitmap;

    :cond_a
    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    iget-object v2, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    invoke-virtual {v0, v2}, Lcom/android/launcher3/OplusDragLayer;->removeView(Landroid/view/View;)V

    iput-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    :cond_23
    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIconVIew:Landroid/view/View;

    if-eqz v0, :cond_2d

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iput-object v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIconVIew:Landroid/view/View;

    :cond_2d
    return-void
.end method

.method private restore()V
    .registers 3

    sget-object v0, Lcom/android/launcher3/util/Executors;->UI_HELPER_EXECUTOR:Lcom/android/launcher3/util/LooperExecutor;

    new-instance v1, Landroidx/appcompat/widget/g;

    invoke-direct {v1, p0}, Landroidx/appcompat/widget/g;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;)V

    invoke-virtual {v0, v1}, Lcom/android/launcher3/util/LooperExecutor;->execute(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setDragLayerLocationIcon(Z)V

    return-void
.end method

.method private setDragLayerLocationIcon(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object p0

    iput-boolean p1, p0, Lcom/android/launcher3/OplusDragLayer;->isLocationIcon:Z

    :cond_12
    return-void
.end method

.method private setHideGuidePage()V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher/guide/GuidePageManager;->isGuideShowing()Z

    move-result v0

    if-eqz v0, :cond_32

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object v0

    const-string/jumbo v1, "on_pause"

    invoke-virtual {v0, v1}, Lcom/android/launcher/guide/GuidePageManager;->hideGuidePage(Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFirstLocateAndDrag:Z

    if-eqz v0, :cond_32

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsFirstLocateAndDrag:Z

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher/Launcher;->getGuidePageManager()Lcom/android/launcher/guide/GuidePageManager;

    move-result-object p0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher/guide/GuidePageManager;->mIsFirstDrag:Z

    :cond_32
    return-void
.end method

.method private setHideOverlay()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object p0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {p0}, Lcom/android/launcher3/Launcher;->getOverlayManager()Lcom/android/systemui/plugins/shared/LauncherOverlayManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/shared/LauncherOverlayManager;->hideOverlay(Z)V

    :cond_14
    return-void
.end method

.method private setOnLocationListener(Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onLocationListener:Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;

    return-void
.end method

.method public static setState(I)V
    .registers 1

    sput p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->sState:I

    return-void
.end method

.method private smoothScrollToPosition(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)V
    .registers 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result v1

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewItem(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I

    move-result v2

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v3

    if-nez v3, :cond_15

    return-void

    :cond_15
    const/4 v3, -0x1

    if-le v2, v3, :cond_38

    if-le v2, v1, :cond_26

    invoke-virtual {p1, v2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->smoothScrollToPosition(I)V

    new-instance v1, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;

    invoke-direct {v1, p0, p1, v2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction$2;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Lcom/android/launcher3/allapps/AllAppsRecyclerView;ILandroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    goto :goto_3b

    :cond_26
    invoke-direct {p0, v2, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->drawerViewPosition(ILandroidx/recyclerview/widget/LinearLayoutManager;)I

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findDrawerItemView(Landroidx/recyclerview/widget/LinearLayoutManager;I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_34

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_3b

    :cond_34
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    goto :goto_3b

    :cond_38
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_3b
    return-void
.end method

.method private snapToFolderPage(Landroid/view/View;)V
    .registers 7

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPage(Landroid/view/View;)I

    move-result v0

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findFolderPositionView(Landroid/view/View;)Landroid/view/View;

    move-result-object v1

    instance-of v2, p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    if-eqz v2, :cond_15

    check-cast p1, Lcom/android/launcher3/folder/big/BigFolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    goto :goto_1d

    :cond_15
    check-cast p1, Lcom/android/launcher3/folder/FolderIcon;

    invoke-virtual {p1}, Lcom/android/launcher3/folder/FolderIcon;->getFolder()Lcom/android/launcher3/folder/Folder;

    move-result-object p1

    iget-object p1, p1, Lcom/android/launcher3/folder/Folder;->mContent:Lcom/android/launcher3/folder/FolderPagedView;

    :goto_1d
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v3

    if-nez v3, :cond_24

    return-void

    :cond_24
    if-eqz v1, :cond_60

    const/4 v3, 0x1

    const/16 v4, 0x258

    if-eqz v2, :cond_4e

    if-gtz v0, :cond_38

    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-lez v2, :cond_34

    goto :goto_38

    :cond_34
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_63

    :cond_38
    :goto_38
    invoke-virtual {p1}, Lcom/android/launcher3/PagedView;->getCurrentPage()I

    move-result v2

    if-eq v0, v2, :cond_4a

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance v0, Lcom/android/launcher/locateaction/d;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/launcher/locateaction/d;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_63

    :cond_4a
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_63

    :cond_4e
    if-lez v0, :cond_5c

    invoke-virtual {p1, v0, v4}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance v0, Lcom/android/launcher/locateaction/c;

    invoke-direct {v0, p0, v1, v3}, Lcom/android/launcher/locateaction/c;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, v0}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    goto :goto_63

    :cond_5c
    invoke-direct {p0, v1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeFindIcon(Landroid/view/View;)V

    goto :goto_63

    :cond_60
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_63
    return-void
.end method

.method private snapToPage(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object v0

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance p2, Lcom/android/launcher/locateaction/c;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/android/launcher/locateaction/c;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private snapToPageOpenFolder(Lcom/android/launcher3/OplusWorkspace;Lcom/android/launcher3/model/data/ItemInfo;)V
    .registers 5

    iget v0, p2, Lcom/android/launcher3/model/data/ItemInfo;->id:I

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->findWorkspaceView(Lcom/android/launcher3/OplusWorkspace;I)Landroid/view/View;

    move-result-object v0

    iget p2, p2, Lcom/android/launcher3/model/data/ItemInfo;->screenId:I

    invoke-virtual {p1, p2}, Lcom/android/launcher3/Workspace;->getPageIndexForScreenId(I)I

    move-result p2

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v1

    if-nez v1, :cond_13

    return-void

    :cond_13
    const/16 v1, 0xa

    invoke-virtual {p1, p2, v1}, Lcom/android/launcher3/PagedView;->snapToPage(II)Z

    new-instance p2, Lcom/android/launcher/locateaction/d;

    const/4 v1, 0x0

    invoke-direct {p2, p0, v0, v1}, Lcom/android/launcher/locateaction/d;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/view/View;I)V

    invoke-virtual {p1, p2}, Lcom/android/launcher3/PagedView;->setOnPageTransitionEndCallback(Ljava/lang/Runnable;)V

    return-void
.end method

.method private starRemoveViewAnimation()V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_31

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_32

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_2e

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Landroidx/core/view/h;

    invoke-direct {v1, p0, v0}, Landroidx/core/view/h;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/animation/ValueAnimator;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_31

    :cond_2e
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :cond_31
    :goto_31
    return-void

    :array_32
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private startAddViewAnimation(Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V
    .registers 12

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mFindLocateIconView:Landroid/view/View;

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    invoke-virtual {v0}, Lcom/android/launcher3/Launcher;->getDragLayer()Lcom/android/launcher3/OplusDragLayer;

    move-result-object v0

    if-eqz v0, :cond_3a

    if-eqz p1, :cond_3a

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_3e

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    if-eqz v0, :cond_36

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    sget-object v1, Lcom/android/common/util/OplusLauncherAnimUtils$Interpolators;->PATH_2:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v7, Lcom/android/launcher/locateaction/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, v0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/android/launcher/locateaction/a;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Landroid/animation/ValueAnimator;Landroid/view/View;Lcom/android/launcher3/model/data/ItemInfo;Landroid/view/View;)V

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_3d

    :cond_36
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    goto :goto_3d

    :cond_3a
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    :goto_3d
    return-void

    :array_3e
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method


# virtual methods
.method public onBackPressed(Lcom/android/launcher/Launcher;)Z
    .registers 3
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->isStart()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x0

    return p0

    :cond_8
    invoke-super {p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onBackPressed(Lcom/android/launcher/Launcher;)Z

    move-result p0

    return p0
.end method

.method public final onBusEvent(Lcom/android/launcher/locateaction/LocateEvent;)V
    .registers 5

    const-string v0, "getMethod"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMethod()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FindLocateIcon"

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v2, "request_locate_item_info"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_34

    const-string/jumbo p1, "onOverviewTogglePressed"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_30

    goto :goto_57

    :cond_30
    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    goto :goto_57

    :cond_34
    const-string v0, "locationMessage"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onStart()V

    invoke-virtual {p1}, Lcom/android/launcher/locateaction/LocateEvent;->getMessage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLocationMessage:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDrawerLocation:Z

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setHideOverlay()V

    :goto_57
    return-void
.end method

.method public onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 3
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->register(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "statusbar"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mStatusBarManager:Landroid/app/StatusBarManager;

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-static {}, Lcom/oplus/quickstep/events/EventBus;->getDefault()Lcom/oplus/quickstep/events/EventBus;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/oplus/quickstep/events/EventBus;->unregister(Ljava/lang/Object;)V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mLauncher:Lcom/android/launcher/Launcher;

    return-void
.end method

.method public onHomeKeyPressed(Lcom/android/launcher/Launcher;)V
    .registers 2
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-super {p0, p1}, Lcom/android/launcher/ILauncherLifecycleObserver;->onHomeKeyPressed(Lcom/android/launcher/Launcher;)V

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    return-void
.end method

.method public onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onPause()V

    return-void
.end method

.method public onPostConfigurationChanged(Lcom/android/launcher/Launcher;Landroid/content/res/Configuration;)V
    .registers 3
    .param p1  # Lcom/android/launcher/Launcher;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onCancel()V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setDragLayerLocationIcon(Z)V

    return-void
.end method

.method public onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 5
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    sget-object p1, Lcom/android/common/debug/LogUtils;->INSTANCE:Lcom/android/common/debug/LogUtils;

    invoke-static {}, Lcom/android/common/debug/LogUtils;->isAnyLogOpen()Z

    move-result p1

    if-eqz p1, :cond_16

    const-string/jumbo v0, "onResume mIsDrawerLo:"

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDrawerLocation:Z

    const-string v2, "FindLocateIcon"

    invoke-static {v0, v1, v2}, Lcom/android/common/config/e;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_16
    iget-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDrawerLocation:Z

    if-eqz v0, :cond_1d

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->executeLocationIcon()V

    :cond_1d
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/launcher/locateaction/FindLocateIconFunction;->mIsDrawerLocation:Z

    new-instance v0, Lcom/android/launcher/locateaction/b;

    invoke-direct {v0, p0, p1}, Lcom/android/launcher/locateaction/b;-><init>(Lcom/android/launcher/locateaction/FindLocateIconFunction;Z)V

    invoke-direct {p0, v0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->setOnLocationListener(Lcom/android/launcher/locateaction/FindLocateIconFunction$OnLocationListener;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2
    .param p1  # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Lcom/android/launcher/locateaction/FindLocateIconFunction;->onStop()V

    return-void
.end method
