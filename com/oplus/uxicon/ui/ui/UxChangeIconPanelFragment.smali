.class public Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;
.super Lcom/coui/appcompat/panel/COUIPanelFragment;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;
    }
.end annotation


# static fields
.field private static final BUNDLE_KEY_APP_INFO:Ljava/lang/String; = "key_app_info"

.field private static final BUNDLE_KEY_APP_NAME:Ljava/lang/String; = "key_app_name"

.field private static final BUNDLE_KEY_COMPONENT_NAME:Ljava/lang/String; = "key_component_name"

.field private static final BUNDLE_KEY_PACKAGE_NAME:Ljava/lang/String; = "key_package_name"

.field private static final BUNDLE_KEY_PANEL_HEIGHT:Ljava/lang/String; = "key_panel_height"

.field private static final BUNDLE_KEY_USERID:Ljava/lang/String; = "key_user_id"

.field private static final MSG_INIT_ITEMS:I = 0xde

.field private static final MSG_INIT_ITEMS_AND_FETCH_ICONS:I = 0x14d

.field private static final MSG_PARSER_DONE:I = 0x3e7

.field private static final MSG_PARSER_DONE_AND_FETCH_ICONS:I = 0x6f

.field private static final OFF_SCREEN_LIMIT:I = 0x3

.field private static final PANEL_ANIM_DURATION:I = 0x0

.field private static final REFRESH_DELAY_TIME:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "UxChangeIconPanelFragment"

.field private static sCurrentPageItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lcom/oplus/uxicon/ui/util/d$a;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

.field private mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCallBack:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

.field private mCurrentPackageUserId:I

.field private mCurrentPage:I

.field private mFetchIconListTask:Lcom/oplus/uxicon/ui/ui/a;

.field private mFetchedIcons:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/d$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mIconPackCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/d$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private final mIconPackItemsHandler:Landroid/os/Handler;

.field private final mIconPackParseHandler:Landroid/os/Handler;

.field private mIconPackSize:I

.field private mLastPanelHeight:I

.field private final mLock:Ljava/lang/Object;

.field private mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;

.field private mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

.field private mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

.field private mOriginAppName:Ljava/lang/String;

.field private mOriginComponentName:Ljava/lang/String;

.field private mOriginPackageName:Ljava/lang/String;

.field private mPackNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPageLoadStartPosition:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPanelView:Landroid/view/View;

.field private mRunning:Z

