.class Lcom/android/wm/shell/bubbles/BubbleController$6;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/wm/shell/bubbles/BubbleController$BubbleViewCallback;


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

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    return-void
.end method

.method public bubbleOrderChanged(Ljava/util/List;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/wm/shell/bubbles/Bubble;",
            ">;Z)V"
        }
    .end annotation

    return-void
.end method

.method public expansionChanged(Z)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    move-result-object v0

    if-eqz v0, :cond_29

    if-nez p1, :cond_14

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->collapse()V

    goto :goto_29

    :cond_14
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p1}, Lcom/android/wm/shell/bubbles/BubbleController;->access$400(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/BubbleData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/wm/shell/bubbles/BubbleData;->getSelectedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    move-result-object p1

    if-eqz p1, :cond_29

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_29
    :goto_29
    return-void
.end method

.method public removeBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    return-void
.end method

.method public selectionChanged(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V
    .registers 3

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    move-result-object v0

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    move-result v0

    if-eqz v0, :cond_19

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;->showExpandedView(Lcom/android/wm/shell/bubbles/BubbleViewProvider;)V

    :cond_19
    return-void
.end method

.method public suppressionChanged(Lcom/android/wm/shell/bubbles/Bubble;Z)V
    .registers 3

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$6;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController;->access$700(Lcom/android/wm/shell/bubbles/BubbleController;)Lcom/android/wm/shell/bubbles/bar/BubbleBarLayerView;

    return-void
.end method

.method public updateBubble(Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 2

    return-void
.end method
