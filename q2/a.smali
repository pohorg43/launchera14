.class public final synthetic Lq2/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lq2/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq2/a;->c:Landroid/content/Context;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lq2/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lq2/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lq2/a;->c:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lq2/a;->a:I

    packed-switch v0, :pswitch_data_1c

    goto :goto_11

    :pswitch_6  #0x0
    iget-object v0, p0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;

    iget-object p0, p0, Lq2/a;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/app/ActivityManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_11
    iget-object v0, p0, Lq2/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;

    iget-object p0, p0, Lq2/a;->c:Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/net/wifi/WifiManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_6  #00000000
    .end packed-switch
.end method
