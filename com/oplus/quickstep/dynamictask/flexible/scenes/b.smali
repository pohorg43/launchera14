.class public final synthetic Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;I)V
    .registers 4

    iput p2, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;->a:I

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;->b:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget v0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;->a:I

    packed-switch v0, :pswitch_data_14

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;->b:Lkotlin/jvm/functions/Function1;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {p0, p1}, Lcom/oplus/quickstep/dynamictask/flexible/scenes/ReleaseSceneAnimLaunchTask;->c(Lkotlin/jvm/functions/Function1;Ljava/lang/Boolean;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/oplus/quickstep/dynamictask/flexible/scenes/b;->b:Lkotlin/jvm/functions/Function1;

    invoke-static {p0, p1}, Lcom/oplus/remoteanim/OtherAppsRemoteProxyHelper$RPBinder;->b(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
