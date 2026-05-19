.class Lcom/android/wm/shell/bubbles/BubbleStackView$8;
.super Lcom/android/wm/shell/bubbles/RelativeTouchListener;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/wm/shell/bubbles/BubbleStackView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .registers 2

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-direct {p0}, Lcom/android/wm/shell/bubbles/RelativeTouchListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onDown(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 3
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    move-result-object p0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onDown(FF)V

    const/4 p0, 0x1

    return p0
.end method

.method public onMove(Landroid/view/View;Landroid/view/MotionEvent;FFFF)V
    .registers 7
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    move-result-object p0

    invoke-interface {p0, p5, p6}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onMove(FF)V

    return-void
.end method

.method public onUp(Landroid/view/View;Landroid/view/MotionEvent;FFFFFF)V
    .registers 9
    .param p1  # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2  # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$8;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->access$3600(Lcom/android/wm/shell/bubbles/BubbleStackView;)Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;

    move-result-object p0

    invoke-interface {p0, p7, p8}, Lcom/android/wm/shell/bubbles/BubblesNavBarMotionEventHandler$MotionEventListener;->onUp(FF)V

    return-void
.end method
