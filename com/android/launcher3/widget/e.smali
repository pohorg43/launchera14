.class public final synthetic Lcom/android/launcher3/widget/e;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/launcher3/widget/OplusWidgetCell;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/launcher3/widget/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/launcher3/widget/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/launcher3/widget/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/launcher3/widget/e;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 4

    iget v0, p0, Lcom/android/launcher3/widget/e;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_21

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitControlBarManager;->b(Lcom/android/wm/shell/splitscreen/SplitControlBarManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_f  #0x1
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;

    invoke-static {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;->d(Lcom/android/wm/shell/splitscreen/MinimizedSplitManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_18  #0x0
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/widget/OplusWidgetCell;

    invoke-static {p0, p1, p2}, Lcom/android/launcher3/widget/OplusWidgetCell;->c(Lcom/android/launcher3/widget/OplusWidgetCell;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :goto_21
    iget-object p0, p0, Lcom/android/launcher3/widget/e;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;

    invoke-static {p0, p1, p2}, Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;->a(Lcom/oplus/zoom/zoommenu/SimpleModeControlViewManager;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_f  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
