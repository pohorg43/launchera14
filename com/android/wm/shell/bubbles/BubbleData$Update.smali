.class final Lcom/android/wm/shell/bubbles/BubbleData$Update;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Update"
.end annotation


# instance fields
.field public addedBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final bubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field public expanded:Z

.field public expandedChanged:Z

.field public orderChanged:Z

.field public final overflowBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;"
        }
    .end annotation
.end field

.field public final removedBubbles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Pair<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field public removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public selectionChanged:Z

.field public suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public suppressedSummaryChanged:Z

.field public suppressedSummaryGroup:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-static {p2}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->overflowBubbles:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Ljava/util/List;Lcom/android/wm/shell/bubbles/BubbleData$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleData$Update;-><init>(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public anythingChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedOverflowBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-nez v0, :cond_37

    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryChanged:Z

    if-nez v0, :cond_37

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedSummaryGroup:Ljava/lang/String;

    if-eqz p0, :cond_35

    goto :goto_37

    :cond_35
    const/4 p0, 0x0

    goto :goto_38

    :cond_37
    :goto_37
    const/4 p0, 0x1

    :goto_38
    return p0
.end method

.method public bubbleRemoved(Lcom/android/wm/shell/bubbles/Bubble;I)V
    .registers 4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    new-instance v0, Landroid/util/Pair;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInitialState()Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;
    .registers 5

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-direct {v0}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    const/4 v1, 0x0

    :goto_6
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->currentBubbleList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    :cond_22
    return-object v0
.end method

.method public toBubbleBarUpdate()Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;
    .registers 8

    new-instance v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    invoke-direct {v0}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>()V

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expandedChanged:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    iput-boolean v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->expanded:Z

    iget-boolean v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    if-eqz v1, :cond_1b

    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_1c

    :cond_1b
    move-object v1, v2

    :goto_1c
    iput-object v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->selectedBubbleKey:Ljava/lang/String;

    :cond_1e
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v2

    :goto_28
    iput-object v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->addedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v1, :cond_33

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->asBubbleBarBubble()Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    move-result-object v1

    goto :goto_34

    :cond_33
    move-object v1, v2

    :goto_34
    iput-object v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->updatedBubble:Lcom/android/wm/shell/common/bubbles/BubbleInfo;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v1

    goto :goto_40

    :cond_3f
    move-object v1, v2

    :goto_40
    iput-object v1, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->suppressedBubbleKey:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v2

    :cond_4a
    iput-object v2, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->unsupressedBubbleKey:Ljava/lang/String;

    const/4 v1, 0x0

    move v2, v1

    :goto_4e
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_7b

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/Pair;

    iget-object v4, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->removedBubbles:Ljava/util/List;

    new-instance v5, Lcom/android/wm/shell/common/bubbles/RemovedBubble;

    iget-object v6, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {v5, v6, v3}, Lcom/android/wm/shell/common/bubbles/RemovedBubble;-><init>(Ljava/lang/String;I)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_4e

    :cond_7b
    iget-boolean v2, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v2, :cond_9b

    :goto_7f
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_9b

    iget-object v2, v0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->bubbleKeysInOrder:Ljava/util/List;

    iget-object v3, p0, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v3}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_7f

    :cond_9b
    return-object v0
.end method
