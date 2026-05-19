.class Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;
.super Landroid/view/ViewOutlineProvider;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView$1;->this$0:Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;->access$000(Lcom/android/wm/shell/bubbles/bar/BubbleBarExpandedView;)F

    move-result v5

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
