.class public final synthetic Lcom/android/wm/shell/startingsurface/a;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/reflect/InvocationHandler;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/startingsurface/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/wm/shell/startingsurface/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/wm/shell/startingsurface/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Class;)V
    .registers 4

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/startingsurface/a;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iget v0, p0, Lcom/android/wm/shell/startingsurface/a;->a:I

    packed-switch v0, :pswitch_data_38

    goto :goto_2b

    :pswitch_6  #0x2
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/app/NotificationManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_13  #0x1
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/CommonServiceProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_20  #0x0
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Class;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/android/wm/shell/startingsurface/DummyClassHelper;->a(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :goto_2b
    iget-object v0, p0, Lcom/android/wm/shell/startingsurface/a;->b:Ljava/lang/Object;

    check-cast v0, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;

    iget-object p0, p0, Lcom/android/wm/shell/startingsurface/a;->c:Ljava/lang/Object;

    check-cast p0, Landroid/content/Context;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;->a(Lcom/oplus/tingle/ipc/serviceproxy/pm/PackageManagerProxy;Landroid/content/Context;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :pswitch_data_38
    .packed-switch 0x0
        :pswitch_20  #00000000
        :pswitch_13  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
