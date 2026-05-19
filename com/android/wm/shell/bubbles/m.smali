.class public final synthetic Lcom/android/wm/shell/bubbles/m;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V
    .registers 4

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/IBubblesListener;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V
    .registers 4

    const/16 v0, 0x8

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x7

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V
    .registers 4

    const/4 v0, 0x6

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V
    .registers 4

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/bubbles/m;->a:I

    packed-switch v0, :pswitch_data_72

    goto :goto_66

    :pswitch_6  #0x7
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->t(Lcom/android/wm/shell/bubbles/BubbleStackView;Ljava/util/List;)V

    return-void

    :pswitch_12  #0x6
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Boolean;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController;->h(Ljava/util/function/Consumer;Ljava/lang/Boolean;)V

    return-void

    :pswitch_1e  #0x5
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/Bubble;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/Bubble;->a(Lcom/android/wm/shell/bubbles/Bubble;Lcom/android/wm/shell/bubbles/Bubbles$PendingIntentCanceledListener;)V

    return-void

    :pswitch_2a  #0x4
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/functions/Function1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->a(Lkotlin/jvm/functions/Function1;Ljava/util/List;)V

    return-void

    :pswitch_36  #0x3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/IBubblesListener;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;->d(Lcom/android/wm/shell/bubbles/BubbleController$IBubblesImpl;Lcom/android/wm/shell/bubbles/IBubblesListener;)V

    return-void

    :pswitch_42  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->q(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_4e  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->a(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Lcom/android/wm/shell/bubbles/Bubbles$SysuiProxy;)V

    return-void

    :pswitch_5a  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$1;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Landroid/graphics/Rect;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleController$1;->b(Lcom/android/wm/shell/bubbles/BubbleController$1;Landroid/graphics/Rect;)V

    return-void

    :goto_66
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/m;->b:Ljava/lang/Object;

    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleStackView;

    iget-object p0, p0, Lcom/android/wm/shell/bubbles/m;->c:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/bubbles/Bubble;

    invoke-static {v0, p0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->o(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/Bubble;)V

    return-void

    :pswitch_data_72
    .packed-switch 0x0
        :pswitch_5a  #00000000
        :pswitch_4e  #00000001
        :pswitch_42  #00000002
        :pswitch_36  #00000003
        :pswitch_2a  #00000004
        :pswitch_1e  #00000005
        :pswitch_12  #00000006
        :pswitch_6  #00000007
    .end packed-switch
.end method
