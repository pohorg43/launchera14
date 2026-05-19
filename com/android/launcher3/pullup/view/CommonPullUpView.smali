.class public Lcom/android/launcher3/pullup/view/CommonPullUpView;
.super Landroid/widget/FrameLayout;
.source ""


# static fields
.field public static final SEARCH_VIEW_TAG:Ljava/lang/String; = "GSearchTag"


# instance fields
.field private mAppIv:Landroid/widget/ImageView;

.field private mAppNameTv:Landroid/widget/TextView;

.field private mBaseView:Landroid/view/View;

.field private mCornerSize:I

.field private final mCtx:Landroid/content/Context;

.field private mGoogleLayoutView:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private mGreyView:Landroid/view/View;

.field private mOvalView:Landroid/view/View;

.field private mScrimFl:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCornerSize:I

    iput-object p1, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCtx:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->init()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->lambda$updateAppInfo$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    return-void
.end method

.method public static synthetic access$000(Lcom/android/launcher3/pullup/view/CommonPullUpView;)I
    .registers 1

    iget p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCornerSize:I

    return p0
.end method

.method private init()V
    .registers 4

    sget-object v0, Lcom/android/common/util/AppFeatureUtils;->INSTANCE:Lcom/android/common/util/AppFeatureUtils;

    invoke-virtual {v0}, Lcom/android/common/util/AppFeatureUtils;->getRegionName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RU"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d0209

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a0366

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppIv:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mBaseView:Landroid/view/View;

    const v2, 0x7f0a065d

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppNameTv:Landroid/widget/TextView;

    goto :goto_46

    :cond_37
    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCtx:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d020a

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mBaseView:Landroid/view/View;

    :goto_46
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setClipToOutline(Z)V

    new-instance v0, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;

    invoke-direct {v0, p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView$1;-><init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private synthetic lambda$updateAppInfo$0(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppIv:Landroid/widget/ImageView;

    iget-object v1, p1, Lcom/android/launcher3/model/data/ItemInfoWithIcon;->bitmap:Lcom/android/launcher3/icons/BitmapInfo;

    iget-object v1, v1, Lcom/android/launcher3/icons/BitmapInfo;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppNameTv:Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/launcher3/model/data/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setGSearchViewBottom()V
    .registers 2

    sget-object v0, Lcom/android/launcher3/pullup/PullUpInfo;->INSTANCE:Lcom/android/launcher3/pullup/PullUpInfo;

    invoke-virtual {v0}, Lcom/android/launcher3/pullup/PullUpInfo;->getRealScreenHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mBaseView:Landroid/view/View;

    if-eqz p0, :cond_e

    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    :cond_e
    return-void
.end method


# virtual methods
.method public getBaseView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mBaseView:Landroid/view/View;

    return-object p0
.end method

.method public getGoogleLayoutView()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mGoogleLayoutView:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object p0
.end method

.method public getGreyView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mGreyView:Landroid/view/View;

    return-object p0
.end method

.method public getOvalView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mOvalView:Landroid/view/View;

    return-object p0
.end method

.method public getScrimFl()Landroid/widget/FrameLayout;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mScrimFl:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public onAttachedToWindow()V
    .registers 3

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    sget-object v0, Lcom/oplus/quickstep/utils/RoundCornerLoader;->INSTANCE:Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;

    iget-object v1, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCtx:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oplus/quickstep/utils/RoundCornerLoader$INSTANCE;->get(Landroid/content/Context;)Lcom/oplus/quickstep/utils/RoundCornerLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oplus/quickstep/utils/RoundCornerLoader;->getScreenRoundCornerRadiusPx()I

    move-result v0

    iput v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mCornerSize:I

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidateOutline()V

    invoke-direct {p0}, Lcom/android/launcher3/pullup/view/CommonPullUpView;->setGSearchViewBottom()V

    return-void
.end method

.method public updateAppInfo(Lcom/android/launcher3/model/data/WorkspaceItemInfo;)Z
    .registers 4

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppIv:Landroid/widget/ImageView;

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppNameTv:Landroid/widget/TextView;

    if-eqz v0, :cond_48

    if-eqz p1, :cond_48

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_48

    iget-object v0, p1, Lcom/android/launcher3/model/data/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.heytap.browser"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    invoke-virtual {p1}, Lcom/android/launcher3/model/data/WorkspaceItemInfo;->getTargetComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.browser.BrowserActivity"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_48

    iget-object v0, p0, Lcom/android/launcher3/pullup/view/CommonPullUpView;->mAppIv:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/launcher/widget/a;

    invoke-direct {v1, p0, p1}, Lcom/android/launcher/widget/a;-><init>(Lcom/android/launcher3/pullup/view/CommonPullUpView;Lcom/android/launcher3/model/data/WorkspaceItemInfo;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->post(Ljava/lang/Runnable;)Z

    const/4 p0, 0x1

    return p0

    :cond_48
    const/4 p0, 0x0

    return p0
.end method

.method public updatePullUpView()V
    .registers 1

    return-void
.end method
