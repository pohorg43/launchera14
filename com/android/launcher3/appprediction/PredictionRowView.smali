.class public Lcom/android/launcher3/appprediction/PredictionRowView;
.super Landroid/widget/LinearLayout;
.source ""

# interfaces
.implements Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;
.implements Lcom/android/launcher3/allapps/FloatingHeaderRow;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/content/Context;",
        ":",
        "Lcom/android/launcher3/views/ActivityContext;",
        ":",
        "Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;",
        "Lcom/android/launcher3/allapps/FloatingHeaderRow;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PredictionRowView"


# instance fields
.field private final mActivityContext:Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

.field private mNumPredictedAppsPerRow:I

.field private mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

.field private mPendingPredictedItems:Ljava/util/List;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPredictedApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPredictionsEnabled:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4
    .param p1  # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    const/4 p2, 0x0

    iput-boolean p2, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    sget-object v0, Lcom/android/launcher3/touch/ItemLongClickListener;->INSTANCE_ALL_APPS:Landroid/view/View$OnLongClickListener;

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance p2, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;

    invoke-direct {p2, p0}, Lcom/android/launcher3/keyboard/FocusIndicatorHelper$SimpleFocusIndicatorHelper;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-static {p1}, Lcom/android/launcher3/views/ActivityContext;->lookupContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;

    invoke-interface {p2, p0}, Lcom/android/launcher3/DeviceProfile$DeviceProfileListenable;->addOnDeviceProfileChangeListener(Lcom/android/launcher3/DeviceProfile$OnDeviceProfileChangeListener;)V

    move-object p2, p1

    check-cast p2, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {p2}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object p2

    check-cast p1, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/DeviceProfile;->getNumAllAppsColumns(Lcom/android/launcher3/views/ActivityContext;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->updateVisibility()V

    return-void
.end method

.method public static synthetic a(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->lambda$applyPredictedApps$1(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;

    move-result-object p0

    return-object p0
.end method

.method private applyPredictedApps(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/common/util/d0;->c:Lcom/android/common/util/d0;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object v1, Lcom/android/launcher3/appprediction/a;->a:Lcom/android/launcher3/appprediction/a;

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictionApps()V

    return-void
.end method

.method private applyPredictionApps()V
    .registers 8

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    const-string v2, "PredictionRowView"

    const/4 v3, 0x0

    if-eq v0, v1, :cond_83

    :goto_b
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    iget v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    if-le v0, v1, :cond_17

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    goto :goto_b

    :cond_17
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    :goto_23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    iget v4, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    if-ge v1, v4, :cond_83

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/launcher3/BubbleTextView;

    :try_start_34
    iget-object v4, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v4, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v4}, Lcom/android/launcher3/views/ActivityContext;->getItemOnClickListener()Landroid/view/View$OnClickListener;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_3f} :catch_40

    goto :goto_4a

    :catch_40
    move-exception v4

    const-string v5, "applyPredictionApps icon setOnClickListener e: "

    invoke-static {v5}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4, v5, v2}, Lv/c;->a(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    :goto_4a
    iget-object v4, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const/high16 v4, 0x3f800000  # 1.0f

    invoke-virtual {v1, v4}, Lcom/android/launcher3/BubbleTextView;->setLongPressTimeoutFactor(F)V

    iget-object v5, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v5, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060495

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-virtual {v1, v5}, Lcom/android/launcher3/BubbleTextView;->setTextColor(I)V

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v6, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v6, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v6}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v6

    iget v6, v6, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v4, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_23

    :cond_83
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    move v1, v3

    :goto_8a
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v4

    if-ge v1, v4, :cond_b6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/launcher3/BubbleTextView;

    invoke-virtual {v4}, Lcom/android/launcher3/BubbleTextView;->reset()V

    if-le v0, v1, :cond_aa

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v5, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/launcher3/model/data/AppInfo;

    invoke-virtual {v4, v5}, Lcom/android/launcher3/BubbleTextView;->applyFromApplicationInfo(Lcom/android/launcher3/model/data/AppInfo;)V

    goto :goto_b3

    :cond_aa
    if-nez v0, :cond_af

    const/16 v5, 0x8

    goto :goto_b0

    :cond_af
    const/4 v5, 0x4

    :goto_b0
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_b3
    add-int/lit8 v1, v1, 0x1

    goto :goto_8a

    :cond_b6
    if-lez v0, :cond_ba

    const/4 v0, 0x1

    goto :goto_bb

    :cond_ba
    move v0, v3

    :goto_bb
    iget-boolean v1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eq v0, v1, :cond_d3

    iput-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    instance-of v0, v0, Lcom/android/launcher3/taskbar/allapps/OplusTaskbarAllAppsContext;

    if-eqz v0, :cond_d0

    iput-boolean v3, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    const-string v0, "applyPredictionApps not show prediction row view when TASKBAR_ALL_APPS_HIDE_PREDICTED_APPS!"

    invoke-static {v2, v0}, Lcom/android/common/debug/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d0
    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->updateVisibility()V

    :cond_d3
    iget-object p0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/FloatingHeaderView;->onHeightUpdated()V

    return-void
.end method

.method public static synthetic b(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    invoke-static {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->lambda$applyPredictedApps$0(Lcom/android/launcher3/model/data/ItemInfo;)Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$applyPredictedApps$0(Lcom/android/launcher3/model/data/ItemInfo;)Z
    .registers 1

    instance-of p0, p0, Lcom/android/launcher3/model/data/AppInfo;

    return p0
.end method

.method private static synthetic lambda$applyPredictedApps$1(Lcom/android/launcher3/model/data/ItemInfo;)Lcom/android/launcher3/model/data/AppInfo;
    .registers 1

    check-cast p0, Lcom/android/launcher3/model/data/AppInfo;

    return-object p0
.end method

.method private updateVisibility()V
    .registers 2

    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    const/16 v0, 0x8

    :goto_8
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    if-eqz v0, :cond_38

    iget-boolean v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    if-eqz v0, :cond_29

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->registerIconContainer(Landroid/view/ViewGroup;)V

    goto :goto_38

    :cond_29
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getAppsView()Lcom/android/launcher3/allapps/ActivityAllAppsContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsStore()Lcom/android/launcher3/allapps/OplusAllAppsStore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/launcher3/allapps/AllAppsStore;->unregisterIconContainer(Landroid/view/ViewGroup;)V

    :cond_38
    :goto_38
    return-void
.end method


# virtual methods
.method public dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mFocusHelper:Lcom/android/launcher3/keyboard/FocusIndicatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/launcher3/keyboard/ItemFocusIndicatorHelper;->draw(Landroid/graphics/Canvas;)V

    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public getExpectedHeight()I
    .registers 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_a

    const/4 p0, 0x0

    goto :goto_1e

    :cond_a
    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->getDeviceProfile()Lcom/android/launcher3/OplusDeviceProfile;

    move-result-object v0

    iget v0, v0, Lcom/android/launcher3/DeviceProfile;->allAppsCellHeightPx:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result p0

    add-int/2addr p0, v1

    :goto_1e
    return p0
.end method

.method public getFocusedChild()Landroid/view/View;
    .registers 2

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public getPredictedApps()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfoWithIcon;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictedApps:Ljava/util/List;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getTypeClass()Ljava/lang/Class;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "Lcom/android/launcher3/appprediction/PredictionRowView;",
            ">;"
        }
    .end annotation

    const-class p0, Lcom/android/launcher3/appprediction/PredictionRowView;

    return-object p0
.end method

.method public hasOverlappingRendering()Z
    .registers 1

    const/4 p0, 0x0

    return p0
.end method

.method public hasVisibleContent()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPredictionsEnabled:Z

    return p0
.end method

.method public isVisible()Z
    .registers 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    if-nez p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method public onAttachedToWindow()V
    .registers 1

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    return-void
.end method

.method public onDeviceProfileChanged(Lcom/android/launcher3/DeviceProfile;)V
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-virtual {p1, v0}, Lcom/android/launcher3/DeviceProfile;->getNumAllAppsColumns(Lcom/android/launcher3/views/ActivityContext;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mNumPredictedAppsPerRow:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->removeAllViews()V

    invoke-direct {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictionApps()V

    return-void
.end method

.method public onMeasure(II)V
    .registers 4

    invoke-virtual {p0}, Lcom/android/launcher3/appprediction/PredictionRowView;->getExpectedHeight()I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void
.end method

.method public onVisibilityAggregated(Z)V
    .registers 3

    invoke-super {p0, p1}, Landroid/view/View;->onVisibilityAggregated(Z)V

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    if-eqz v0, :cond_c

    if-nez p1, :cond_c

    invoke-direct {p0, v0}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictedApps(Ljava/util/List;)V

    :cond_c
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;Lcom/android/launcher3/DeviceProfile;)V
    .registers 4

    iget p1, p2, Lcom/android/launcher3/DeviceProfile;->allAppsLeftRightPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0, p1, p2, p1, v0}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method public setOnIconLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mOnIconLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setPredictedApps(Ljava/util/List;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/launcher3/config/FeatureFlags;->ENABLE_APP_PREDICTIONS_WHILE_VISIBLE:Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;

    invoke-virtual {v0}, Lcom/android/launcher3/config/FeatureFlags$BooleanFlag;->get()Z

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mActivityContext:Landroid/content/Context;

    check-cast v0, Lcom/android/launcher3/views/ActivityContext;

    invoke-interface {v0}, Lcom/android/launcher3/views/ActivityContext;->isBindingItems()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowVisibility()I

    move-result v0

    if-nez v0, :cond_21

    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mPendingPredictedItems:Ljava/util/List;

    return-void

    :cond_21
    invoke-direct {p0, p1}, Lcom/android/launcher3/appprediction/PredictionRowView;->applyPredictedApps(Ljava/util/List;)V

    return-void
.end method

.method public setVerticalScroll(IZ)V
    .registers 3

    if-nez p2, :cond_6

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    :cond_6
    if-eqz p2, :cond_a

    const/4 p1, 0x0

    goto :goto_c

    :cond_a
    const/high16 p1, 0x3f800000  # 1.0f

    :goto_c
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_1a

    invoke-static {p0}, Lcom/android/launcher3/anim/AlphaUpdateListener;->updateVisibility(Landroid/view/View;)V

    :cond_1a
    return-void
.end method

.method public setup(Lcom/android/launcher3/allapps/FloatingHeaderView;[Lcom/android/launcher3/allapps/FloatingHeaderRow;Z)V
    .registers 4

    iput-object p1, p0, Lcom/android/launcher3/appprediction/PredictionRowView;->mParent:Lcom/android/launcher3/allapps/FloatingHeaderView;

    return-void
.end method

.method public shouldDraw()Z
    .registers 2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result p0

    const/16 v0, 0x8

    if-eq p0, v0, :cond_a

    const/4 p0, 0x1

    goto :goto_b

    :cond_a
    const/4 p0, 0x0

    :goto_b
    return p0
.end method