.field private mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    sput-object v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->sCurrentPageItems:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    invoke-direct {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mLock:Ljava/lang/Object;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$c;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$c;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackItemsHandler:Landroid/os/Handler;

    new-instance v0, Landroid/os/Handler;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$d;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackParseHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mRunning:Z

    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPackNameList:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackCache:Ljava/util/Map;

    new-instance v1, Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mFetchedIcons:Ljava/util/List;

    const-string v1, ""

    iput-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOriginComponentName:Ljava/lang/String;

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPackageUserId:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    iput v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackSize:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPageLoadStartPosition:Ljava/util/Map;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$e;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$e;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$f;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$g;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$g;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCallBack:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    return-void
.end method

.method public static synthetic a(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Lcom/coui/appcompat/tablayout/COUITab;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->lambda$initViewPager$1(Lcom/coui/appcompat/tablayout/COUITab;I)V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/List;
    .registers 1

    sget-object v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->sCurrentPageItems:Ljava/util/List;

    return-object v0
.end method

.method public static synthetic access$1000(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPanelView:Landroid/view/View;

    return-object p0
.end method

.method public static synthetic access$102(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackSize:I

    return p1
.end method

.method public static synthetic access$1100(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackCache:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$1200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->waitAndFetchIcon(I)V

    return-void
.end method

.method public static synthetic access$1300(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/concurrent/CopyOnWriteArrayList;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object p0
.end method

.method public static synthetic access$1400(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackParseHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1500(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method public static synthetic access$1600(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mRunning:Z

    return p0
.end method

.method public static synthetic access$1602(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mRunning:Z

    return p1
.end method

.method public static synthetic access$1700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Landroid/os/Handler;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackItemsHandler:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic access$1800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Landroid/graphics/drawable/Drawable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->jumpToEditIconPanel(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic access$1900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;

    return-object p0
.end method

.method public static synthetic access$200(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)I
    .registers 1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    return p0
.end method

.method public static synthetic access$202(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;I)I
    .registers 2

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    return p1
.end method

.method public static synthetic access$300(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/a;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mFetchIconListTask:Lcom/oplus/uxicon/ui/ui/a;

    return-object p0
.end method

.method public static synthetic access$302(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Lcom/oplus/uxicon/ui/ui/a;)Lcom/oplus/uxicon/ui/ui/a;
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mFetchIconListTask:Lcom/oplus/uxicon/ui/ui/a;

    return-object p1
.end method

.method public static synthetic access$400(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->getIconPackageName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic access$500(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/a$a;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

    return-object p0
.end method

.method public static synthetic access$600(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initIconPackItems()V

    return-void
.end method

.method public static synthetic access$700(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initPackNames()V

    return-void
.end method

.method public static synthetic access$800(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPageLoadStartPosition:Ljava/util/Map;

    return-object p0
.end method

.method public static synthetic access$900(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;
    .registers 1

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    return-object p0
.end method

.method public static synthetic b(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->lambda$initView$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->lambda$startToChangeIconPanelAnim$2(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method private dismissPanel()V
    .registers 2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->dismiss()V

    :cond_f
    return-void
.end method

.method private getIconPackageName()Ljava/lang/String;
    .registers 3

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_11

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_27

    :cond_11
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    if-lez v0, :cond_25

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_27

    :cond_25
    const-string p0, ""

    :goto_27
    return-object p0
.end method

.method private initAppInfoList()V
    .registers 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$h;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initIconPackItems()V
    .registers 3

    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$j;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$j;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private initLoadStartPosition()V
    .registers 6

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz v0, :cond_1e

    const/4 v0, 0x0

    move v1, v0

    :goto_6
    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1e

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPageLoadStartPosition:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_1e
    return-void
.end method

.method private initOnBackKeyListener()V
    .registers 2

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;

    invoke-direct {v0, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$k;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-virtual {p0, v0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->setDialogOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method private initPackNames()V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPackNameList:Ljava/util/ArrayList;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_2f
    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPanelView:Landroid/view/View;

    invoke-direct {p0, v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initViewPager(Landroid/view/View;)V

    return-void
.end method

.method private initViewPager(Landroid/view/View;)V
    .registers 5

    new-instance v0, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    invoke-direct {v0}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;-><init>()V

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnLoadMoreListener:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->setListener(Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter$a;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->setPagerCount(I)V

    sget v0, Lcom/oplus/uxicon/ui/R$id;->icon_view_pager:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iput-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->setOffscreenPageLimit(I)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAdapter:Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$a;

    invoke-direct {v1, p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$a;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-virtual {v0, v1}, Lcom/oplus/uxicon/ui/ui/ViewPagerAdapter;->setRVItemChooseListener(Lcom/oplus/uxicon/ui/ui/ChooseIconAdapter$e;)V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCallBack:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->d(Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;)V

    sget v0, Lcom/oplus/uxicon/ui/R$id;->tab_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/coui/appcompat/tablayout/COUITabLayout;

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_53

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/HorizontalScrollView;->setVisibility(I)V

    :cond_53
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/tablayout/COUITabLayout;->setSelectedTabIndicatorColor(I)V

    new-instance v0, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    new-instance v2, Landroidx/core/view/a;

    invoke-direct {v2, p0}, Landroidx/core/view/a;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-direct {v0, p1, v1, v2}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;-><init>(Lcom/coui/appcompat/tablayout/COUITabLayout;Lcom/coui/appcompat/viewpager/COUIViewPager2;Lcom/coui/appcompat/tablayout/COUITabLayoutMediator$OnConfigureTabCallback;)V

    invoke-virtual {v0}, Lcom/coui/appcompat/tablayout/COUITabLayoutMediator;->a()V

    return-void
.end method

.method private jumpToEditIconPanel(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/graphics/drawable/Drawable;)V

    :cond_13
    return-void
.end method

.method private synthetic lambda$initView$0(Landroid/view/View;)V
    .registers 3

    const-string p1, "UxChangeIconPanelFragment"

    const-string v0, "second panel navi icon clicked ."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->jumpToEditIconPanel(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private lambda$initViewPager$1(Lcom/coui/appcompat/tablayout/COUITab;I)V
    .registers 4

    if-ltz p2, :cond_1a

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPackNameList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, p2, :cond_1a

    if-nez p1, :cond_d

    return-void

    :cond_d
    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPackNameList:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    iput-object p0, p1, Lcom/coui/appcompat/tablayout/COUITab;->d:Ljava/lang/CharSequence;

    invoke-virtual {p1}, Lcom/coui/appcompat/tablayout/COUITab;->d()V

    :cond_1a
    return-void
.end method

.method private static synthetic lambda$startToChangeIconPanelAnim$2(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setHeight(I)V

    return-void
.end method

.method public static newInstance(Ljava/util/concurrent/CopyOnWriteArrayList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "II)",
            "Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;"
        }
    .end annotation

    new-instance v0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;

    invoke-direct {v0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "key_app_info"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p0, "key_package_name"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_app_name"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_component_name"

    invoke-virtual {v1, p0, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "key_user_id"

    invoke-virtual {v1, p0, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "key_panel_height"

    invoke-virtual {v1, p0, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private startToChangeIconPanelAnim(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;Landroid/graphics/drawable/Drawable;)V
    .registers 7

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mLastPanelHeight:I

    if-nez v0, :cond_19

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$dimen;->edit_panel_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    :cond_19
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oplus/uxicon/ui/R$dimen;->change_panel_height:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    const/4 v1, 0x1

    aput v0, v2, v1

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v1, Lcom/android/launcher/download/s;

    invoke-direct {v1, p1}, Lcom/android/launcher/download/s;-><init>(Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$b;

    invoke-direct {v1, p0, p2, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$b;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;Landroid/graphics/drawable/Drawable;Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private waitAndFetchIcon(I)V
    .registers 4

    iget v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    if-eq p1, v0, :cond_14

    const-string v0, "waitAndFetchIcon exit for not equal position, position is "

    const-string v1, " mCurrentPage: "

    invoke-static {v0, p1, v1}, Landroidx/appcompat/widget/f;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    const-string v0, "UxChangeIconPanelFragment"

    invoke-static {p1, p0, v0}, Landroidx/fragment/app/b;->a(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    return-void

    :cond_14
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$i;

    invoke-direct {v1, p0, p1}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$i;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public initView(Landroid/view/View;)V
    .registers 8

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->initView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getDragView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget v0, Lcom/oplus/uxicon/ui/R$layout;->change_icon_container:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPanelView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getToolbar()Lcom/coui/appcompat/toolbar/COUIToolbar;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mPanelView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    instance-of v0, v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_a1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/oplus/uxicon/ui/R$dimen;->change_panel_height:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/coui/appcompat/panel/COUIBottomSheetDialogFragment;->setHeight(I)V

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/oplus/uxicon/ui/R$dimen;->ux_edit_change_icon_extra_padding_top:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingEnd()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p1, v0, v3, v1, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$string;->ux_change_icon:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitle(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v2}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setIsTitleCenterStyle(Z)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$style;->TextAppearance_COUI_AppCompatSupport_Toolbar_Title_Panel_Second:I

    invoke-virtual {p1, v0, v1}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setTitleTextAppearance(Landroid/content/Context;I)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oplus/uxicon/ui/R$drawable;->coui_back_arrow:I

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    new-instance v0, Lcom/android/launcher/u;

    invoke-direct {v0, p0}, Lcom/android/launcher/u;-><init>(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;)V

    invoke-virtual {p1, v0}, Lcom/coui/appcompat/toolbar/COUIToolbar;->setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_a1
    iget-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result p1

    if-gtz p1, :cond_ac

    goto :goto_b3

    :cond_ac
    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initIconPackItems()V

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initPackNames()V

    goto :goto_bd

    :cond_b3
    :goto_b3
    new-instance p1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initAppInfoList()V

    :goto_bd
    new-instance p1, Lcom/oplus/uxicon/ui/ui/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->getIconPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnFetchIcons:Lcom/oplus/uxicon/ui/ui/a$a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/oplus/uxicon/ui/ui/a;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/oplus/uxicon/ui/ui/a$a;Ljava/util/ArrayList;I)V

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mFetchIconListTask:Lcom/oplus/uxicon/ui/ui/a;

    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initOnBackKeyListener()V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCallBack:Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUIViewPager2;->c:Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;

    iget-object v0, v0, Lcom/coui/appcompat/viewpager/COUICompositeOnPageChangeCallback;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onHide(Ljava/lang/Boolean;)V
    .registers 2

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onHide(Ljava/lang/Boolean;)V

    iget-object p0, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mViewPager2:Lcom/coui/appcompat/viewpager/COUIViewPager2;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/coui/appcompat/viewpager/COUIViewPager2;->setCurrentItem(I)V

    return-void
.end method

.method public onShow(Ljava/lang/Boolean;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/coui/appcompat/panel/COUIPanelFragment;->onShow(Ljava/lang/Boolean;)V

    invoke-virtual {p0}, Lcom/coui/appcompat/panel/COUIPanelFragment;->getContentView()Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    const/high16 p1, -0x80000000

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPage:I

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_3b

    const-string p2, "key_app_info"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p2

    check-cast p2, Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mAppInfoList:Ljava/util/concurrent/CopyOnWriteArrayList;

    const-string p2, "key_package_name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOriginPackageName:Ljava/lang/String;

    const-string p2, "key_app_name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOriginAppName:Ljava/lang/String;

    const-string p2, "key_component_name"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOriginComponentName:Ljava/lang/String;

    const-string p2, "key_user_id"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mCurrentPackageUserId:I

    const-string p2, "key_panel_height"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mLastPanelHeight:I

    :cond_3b
    invoke-direct {p0}, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->initLoadStartPosition()V

    return-void
.end method

.method public setOnChoosePanelHideListener(Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;)V
    .registers 2

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mOnChoosePanelHideListener:Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment$l;

    return-void
.end method

.method public setPreloadDrawables(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/oplus/uxicon/ui/util/d$a;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/oplus/uxicon/ui/ui/UxChangeIconPanelFragment;->mIconPackCache:Ljava/util/Map;

    :cond_4
    return-void
.end method
