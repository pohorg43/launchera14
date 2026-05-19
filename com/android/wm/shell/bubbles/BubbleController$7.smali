.class Lcom/android/wm/shell/bubbles/BubbleController$7;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleData$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V
    .registers 12

    sget-boolean v0, Lcom/android/wm/shell/bubbles/BubbleDebugConfig;->DEBUG_BUBBLE_CONTROLLER:Z

    const-string v1, "Bubbles"

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_76

    const-string v0, "applyUpdate: bubbleAdded="

    invoke-static {v0}, Ld/c;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_14

    move v4, v2

    goto :goto_15

    :cond_14
    move v4, v3

    :goto_15
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bubbleRemoved="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_27

    move v4, v2

    goto :goto_28

    :cond_27
    move v4, v3

    :goto_28
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " bubbleUpdated="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_36

    move v4, v2

    goto :goto_37

    :cond_36
    move v4, v3

    :goto_37
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " orderChanged="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " expandedChanged="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " selectionChanged="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " suppressed="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_63

    move v4, v2

    goto :goto_64

    :cond_63
    move v4, v3

    :goto_64
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " unsuppressed="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v4, :cond_72

    move v4, v2

    goto :goto_73

    :cond_72
    move v4, v3

    :goto_73
    invoke-static {v0, v4, v1}, Landroidx/recyclerview/widget/d;->a(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    :cond_76
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$800(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->loadOverflowBubblesFromDisk()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$900(Lcom/android/wm/shell/bubbles/BubbleController;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1000(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    move-result-object v0

    if-eqz v0, :cond_96

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1000(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData$Listener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleData$Listener;->applyUpdate(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    :cond_96
    new-instance v0, Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->removedBubbles:Ljava/util/List;

    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a6
    :goto_a6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/Pair;

    iget-object v6, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v6, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v7, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v7}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v7

    invoke-interface {v7, v6}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    const/16 v7, 0x8

    if-eq v5, v7, :cond_a6

    const/16 v7, 0xe

    if-ne v5, v7, :cond_d0

    goto :goto_a6

    :cond_d0
    const/4 v7, 0x5

    if-eq v5, v7, :cond_d7

    const/16 v8, 0xc

    if-ne v5, v8, :cond_da

    :cond_d7
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_da
    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v8}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/BubbleData;->hasBubbleInStackWithKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_a6

    iget-object v8, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v8}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData;

    move-result-object v8

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/wm/shell/bubbles/BubbleData;->hasOverflowBubbleWithKey(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_115

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->showInShade()Z

    move-result v8

    if-eqz v8, :cond_106

    if-eq v5, v7, :cond_106

    const/16 v7, 0x9

    if-ne v5, v7, :cond_115

    :cond_106
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    invoke-interface {v5, v6, v7}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->notifyRemoveNotification(Ljava/lang/String;I)V

    goto :goto_a6

    :cond_115
    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->isBubble()Z

    move-result v5

    if-eqz v5, :cond_120

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v5, v6, v3}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1300(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_120
    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v5

    invoke-virtual {v6}, Lcom/android/wm/shell/bubbles/Bubble;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->updateNotificationBubbleButton(Ljava/lang/String;)V

    goto/16 :goto_a6

    :cond_12f
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1500(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-result-object v0

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1400(Lcom/android/wm/shell/bubbles/BubbleController;)I

    move-result v5

    invoke-virtual {v0, v5, v4}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->removeBubbles(ILjava/util/List;)V

    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_15e

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1500(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-result-object v0

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1400(Lcom/android/wm/shell/bubbles/BubbleController;)I

    move-result v4

    iget-object v5, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-virtual {v0, v4, v5}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->addBubble(ILcom/android/wm/shell/bubbles/Bubble;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->addedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v0, v4}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_15e
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_16d

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->updatedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v0, v4}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V

    :cond_16d
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_17c

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->suppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v0, v4, v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_17c
    iget-object v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    if-eqz v0, :cond_18b

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    iget-object v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->unsuppressedBubble:Lcom/android/wm/shell/bubbles/Bubble;

    invoke-interface {v0, v4, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V

    :cond_18b
    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v0, :cond_195

    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    if-nez v0, :cond_195

    move v0, v2

    goto :goto_196

    :cond_195
    move v0, v3

    :goto_196
    iget-boolean v4, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->orderChanged:Z

    if-eqz v4, :cond_1b8

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1500(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    move-result-object v4

    iget-object v5, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v5}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1400(Lcom/android/wm/shell/bubbles/BubbleController;)I

    move-result v5

    iget-object v6, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    invoke-virtual {v4, v5, v6}, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->addBubbles(ILjava/util/List;)V

    iget-object v4, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v4}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v4

    iget-object v5, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->bubbles:Ljava/util/List;

    xor-int/lit8 v6, v0, 0x1

    invoke-interface {v4, v5, v6}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->bubbleOrderChanged(Ljava/util/List;Z)V

    :cond_1b8
    if-eqz v0, :cond_1cc

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->expansionChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v0

    invoke-interface {v0, v3, v1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->requestNotificationShadeTopUi(ZLjava/lang/String;)V

    :cond_1cc
    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectionChanged:Z

    if-eqz v0, :cond_1db

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    iget-object v3, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->selectedBubble:Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    invoke-interface {v0, v3}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->selectionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_1db
    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expandedChanged:Z

    if-eqz v0, :cond_1f5

    iget-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleData$Update;->expanded:Z

    if-eqz v0, :cond_1f5

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1100(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;->expansionChanged(Z)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v0

    invoke-interface {v0, v2, v1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->requestNotificationShadeTopUi(ZLjava/lang/String;)V

    :cond_1f5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1200(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    move-result-object v0

    const-string v1, "BubbleData.Listener.applyUpdate"

    invoke-interface {v0, v1}, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;->notifyInvalidateNotifications(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->updateBubbleViews()V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1600(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    move-result-object v0

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->access$500(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;)Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$CachedState;->update(Lcom/android/wm/shell/bubbles/BubbleData$Update;)V

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->isShowingAsBubbleBar()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;

    move-result-object v0

    if-eqz v0, :cond_235

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleData$Update;->toBubbleBarUpdate()Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;->anythingChanged()Z

    move-result v0

    if-eqz v0, :cond_235

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$7;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$1700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/android/wm/shell/bubbles/Bubbles$BubbleStateListener;->onBubbleStateChange(Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;)V

    :cond_235
    return-void
.end method
