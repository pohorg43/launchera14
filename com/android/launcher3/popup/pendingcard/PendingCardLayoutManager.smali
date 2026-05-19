.class public final Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;
.super Landroidx/recyclerview/widget/LinearLayoutManager;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$Companion;,
        Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$ScrollEventValues;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$Companion;

.field private static final SPEED_FACTOR_ON_DRAG_SCROLL:F = 0.2f


# instance fields
.field private final mExternalScrollCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mIsOverSlide:Z

.field private mIsScrollEnabled:Z

.field private mLastScrolled:I

.field private mRecyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

.field private mSpeedFactorOnDragScroll:F


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->Companion:Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$Companion;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mSpeedFactorOnDragScroll:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    const/high16 p1, 0x3f800000  # 1.0f

    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mSpeedFactorOnDragScroll:F

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .registers 3

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mRecyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->getPendingCardTouchHandler()Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;

    move-result-object v0

    if-eqz v0, :cond_f

    iget-boolean v1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsOverSlide:Z

    invoke-virtual {v0, v1}, Lcom/android/launcher3/popup/pendingcard/PendingCardTouchHandler;->setIsOverSlide(Z)V

    :cond_f
    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mRecyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;->isPressAnimStarted()Z

    move-result v0

    if-eqz v0, :cond_1b

    return v1

    :cond_1b
    iget-boolean v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    if-eqz v0, :cond_26

    invoke-super {p0}, Landroidx/recyclerview/widget/LinearLayoutManager;->canScrollVertically()Z

    move-result p0

    if-eqz p0, :cond_26

    const/4 v1, 0x1

    :cond_26
    return v1
.end method

.method public final getScrollEnabled()Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    return p0
.end method

.method public final init(Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;)V
    .registers 3

    const-string/jumbo v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mRecyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    return-void
.end method

.method public final registerOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method

.method public scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I
    .registers 6

    invoke-virtual {p0}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->canScrollVertically()Z

    move-result v0

    if-eqz v0, :cond_3d

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mRecyclerView:Lcom/android/launcher3/popup/pendingcard/PendingCardRecyclerView;

    if-eqz v0, :cond_1b

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getScrollState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    const v0, 0x3e4ccccd  # 0.2f

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mSpeedFactorOnDragScroll:F

    goto :goto_1b

    :cond_17
    const/high16 v0, 0x3f800000  # 1.0f

    iput v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mSpeedFactorOnDragScroll:F

    :cond_1b
    :goto_1b
    int-to-float p1, p1

    iget v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mSpeedFactorOnDragScroll:F

    mul-float/2addr p1, v0

    float-to-int p1, p1

    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/LinearLayoutManager;->scrollVerticallyBy(ILandroidx/recyclerview/widget/RecyclerView$Recycler;Landroidx/recyclerview/widget/RecyclerView$State;)I

    move-result p1

    iget-object p2, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3a

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;

    invoke-virtual {p3, p1}, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;->onCardScrolled(I)V

    goto :goto_2a

    :cond_3a
    iput p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mLastScrolled:I

    goto :goto_3e

    :cond_3d
    const/4 p1, 0x0

    :goto_3e
    return p1
.end method

.method public final setOverSlideAndScrollEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsOverSlide:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method

.method public final setScrollEnabled(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mIsScrollEnabled:Z

    return-void
.end method

.method public final unregisterOnCardScrollChangeCallback(Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager$OnCardScrollScrollCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object p0, p0, Lcom/android/launcher3/popup/pendingcard/PendingCardLayoutManager;->mExternalScrollCallbacks:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_12
    return-void
.end method
