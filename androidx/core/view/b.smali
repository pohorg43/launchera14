.class public final synthetic Landroidx/core/view/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Landroidx/core/view/DragStartHelper;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/views/OplusClearAllPanelView;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Landroidx/core/view/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .registers 3

    iget v0, p0, Landroidx/core/view/b;->a:I

    packed-switch v0, :pswitch_data_2a

    goto :goto_21

    :pswitch_6  #0x2
    iget-object p0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;

    invoke-static {p0, p1}, Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;->a(Lcom/android/launcher3/taskbar/TaskbarViewController$TaskbarViewCallbacks;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_f  #0x1
    iget-object p0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;

    invoke-static {p0, p1}, Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;->b(Lcom/android/launcher3/secondarydisplay/SecondaryDragLayer;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_18  #0x0
    iget-object p0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast p0, Landroidx/core/view/DragStartHelper;

    invoke-virtual {p0, p1}, Landroidx/core/view/DragStartHelper;->onLongClick(Landroid/view/View;)Z

    move-result p0

    return p0

    :goto_21
    iget-object p0, p0, Landroidx/core/view/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/views/OplusClearAllPanelView;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/views/OplusClearAllPanelView;->a(Lcom/oplus/quickstep/views/OplusClearAllPanelView;Landroid/view/View;)Z

    move-result p0

    return p0

    :pswitch_data_2a
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_f  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
