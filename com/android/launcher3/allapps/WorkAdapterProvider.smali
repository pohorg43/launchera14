.class public Lcom/android/launcher3/allapps/WorkAdapterProvider;
.super Lcom/android/launcher3/allapps/BaseAdapterProvider;
.source ""


# static fields
.field public static final KEY_WORK_EDU_STEP:Ljava/lang/String; = "showed_work_profile_edu"

.field private static final VIEW_TYPE_WORK_DISABLED_CARD:I = 0x200000

.field private static final VIEW_TYPE_WORK_EDU_CARD:I = 0x100000


# instance fields
.field private mActivityContext:Lcom/android/launcher3/views/ActivityContext;

.field private mPreferences:Landroid/content/SharedPreferences;

.field private mState:I


# direct methods
.method public constructor <init>(Lcom/android/launcher3/views/ActivityContext;Landroid/content/SharedPreferences;)V
    .registers 3

    invoke-direct {p0}, Lcom/android/launcher3/allapps/BaseAdapterProvider;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mActivityContext:Lcom/android/launcher3/views/ActivityContext;

    iput-object p2, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mPreferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/allapps/WorkAdapterProvider;Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->lambda$setWorkPausedTipText$0(Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method private isEduSeen()Z
    .registers 3

    iget-object p0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v0, "showed_work_profile_edu"

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_d

    const/4 v1, 0x1

    :cond_d
    return v1
.end method

.method private synthetic lambda$setWorkPausedTipText$0(Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkPausedResources(Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V

    return-void
.end method

.method private setWorkPausedResources(Landroid/view/View;ILcom/android/launcher3/model/StringCache;)V
    .registers 5
    .param p3  # Lcom/android/launcher3/model/StringCache;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/high16 v0, 0x200000

    if-ne p2, v0, :cond_8

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkProfilePausedResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V

    goto :goto_b

    :cond_8
    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkProfileEduResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V

    :goto_b
    return-void
.end method

.method private setWorkPausedTipText(Landroid/view/View;I)V
    .registers 4

    new-instance v0, Lcom/android/launcher3/allapps/q;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/launcher3/allapps/q;-><init>(Lcom/android/launcher3/allapps/WorkAdapterProvider;Landroid/view/View;I)V

    invoke-static {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->updateTextWhenStringCacheLoaded(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private setWorkProfileEduResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V
    .registers 3

    const p0, 0x7f0a06e5

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    iget-object p1, p2, Lcom/android/launcher3/model/StringCache;->workProfileEdu:Ljava/lang/String;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setWorkProfilePausedResources(Landroid/view/View;Lcom/android/launcher3/model/StringCache;)V
    .registers 5

    const p0, 0x7f0a06e5

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const v0, 0x7f0a06e4

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a027a

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p2, :cond_2d

    iget-object v1, p2, Lcom/android/launcher3/model/StringCache;->workProfilePausedTitle:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/launcher3/model/StringCache;->workProfilePausedDescription:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p2, Lcom/android/launcher3/model/StringCache;->workProfileEnableButton:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3f

    :cond_2d
    const p2, 0x7f1206d3

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(I)V

    const p0, 0x7f1206c8

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(I)V

    const p0, 0x7f1206c6

    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setText(I)V

    :goto_3f
    return-void
.end method


# virtual methods
.method public addWorkItems(Ljava/util/ArrayList;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;",
            ">;)I"
        }
    .end annotation

    iget v0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_10

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x200000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_23

    :cond_10
    const/4 v1, 0x1

    if-ne v0, v1, :cond_23

    invoke-direct {p0}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->isEduSeen()Z

    move-result p0

    if-nez p0, :cond_23

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;

    const/high16 v0, 0x100000

    invoke-direct {p0, v0}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$AdapterItem;-><init>(I)V

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    :goto_23
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItemsPerRow(II)I
    .registers 3

    const/4 p0, 0x1

    return p0
.end method

.method public isViewSupported(I)Z
    .registers 2

    const/high16 p0, 0x200000

    if-eq p1, p0, :cond_b

    const/high16 p0, 0x100000

    if-ne p1, p0, :cond_9

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

.method public onBindView(Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;I)V
    .registers 3

    iget-object p0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    instance-of p1, p0, Lcom/android/launcher3/allapps/WorkEduCard;

    if-eqz p1, :cond_b

    check-cast p0, Lcom/android/launcher3/allapps/WorkEduCard;

    invoke-virtual {p0, p2}, Lcom/android/launcher3/allapps/WorkEduCard;->setPosition(I)V

    :cond_b
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;I)Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;
    .registers 6

    const/high16 v0, 0x200000

    if-ne p3, v0, :cond_8

    const v0, 0x7f0d029e

    goto :goto_b

    :cond_8
    const v0, 0x7f0d029d

    :goto_b
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/android/launcher3/allapps/WorkAdapterProvider;->setWorkPausedTipText(Landroid/view/View;I)V

    new-instance p0, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;

    invoke-direct {p0, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method public shouldShowWorkApps()Z
    .registers 2

    iget p0, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_7

    const/4 p0, 0x1

    goto :goto_8

    :cond_7
    const/4 p0, 0x0

    :goto_8
    return p0
.end method

.method public updateCurrentState(I)V
    .registers 2

    iput p1, p0, Lcom/android/launcher3/allapps/WorkAdapterProvider;->mState:I

    return-void
.end method
