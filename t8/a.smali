.class public final synthetic Lt8/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oplus/smartsdk/SmartAPICallback;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lpantanal/app/app_card/engine/SmartEngine;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;I)V
    .registers 4

    iput p3, p0, Lt8/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lt8/a;->b:Lpantanal/app/app_card/engine/SmartEngine;

    iput-object p2, p0, Lt8/a;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final onCall(Lcom/oplus/smartsdk/ISmartViewApi;)V
    .registers 3

    iget v0, p0, Lt8/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object v0, p0, Lt8/a;->b:Lpantanal/app/app_card/engine/SmartEngine;

    iget-object p0, p0, Lt8/a;->c:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->b(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :goto_e
    iget-object v0, p0, Lt8/a;->b:Lpantanal/app/app_card/engine/SmartEngine;

    iget-object p0, p0, Lt8/a;->c:Landroid/view/View;

    invoke-static {v0, p0, p1}, Lpantanal/app/app_card/engine/SmartEngine;->g(Lpantanal/app/app_card/engine/SmartEngine;Landroid/view/View;Lcom/oplus/smartsdk/ISmartViewApi;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
