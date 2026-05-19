.class public final synthetic Landroidx/core/view/c;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleExpandedView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/view/c;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Landroidx/core/view/c;->a:I

    packed-switch v0, :pswitch_data_22

    goto :goto_18

    :pswitch_6  #0x1
    iget-object p0, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;->a(Lcom/android/launcher3/allapps/LetterIndexFastScrollHelper;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_f  #0x0
    iget-object p0, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/DragStartHelper;

    invoke-virtual {p0, p1, p2}, Landroidx/core/view/DragStartHelper;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :goto_18
    iget-object p0, p0, Landroidx/core/view/c;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleExpandedView;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleExpandedView;->c(Lcom/android/wm/shell/bubbles/BubbleExpandedView;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_f  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
