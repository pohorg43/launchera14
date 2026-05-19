.class public Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;
.super Lcom/android/launcher3/allapps/AllAppsGridAdapter;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ">",
        "Lcom/android/launcher3/allapps/AllAppsGridAdapter<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final FOCUSED_STATUS_COMMON_APP_ALPHA:F = 0.2f

.field public static final UNINSTALL_APP_PREDICTION_ICON_ALPHA:F = 0.2f


# instance fields
.field private mActivePosition:I

.field private mAllAppsDividerItemView:Landroid/view/View;

.field public mBatchTipButtonDialog:Lcom/android/launcher/views/AllAppsBatchTipView;

.field private mFontManager:Lcom/android/common/util/FontManager;

.field public mNeedShowIconSelect:Z

.field private mNeedUpdateTextSize:Z

.field private mOnExploreBranchClickListener:Landroid/view/View$OnClickListener;

.field private mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Landroid/view/LayoutInflater;",
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList;",
            "[",
            "Lcom/android/launcher3/allapps/BaseAdapterProvider;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/launcher3/allapps/AllAppsGridAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    const/4 p2, -0x1

    iput p2, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mActivePosition:I

    iput-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedUpdateTextSize:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mAllAppsDividerItemView:Landroid/view/View;

    return-void
.end method

.method public static asEmptyBranchSearch(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v1, 0x40000

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object v0
.end method

.method public static asPredictedApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->asApp(ILjava/lang/String;Lcom/android/launcher3/model/data/AppInfo;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    move-result-object p0

    const/16 p1, 0x100

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->viewType:I

    return-object p0
.end method

.method public static asPredictionsAppsHeader(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v1, -0x80000000

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object v0
.end method

.method public static asSelectedEmptyPosFooter(I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;
    .registers 3

    new-instance v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/16 v1, 0x200

    invoke-direct {v0, v1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    iput p0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->position:I

    return-object v0
.end method

.method private getRangeCount(ILjava/util/List;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    const/4 v0, 0x0

    move v1, p1

    :goto_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_24

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-eqz v2, :cond_21

    if-ne v1, p1, :cond_18

    iget-object p0, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->sectionName:Ljava/lang/String;

    :goto_15
    add-int/lit8 v0, v0, 0x1

    goto :goto_21

    :cond_18
    iget-object v2, v2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_24

    goto :goto_15

    :cond_21
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_24
    return v0
.end method

.method private ignoreSuperBindViewHolderViewType(I)Z
    .registers 2

    const/4 p0, 0x4

    if-eq p1, p0, :cond_9

    const/high16 p0, 0x40000

    if-eq p1, p0, :cond_9

    const/4 p0, 0x0

    return p0

    :cond_9
    const/4 p0, 0x1

    return p0
.end method

.method public static isBranchSearch(I)Z
    .registers 2

    const/high16 v0, 0x1000000

    if-eq p0, v0, :cond_f

    const/high16 v0, 0x2000000

    if-eq p0, v0, :cond_f

    const/high16 v0, 0x4000000

    if-ne p0, v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 p0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 p0, 0x1

    :goto_10
    return p0
.end method

.method public static isBranchSuggestedApp(I)Z
    .registers 2

    const/high16 v0, 0x1000000

    if-eq p0, v0, :cond_b

    const/high16 v0, 0x10000000

    if-ne p0, v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 p0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 p0, 0x1

    :goto_c
    return p0
.end method

.method private isTargetSectionItem(I)Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    if-eqz p1, :cond_1e

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->getSectionName()Ljava/lang/String;

    move-result-object p0

    iget-object p1, p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->sectionName:Ljava/lang/String;

    invoke-static {p0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1e

    const/4 p0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 p0, 0x0

    :goto_1f
    return p0
.end method

.method private onBindViewHolderByEmptyBranchSearch(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .registers 4

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v1, 0x7f0a0278

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mOnExploreBranchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_22

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v0, 0x7f0a0103

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mOnExploreBranchClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_22
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchSearchHelper;->showEmptySearchMarketTips()V

    return-void
.end method

.method private onBindViewHolderByItemViewAttr(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .registers 6

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    const/16 v2, 0x100

    if-ne v0, v2, :cond_21

    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    if-eqz v0, :cond_13

    const v1, 0x3e4ccccd  # 0.2f

    :cond_13
    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {p1, p0}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_10e

    :cond_21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_10e

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    const/4 v2, 0x0

    if-eqz v0, :cond_38

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->isSearchViewTouched()Z

    move-result v2

    iget-object v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->canStartAnim()Z

    move-result v0

    goto :goto_39

    :cond_38
    move v0, v2

    :goto_39
    if-eqz v2, :cond_ac

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isTargetSectionItem(I)Z

    move-result p0

    if-eqz p0, :cond_78

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_5b

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_10e

    :cond_5b
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_10e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-nez p0, :cond_10e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_10e

    :cond_78
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-eqz p0, :cond_92

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->end()V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_10e

    :cond_92
    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    const p2, 0x3dcccccd  # 0.1f

    cmpl-float p0, p0, p2

    if-eqz p0, :cond_10e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10e

    :cond_ac
    if-eqz v0, :cond_eb

    invoke-direct {p0, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->isTargetSectionItem(I)Z

    move-result p0

    if-eqz p0, :cond_c8

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_10e

    :cond_c8
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getAlpha()F

    move-result p0

    cmpl-float p0, p0, v1

    if-eqz p0, :cond_10e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->isStarted()Z

    move-result p0

    if-nez p0, :cond_10e

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto :goto_10e

    :cond_eb
    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaInAnim()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->getAlphaOutAnim()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->isRemoved:Z

    if-nez p0, :cond_10e

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_10e
    :goto_10e
    return-void
.end method

.method private onBindViewHolderByViewTypeIcon(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060495

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    goto :goto_2d

    :cond_1d
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060500

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    :goto_2d
    instance-of v0, p2, Lcom/android/launcher3/OplusBubbleTextView;

    const/4 v1, 0x1

    if-eqz v0, :cond_38

    move-object v0, p2

    check-cast v0, Lcom/android/launcher3/OplusBubbleTextView;

    invoke-virtual {v0, v1}, Lcom/android/launcher3/OplusBubbleTextView;->setIconVisibleForFIView(Z)V

    :cond_38
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result p1

    const/16 v0, 0x100

    const/4 v2, 0x0

    if-eq p1, v0, :cond_51

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    invoke-interface {p1, v0, v2, v1}, Lcom/android/launcher3/iconrender/impl/ISelectableIcon;->applySelectedState(ZIZ)V

    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    if-nez p1, :cond_4d

    return-void

    :cond_4d
    invoke-virtual {p0, p2, p3}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeNotPredictionIcon(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_5e

    :cond_51
    iget-boolean p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedUpdateTextSize:Z

    if-eqz p1, :cond_5e

    iget-object p1, p2, Lcom/android/launcher3/BubbleTextView;->mOPlusBtvExtV2:Lcom/android/launcher3/IBubbleTextViewExt;

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mFontManager:Lcom/android/common/util/FontManager;

    iget p0, p0, Lcom/android/common/util/FontManager;->mTextSizeScale:F

    invoke-interface {p1, p0, v2}, Lcom/android/launcher3/IBubbleTextViewExt;->updateTextSize(FZ)V

    :cond_5e
    :goto_5e
    return-void
.end method


# virtual methods
.method public getAllAppsDividerItemView()Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mAllAppsDividerItemView:Landroid/view/View;

    return-object p0
.end method

.method public getScrollHelper()Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;
    .registers 1

    iget-object p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-object p0
.end method

.method public isShowSelectedView()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    return p0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    check-cast p1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .registers 7

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->ignoreSuperBindViewHolderViewType(I)Z

    move-result v0

    if-nez v0, :cond_d

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    :cond_d
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_e4

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/16 v2, 0x200

    if-ne v0, v2, :cond_d2

    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    if-eqz v2, :cond_cf

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070100

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    goto/16 :goto_cf

    :sswitch_37
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V

    goto/16 :goto_df

    :sswitch_4e
    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByEmptyBranchSearch(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V

    goto/16 :goto_df

    :sswitch_53
    invoke-virtual {p0, p1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V

    goto/16 :goto_df

    :sswitch_58
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_df

    :sswitch_63
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v0

    if-eqz v0, :cond_7f

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/launcher3/allapps/branch/BranchManager;->onBindViewHolder(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;I)V

    goto :goto_df

    :cond_7f
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v2, 0x7f0a0278

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const v3, 0x7f0a0343

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oplus/anim/EffectiveAnimationView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast v3, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v3}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v3

    instance-of v3, v3, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz v3, :cond_aa

    const-string v3, "drawer_search_empty.json"

    invoke-virtual {v2, v3}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setForceDarkAllowed(Z)V

    goto :goto_b0

    :cond_aa
    const-string/jumbo v1, "search_empty.json"

    invoke-virtual {v2, v1}, Lcom/oplus/anim/EffectiveAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_b0
    invoke-virtual {v2}, Lcom/oplus/anim/EffectiveAnimationView;->playAnimation()V

    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mEmptySearchMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_df

    :sswitch_b9
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;->itemInfo:Lcom/android/launcher3/model/data/AppInfo;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByViewTypeIcon(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_df

    :cond_cf
    :goto_cf
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_df

    :cond_d2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getAdapterProvider(I)Lcom/android/launcher3/allapps/BaseAdapterProvider;

    move-result-object v0

    if-eqz v0, :cond_df

    invoke-virtual {v0, p1, p2}, Lcom/android/launcher3/allapps/BaseAdapterProvider;->onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    :cond_df
    :goto_df
    invoke-direct {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onBindViewHolderByItemViewAttr(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V

    return-void

    nop

    :sswitch_data_e4
    .sparse-switch
        0x2 -> :sswitch_b9
        0x4 -> :sswitch_63
        0x8 -> :sswitch_58
        0x10 -> :sswitch_53
        0x100 -> :sswitch_b9
        0x8000 -> :sswitch_b9
        0x40000 -> :sswitch_4e
        0x400000 -> :sswitch_37
        0x800000 -> :sswitch_37
        0x1000000 -> :sswitch_37
        0x2000000 -> :sswitch_37
        0x4000000 -> :sswitch_37
        0x8000000 -> :sswitch_37
        0x10000000 -> :sswitch_37
        0x20000000 -> :sswitch_37
    .end sparse-switch
.end method

.method public onBindViewHolderByViewTypeAllAppsDivider(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;)V
    .registers 2

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mAllAppsDividerItemView:Landroid/view/View;

    return-void
.end method

.method public onBindViewHolderByViewTypeNotPredictionIcon(Lcom/android/launcher3/BubbleTextView;Lcom/android/launcher3/model/data/AppInfo;)V
    .registers 3

    const/4 p0, 0x0

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 10

    const/4 v0, 0x0

    const/16 v1, 0x200

    if-ne p2, v1, :cond_2d

    new-instance p1, Landroid/widget/LinearLayout;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    iget-boolean v2, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedShowIconSelect:Z

    if-eqz v2, :cond_21

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f070100

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    float-to-int v0, p0

    :cond_21
    invoke-direct {p2, v1, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0

    :cond_2d
    const/4 v1, 0x4

    if-ne p2, v1, :cond_69

    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->featureSupport()Z

    move-result v1

    if-eqz v1, :cond_3f

    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_3f
    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mActivityContext:Landroid/content/Context;

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object p2

    instance-of p2, p2, Lcom/android/launcher3/allapps/OplusLauncherAllAppsContainerView;

    if-eqz p2, :cond_5a

    new-instance p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d011b

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_5a
    new-instance p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d003c

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_69
    const/high16 v1, 0x40000

    if-ne p2, v1, :cond_7c

    new-instance p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d003b

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_7c
    const/high16 v1, -0x80000000

    if-ne p2, v1, :cond_8f

    new-instance p2, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0d01f2

    invoke-virtual {p0, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    invoke-direct {p2, p0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p2

    :cond_8f
    const/high16 v0, 0x400000

    if-eq p2, v0, :cond_dc

    const/high16 v0, 0x800000

    if-eq p2, v0, :cond_dc

    const/high16 v0, 0x1000000

    if-eq p2, v0, :cond_be

    const/high16 v0, 0x2000000

    if-eq p2, v0, :cond_be

    const/high16 v0, 0x4000000

    if-eq p2, v0, :cond_dc

    const/high16 v0, 0x8000000

    if-eq p2, v0, :cond_dc

    const/high16 v0, 0x10000000

    if-eq p2, v0, :cond_be

    const/high16 v0, 0x20000000

    if-eq p2, v0, :cond_dc

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p2, v0, :cond_dc

    invoke-super {p0, p1, p2}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    const/4 p1, 0x2

    if-ne p2, p1, :cond_bd

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter$BaseAllAppsViewHolder;->createAnimation()V

    :cond_bd
    return-object p0

    :cond_be
    invoke-static {}, Lcom/android/launcher3/allapps/branch/BranchManager;->rusSupportBubble()Z

    move-result v0

    if-eqz v0, :cond_d3

    sget-object v1, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    iget-object v5, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mIconFocusListener:Landroid/view/View$OnFocusChangeListener;

    iget-object v6, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    move-object v3, p1

    move v4, p2

    invoke-virtual/range {v1 .. v6}, Lcom/android/launcher3/allapps/branch/BranchManager;->onCreateViewHolderBubbleTv(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;ILandroid/view/View$OnFocusChangeListener;Landroid/view/View$OnLongClickListener;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_d3
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0

    :cond_dc
    sget-object v0, Lcom/android/launcher3/allapps/branch/BranchManager;->INSTANCE:Lcom/android/launcher3/allapps/branch/BranchManager;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/branch/BranchManager;->onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    move-result-object p0

    return-object p0
.end method

.method public setFocusedPosition(I)V
    .registers 5

    iget v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mActivePosition:I

    iput p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mActivePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_35

    if-ne p1, v1, :cond_a

    goto :goto_35

    :cond_a
    if-ne v0, p1, :cond_d

    return-void

    :cond_d
    iget-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->mApps:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    if-nez v1, :cond_12

    return-void

    :cond_12
    invoke-virtual {v1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->getAdapterItems()Ljava/util/List;

    move-result-object v1

    if-ltz v0, :cond_25

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_25

    invoke-direct {p0, v0, v1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getRangeCount(ILjava/util/List;)I

    move-result v2

    invoke-virtual {p0, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_25
    if-ltz p1, :cond_34

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_34

    invoke-direct {p0, p1, v1}, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->getRangeCount(ILjava/util/List;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    :cond_34
    return-void

    :cond_35
    :goto_35
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public setOnExploreBranchClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mOnExploreBranchClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setScrollHelper(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mScrollHelper:Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    return-void
.end method

.method public updateIconTextSize()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/launcher3/allapps/OplusAllAppsGridAdapter;->mNeedUpdateTextSize:Z

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method
