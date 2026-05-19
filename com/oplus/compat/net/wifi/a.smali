.class public final synthetic Lcom/oplus/compat/net/wifi/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/appswitch/AppSwitchController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/dock/DockIconView;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/compat/net/wifi/a;->a:I

    packed-switch v0, :pswitch_data_36

    goto :goto_2c

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/dock/DockIconView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dock/DockIconView;->e(Lcom/oplus/quickstep/dock/DockIconView;Ljava/lang/Boolean;)V

    return-void

    :pswitch_10  #0x1
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/appswitch/AppSwitchController;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/appswitch/AppSwitchController;->e(Lcom/oplus/quickstep/appswitch/AppSwitchController;Z)V

    return-void

    :pswitch_1e  #0x0
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-interface {p0, p1}, Lcom/oplus/compat/net/wifi/WifiManagerNative$ActionListenerNative;->onFailure(I)V

    return-void

    :goto_2c
    iget-object p0, p0, Lcom/oplus/compat/net/wifi/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;

    check-cast p1, Lcom/android/quickstep/util/AnimatorControllerWithResistance;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;->J0(Lcom/oplus/quickstep/gesture/OplusBaseSwipeUpHandler;Lcom/android/quickstep/util/AnimatorControllerWithResistance;)V

    return-void

    :pswitch_data_36
    .packed-switch 0x0
        :pswitch_1e  #00000000
        :pswitch_10  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
