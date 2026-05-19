.class public final synthetic Lcom/oplus/card/pantanal/application/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lcom/oplus/card/pantanal/application/PantanalCardService;

.field public final synthetic c:Landroid/content/Context;

.field public final synthetic d:Lkotlin/jvm/functions/Function1;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;I)V
    .registers 5

    iput p4, p0, Lcom/oplus/card/pantanal/application/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/card/pantanal/application/a;->b:Lcom/oplus/card/pantanal/application/PantanalCardService;

    iput-object p2, p0, Lcom/oplus/card/pantanal/application/a;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/oplus/card/pantanal/application/a;->d:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget v0, p0, Lcom/oplus/card/pantanal/application/a;->a:I

    packed-switch v0, :pswitch_data_1a

    goto :goto_10

    :pswitch_6  #0x0
    iget-object v0, p0, Lcom/oplus/card/pantanal/application/a;->b:Lcom/oplus/card/pantanal/application/PantanalCardService;

    iget-object v1, p0, Lcom/oplus/card/pantanal/application/a;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/card/pantanal/application/a;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/pantanal/application/PantanalCardService;->b(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_10
    iget-object v0, p0, Lcom/oplus/card/pantanal/application/a;->b:Lcom/oplus/card/pantanal/application/PantanalCardService;

    iget-object v1, p0, Lcom/oplus/card/pantanal/application/a;->c:Landroid/content/Context;

    iget-object p0, p0, Lcom/oplus/card/pantanal/application/a;->d:Lkotlin/jvm/functions/Function1;

    invoke-static {v0, v1, p0}, Lcom/oplus/card/pantanal/application/PantanalCardService;->a(Lcom/oplus/card/pantanal/application/PantanalCardService;Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    return-void

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
