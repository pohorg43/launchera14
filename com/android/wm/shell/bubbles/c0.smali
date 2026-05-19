.class public final synthetic Lcom/android/wm/shell/bubbles/c0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/c0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/c0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/c0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/c0;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/c0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    check-cast p1, Lcom/android/wm/shell/bubbles/BubbleController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->b(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/BubbleController;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/c0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController;

    check-cast p1, Lcom/android/wm/shell/draganddrop/DragAndDropController;

    invoke-static {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->j(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/draganddrop/DragAndDropController;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
