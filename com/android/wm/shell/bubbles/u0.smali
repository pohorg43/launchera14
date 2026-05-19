.class public final synthetic Lcom/android/wm/shell/bubbles/u0;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V
    .registers 3

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/bubbles/u0;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;I)V
    .registers 4

    iput p2, p0, Lcom/android/wm/shell/bubbles/u0;->a:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_6

    const/4 v0, 0x2

    :cond_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/u0;->a:I

    packed-switch v0, :pswitch_data_2e

    goto :goto_26

    :pswitch_6  #0x3
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->C(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    return-void

    :pswitch_e  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->Q(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->q(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->f(Lcom/android/wm/shell/bubbles/BubbleStackView;)V

    return-void

    :goto_26
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/u0;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    invoke-static {p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->f(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;)V

    return-void

    :pswitch_data_2e
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_16  #00000001
        :pswitch_e  #00000002
        :pswitch_6  #00000003
    .end packed-switch
.end method
