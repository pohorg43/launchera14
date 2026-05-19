.class public final synthetic Lcom/nearme/instant/xcard/b;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/nearme/instant/xcard/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/b;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/nearme/instant/xcard/b;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nearme/instant/xcard/b;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/nearme/instant/xcard/b;->a:I

    packed-switch v0, :pswitch_data_16

    goto :goto_d

    :pswitch_6  #0x0
    iget-object p0, p0, Lcom/nearme/instant/xcard/b;->b:Ljava/lang/Object;

    invoke-static {p0, p1, p2, p3}, Lcom/nearme/instant/xcard/CardClient;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_d
    iget-object p0, p0, Lcom/nearme/instant/xcard/b;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;

    invoke-static {p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/view/WindowManagerProxy;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
