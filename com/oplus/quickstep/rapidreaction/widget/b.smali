.class public final synthetic Lcom/oplus/quickstep/rapidreaction/widget/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->a:I

    packed-switch v0, :pswitch_data_1e

    goto :goto_10

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;->c(Lcom/oplus/quickstep/rapidreaction/widget/TriggerPanelView;Ljava/lang/Boolean;)V

    return-void

    :goto_10
    iget-object p0, p0, Lcom/oplus/quickstep/rapidreaction/widget/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;->i(Lcom/oplus/quickstep/shortcuts/OplusPinShortcut;Z)V

    return-void

    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
