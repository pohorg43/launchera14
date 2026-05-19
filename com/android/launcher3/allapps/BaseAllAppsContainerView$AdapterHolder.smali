.class public Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher3/allapps/BaseAllAppsContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterHolder"
.end annotation


# static fields
.field public static final MAIN:I = 0x0

.field public static final WORK:I = 0x1


# instance fields
.field public final adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/BaseAllAppsAdapter<",
            "TT;>;"
        }
    .end annotation
.end field

.field public mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/launcher3/allapps/AlphabeticalAppsList<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final mIsWork:Z

.field public mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field public final mPadding:Landroid/graphics/Rect;

.field public mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

.field private mRecyclerViewMarginTop:I

.field public final synthetic this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;


# direct methods
.method public constructor <init>(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;Z)V
    .registers 7

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerViewMarginTop:I

    iput-boolean p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mIsWork:Z

    iget-object v1, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mActivityContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mAllAppsStore:Lcom/android/launcher3/allapps/OplusAllAppsStore;

    if-eqz p2, :cond_1e

    iget-object v3, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v3}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAdapterProvider()Lcom/android/launcher3/allapps/WorkAdapterProvider;

    move-result-object v3

    goto :goto_1f

    :cond_1e
    const/4 v3, 0x0

    :goto_1f
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAppsList(Landroid/content/Context;Lcom/android/launcher3/allapps/AllAppsStore;Lcom/android/launcher3/allapps/WorkAdapterProvider;)Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    const/4 v1, 0x1

    if-eqz p2, :cond_3a

    const/4 p2, 0x2

    new-array p2, p2, [Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v2

    aput-object v2, p2, v0

    iget-object v0, p1, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getAdapterProvider()Lcom/android/launcher3/allapps/WorkAdapterProvider;

    move-result-object v0

    aput-object v0, p2, v1

    goto :goto_42

    :cond_3a
    new-array p2, v1, [Lcom/android/launcher3/allapps/BaseAdapterProvider;

    invoke-static {p1}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->access$100(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Lcom/android/launcher3/allapps/search/SearchAdapterProvider;

    move-result-object v1

    aput-object v1, p2, v0

    :goto_42
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, v0, p2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->getAdapter(Lcom/android/launcher3/allapps/AlphabeticalAppsList;[Lcom/android/launcher3/allapps/BaseAdapterProvider;)Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->setAdapter(Lcom/android/launcher3/allapps/BaseAllAppsAdapter;)V

    invoke-virtual {p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    return-void
.end method


# virtual methods
.method public applyPadding()V
    .registers 7

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    if-eqz v0, :cond_96

    invoke-static {}, Lcom/android/launcher3/aer/ProvisionManager;->getInstance()Lcom/android/launcher3/aer/ProvisionManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/launcher3/aer/ProvisionManager;->isProfileManage()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5e

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-boolean v2, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mIsSearching:Z

    if-eqz v2, :cond_16

    goto :goto_5e

    :cond_16
    instance-of v2, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz v2, :cond_2e

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget v4, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerViewMarginTop:I

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->showTabs()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v1, p0, Landroid/graphics/Rect;->top:I

    :cond_2a
    invoke-static {v2, v3, v4, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->applyTaskbarAllAppsRecyclerViewPadding(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;II)V

    goto :goto_96

    :cond_2e
    iget-boolean v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mIsWork:Z

    if-eqz v2, :cond_4d

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    iget-object v1, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mInsets:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v0, v0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->mWorkManager:Lcom/android/launcher3/allapps/WorkProfileManager;

    invoke-virtual {v0}, Lcom/android/launcher3/allapps/WorkProfileManager;->getWorkModeSwitch()Lcom/android/launcher3/allapps/WorkModeSwitch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/2addr v1, v0

    :cond_4d
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p0, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/graphics/Rect;->right:I

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v1

    invoke-virtual {v0, v2, v3, v4, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_96

    :cond_5e
    :goto_5e
    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    instance-of v2, v0, Lcom/android/launcher3/taskbar/allapps/TaskbarAllAppsContainerView;

    if-eqz v2, :cond_6e

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    iget p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerViewMarginTop:I

    invoke-static {v0, v2, p0, v1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->applyTaskbarAllAppsRecyclerViewPadding(Lcom/android/launcher3/allapps/AllAppsRecyclerView;Lcom/android/launcher3/allapps/AlphabeticalAppsList;II)V

    goto :goto_96

    :cond_6e
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f070127

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070126

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mPadding:Landroid/graphics/Rect;

    iget v4, p0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iget v5, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    add-int/2addr p0, v2

    invoke-virtual {v3, v4, v1, v5, p0}, Landroid/view/ViewGroup;->setPadding(IIII)V

    :cond_96
    :goto_96
    return-void
.end method

.method public setup(Landroid/view/View;Ljava/util/function/Predicate;)V
    .registers 4
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Ljava/util/function/Predicate;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ljava/util/function/Predicate<",
            "Lcom/android/launcher3/model/data/ItemInfo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {v0, p2}, Lcom/android/launcher3/allapps/AlphabeticalAppsList;->updateItemFilter(Ljava/util/function/Predicate;)V

    check-cast p1, Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iput-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-virtual {p2}, Lcom/android/launcher3/views/SpringRelativeLayout;->createEdgeEffectFactory()Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setEdgeEffectFactory(Landroidx/recyclerview/widget/RecyclerView$EdgeEffectFactory;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mAppsList:Lcom/android/launcher3/allapps/AlphabeticalAppsList;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setApps(Lcom/android/launcher3/allapps/AlphabeticalAppsList;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mLayoutManager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/COUIRecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p1, p2}, Lcom/android/launcher3/allapps/AllAppsRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->this$0:Lcom/android/launcher3/allapps/BaseAllAppsContainerView;

    invoke-static {p2}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView;->access$200(Lcom/android/launcher3/allapps/BaseAllAppsContainerView;)Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    new-instance p1, Lcom/android/launcher3/keyboard/FocusedItemDecorator;

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-direct {p1, p2}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;-><init>(Landroid/view/View;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-virtual {p2, p1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    iget-object p2, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->adapter:Lcom/android/launcher3/allapps/BaseAllAppsAdapter;

    invoke-virtual {p1}, Lcom/android/launcher3/keyboard/FocusedItemDecorator;->getFocusListener()Landroid/view/View$OnFocusChangeListener;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/launcher3/allapps/BaseAllAppsAdapter;->setIconFocusListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    invoke-static {p1}, Lcom/android/launcher3/taskbar/TaskbarUtils;->getTaskbarAllAppsRecyclerViewInitMarginTop(Lcom/android/launcher3/allapps/AllAppsRecyclerView;)I

    move-result p1

    iput p1, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerViewMarginTop:I

    invoke-virtual {p0}, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->applyPadding()V

    iget-object p0, p0, Lcom/android/launcher3/allapps/BaseAllAppsContainerView$AdapterHolder;->mRecyclerView:Lcom/android/launcher3/allapps/AllAppsRecyclerView;

    const-string p1, "RecyclerViewAnim"

    invoke-static {p1, p0}, Lcom/oplus/painteranimation/SimulationInteractor;->tryPaintRecyclerView(Ljava/lang/String;Landroidx/recyclerview/widget/RecyclerView;)Z

    return-void
.end method
