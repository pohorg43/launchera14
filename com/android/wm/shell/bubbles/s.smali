.class public final synthetic Lcom/android/wm/shell/bubbles/s;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;ZI)V
    .registers 5

    iput p3, p0, Lcom/android/wm/shell/bubbles/s;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/s;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/s;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/s;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_16

    :pswitch_6  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/s;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/s;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->g(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    return-void

    :pswitch_e  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/s;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/s;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->t(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    return-void

    :goto_16
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/s;->b:Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-boolean p0, p0, Lcom/android/wm/shell/bubbles/s;->c:Z

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->o(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_e  #00000000
        :pswitch_6  #00000001
    .end packed-switch
.end method
