.class public final synthetic Lcom/nearme/instant/xcard/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/nearme/instant/xcard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/a;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lorg/hapjs/card/api/CardService;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/nearme/instant/xcard/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nearme/instant/xcard/a;->a:I

    packed-switch v0, :pswitch_data_18

    goto :goto_f

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/nearme/instant/xcard/a;->b:Ljava/lang/Object;

    check-cast p0, Lorg/hapjs/card/api/CardService;

    invoke-static {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/CardClient;->d(Lorg/hapjs/card/api/CardService;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_f
    iget-object p0, p0, Lcom/nearme/instant/xcard/a;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/inner/WindowManagerInnerProxy;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
