.class public final synthetic Lcom/android/wm/shell/bubbles/i;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleController;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/function/Consumer;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/i;->b:Lcom/android/wm/shell/bubbles/BubbleController;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/i;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/android/wm/shell/bubbles/i;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_12

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/i;->b:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->b(Lcom/android/wm/shell/bubbles/BubbleController;Lcom/android/wm/shell/bubbles/BubbleController$UserBubbleData;Ljava/util/List;)V

    return-void

    :goto_12
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/i;->b:Lcom/android/wm/shell/bubbles/BubbleController;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/i;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/function/Consumer;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, p0, p1}, Lcom/android/wm/shell/bubbles/BubbleController;->m(Lcom/android/wm/shell/bubbles/BubbleController;Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
