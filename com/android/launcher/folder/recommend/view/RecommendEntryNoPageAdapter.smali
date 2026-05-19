.class public Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;
.super Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;
.source ""

# interfaces
.implements Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter<",
        "Lcom/android/launcher/folder/recommend/bean/DataBean;",
        ">;",
        "Lcom/android/launcher/folder/recommend/view/RecommendAdapterMethods;"
    }
.end annotation


# static fields
.field private static final DARK_MODE_COLOR:I = 0xd6d6d6

.field private static final DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

.field public static final RECOMMEND_COUNT:I = 0x14

.field private static TAG:Ljava/lang/String; = "RecommendEntryNoPageAdapter"


# instance fields
.field private mAnimSet:Landroid/animation/AnimatorSet;

.field private mBubbleTextViewSize:F

.field public mContext:Landroid/content/Context;

.field private mDarkIconEnabled:Z

.field private mOnePageAnimCount:I

.field public mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

.field private mShowDownloadAnim:Z


# direct methods
.method public static constructor <clinit>()V
    .registers 3

    new-instance v0, Landroid/graphics/LightingColorFilter;

    const v1, 0xd6d6d6

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    sput-object v0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    return-void
.end method

.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;Ljava/util/ArrayList;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/recyclerview/widget/RecyclerView;",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher/folder/recommend/bean/DataBean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    new-instance p2, Landroid/animation/AnimatorSet;

    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimSet:Landroid/animation/AnimatorSet;

    const/high16 p2, -0x40800000  # -1.0f

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    const/4 p2, 0x0

    iput p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnePageAnimCount:I

    iput-boolean p2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mShowDownloadAnim:Z

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static synthetic access$008(Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;)I
    .registers 3

    iget v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnePageAnimCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnePageAnimCount:I

    return v0
.end method

.method private handleDownloadView(ZLandroid/view/View;Landroid/widget/ImageView;)V
    .registers 7

    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-nez v0, :cond_d

    if-eqz p1, :cond_d

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3a

    :cond_d
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mShowDownloadAnim:Z

    if-eqz v0, :cond_20

    if-eqz p1, :cond_20

    invoke-static {p3}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animDownloadBadge(Landroid/view/View;)V

    iput-boolean v2, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mShowDownloadAnim:Z

    goto :goto_3a

    :cond_20
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-eqz p2, :cond_30

    iget-boolean p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mShowDownloadAnim:Z

    if-nez p0, :cond_30

    if-eqz p1, :cond_30

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_3a

    :cond_30
    if-nez p1, :cond_3a

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setAlpha(F)V

    :cond_3a
    :goto_3a
    return-void
.end method

