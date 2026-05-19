.class public final synthetic Lcom/oplus/zoom/ui/floathandle/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/zoom/ui/tips/TipsController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/oplus/zoom/ui/floathandle/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oplus/zoom/ui/floathandle/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget v0, p0, Lcom/oplus/zoom/ui/floathandle/a;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_e

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;

    invoke-static {p0}, Lcom/oplus/zoom/ui/floathandle/FloatHandleController;->b(Lcom/oplus/zoom/ui/floathandle/FloatHandleController;)V

    return-void

    :goto_e
    iget-object p0, p0, Lcom/oplus/zoom/ui/floathandle/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/zoom/ui/tips/TipsController;

    invoke-static {p0}, Lcom/oplus/zoom/ui/tips/TipsController;->b(Lcom/oplus/zoom/ui/tips/TipsController;)V

    return-void

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
