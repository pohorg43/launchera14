.class public final synthetic Lcom/android/wm/shell/splitscreen/tips/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/splitscreen/DividerMenu;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsManager;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .registers 2

    iget v0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->a:I

    packed-switch v0, :pswitch_data_26

    goto :goto_1e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/splitscreen/DividerMenu;

    invoke-static {p0}, Lcom/oplus/splitscreen/DividerMenu;->b(Lcom/oplus/splitscreen/DividerMenu;)V

    return-void

    :pswitch_e  #0x1
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;

    invoke-static {p0}, Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;->b(Lcom/oplus/quickstep/relay/widget/RecentRelayTipsView;)V

    return-void

    :pswitch_16  #0x0
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;

    invoke-static {p0}, Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;->a(Lcom/android/wm/shell/splitscreen/tips/SplitTipsManager;)V

    return-void

    :goto_1e
    iget-object p0, p0, Lcom/android/wm/shell/splitscreen/tips/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/tips/TipsManager;

    invoke-static {p0}, Lcom/oplus/zoom/ui/tips/TipsManager;->c(Lcom/oplus/zoom/ui/tips/TipsManager;)V

    return-void

    :pswitch_data_26
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_e  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