.method private showApp(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V
    .registers 10

    const v0, 0x7f0a04c2

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a04c9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a04c1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v3, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    const/high16 v4, -0x40800000  # -1.0f

    cmpl-float v4, v3, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2e

    invoke-virtual {v1, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_2e
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getAppName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3e

    invoke-static {v1}, Lcom/android/launcher/wallpaper/WallpaperUtil;->updateTextColor(Landroid/widget/TextView;)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setForceDarkAllowed(Z)V

    :cond_3e
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    iget-boolean v1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    if-eqz v1, :cond_4b

    sget-object v1, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->DARK_MODE_COLOR_FILTER:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_4e

    :cond_4b
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    :goto_4e
    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    const v0, 0x7f0a04c3

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a04c6

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->isDownloaded()Z

    move-result p2

    invoke-direct {p0, p2, v1, v2}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->handleDownloadView(ZLandroid/view/View;Landroid/widget/ImageView;)V

    if-ltz p3, :cond_89

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result p2

    if-nez p2, :cond_89

    invoke-static {v1, v0}, Lcom/android/launcher/folder/recommend/RecommendUtils;->animateLoadComplete(Landroid/view/View;Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimSet:Landroid/animation/AnimatorSet;

    new-instance p2, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$1;

    invoke-direct {p2, p0}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter$1;-><init>(Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;)V

    invoke-virtual {p1, p2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_91

    :cond_89
    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {v2, p2}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showItem(Landroid/view/View;)V

    :goto_91
    return-void
.end method

.method private showItem(Landroid/view/View;)V
    .registers 3

    const p0, 0x7f0a04c3

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a04c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p0, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x4

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showLoadingAnim(Landroid/view/View;I)V
    .registers 4

    const p0, 0x7f0a04c3

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const v0, 0x7f0a04c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-ltz p2, :cond_23

    if-eqz p1, :cond_23

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p2, 0x4

    invoke-virtual {p0, p2}, Landroid/view/View;->setVisibility(I)V

    const/high16 p0, 0x3f800000  # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    :cond_23
    return-void
.end method


# virtual methods
.method public bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V
    .registers 9

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_6

    move v2, v0

    goto :goto_7

    :cond_6
    move v2, v1

    :goto_7
    if-eqz p2, :cond_11

    invoke-virtual {p2}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-nez v3, :cond_10

    goto :goto_11

    :cond_10
    move v0, v1

    :cond_11
    :goto_11
    invoke-static {}, Lcom/android/common/debug/LogUtils;->isLogOpen()Z

    move-result v1

    if-eqz v1, :cond_4b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bindData: position: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " nullData: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " nullDrawable: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", view = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Folder"

    const-string v4, "RecommendEntryNoPageAdapter"

    invoke-static {v3, v4, v1}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4b
    if-nez v2, :cond_53

    if-nez v0, :cond_53

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showApp(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V

    goto :goto_56

    :cond_53
    invoke-direct {p0, p1, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showLoadingAnim(Landroid/view/View;I)V

    :goto_56
    return-void
.end method

.method public bridge synthetic bindData(Landroid/view/View;Ljava/lang/Object;I)V
    .registers 4

    check-cast p2, Lcom/android/launcher/folder/recommend/bean/DataBean;

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->bindData(Landroid/view/View;Lcom/android/launcher/folder/recommend/bean/DataBean;I)V

    return-void
.end method

.method public getItemCount()I
    .registers 2

    invoke-super {p0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getItemCount()I

    move-result p0

    const/4 v0, 0x5

    if-ge p0, v0, :cond_8

    move p0, v0

    :cond_8
    return p0
.end method

.method public getItemLayoutId()I
    .registers 1

    const p0, 0x7f0d01bc

    return p0
.end method

.method public bridge synthetic onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->onViewAttachedToWindow(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewAttachedToWindow(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;)V
    .registers 4
    .param p1  # Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mRecyclerview:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter;->getData(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher/folder/recommend/bean/DataBean;

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/launcher/folder/recommend/bean/DataBean;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-nez v1, :cond_1b

    :cond_16
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1, v0}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showLoadingAnim(Landroid/view/View;I)V

    :cond_1b
    return-void
.end method

.method public bridge synthetic onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2
    .param p1  # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    check-cast p1, Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;

    invoke-virtual {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->onViewDetachedFromWindow(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;)V
    .registers 2
    .param p1  # Lcom/android/launcher/folder/recommend/view/VHBaseNoPageRecyclerAdapter$ItemViewHolder;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->showItem(Landroid/view/View;)V

    return-void
.end method

.method public recycleAll()V
    .registers 2

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_d
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mOnePageAnimCount:I

    return-void
.end method

.method public setBubbleTextViewSize(F)V
    .registers 3

    iput p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mBubbleTextViewSize:F

    iget-object p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    if-ne p1, v0, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    invoke-static {}, Lcom/android/launcher/theme/LauncherIconConfig;->isDarkModeIcon()Z

    move-result v0

    and-int/2addr p1, v0

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mDarkIconEnabled:Z

    return-void
.end method

.method public setShowDownloadAnim(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher/folder/recommend/view/RecommendEntryNoPageAdapter;->mShowDownloadAnim:Z

    return-void
.end method
