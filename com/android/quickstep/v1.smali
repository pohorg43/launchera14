.class public final synthetic Lcom/android/quickstep/v1;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/quickstep/SystemUiProxy;)V
    .registers 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/quickstep/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/splitscreen/SplitScreenController;)V
    .registers 3

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/quickstep/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;)V
    .registers 3

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/quickstep/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Map;)V
    .registers 3

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/quickstep/v1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Lcom/android/quickstep/v1;->a:I

    packed-switch v0, :pswitch_data_3a

    goto :goto_2e

    :pswitch_6  #0x2
    iget-object p0, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-interface {p0, p1, p2}, Lcom/oplus/compat/content/pm/IPackageDeleteObserverNative;->packageDeleted(Ljava/lang/String;I)V

    return-void

    :pswitch_16  #0x1
    iget-object p0, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/wm/shell/splitscreen/SplitScreenController;

    check-cast p1, Ljava/io/PrintWriter;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/splitscreen/SplitScreenController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    return-void

    :pswitch_22  #0x0
    iget-object p0, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    check-cast p0, Lcom/android/quickstep/SystemUiProxy;

    check-cast p1, Landroid/window/RemoteTransition;

    check-cast p2, Landroid/window/TransitionFilter;

    invoke-virtual {p0, p1, p2}, Lcom/android/quickstep/SystemUiProxy;->registerRemoteTransition(Landroid/window/RemoteTransition;Landroid/window/TransitionFilter;)V

    return-void

    :goto_2e
    iget-object p0, p0, Lcom/android/quickstep/v1;->b:Ljava/lang/Object;

    check-cast p0, Ljava/util/Map;

    check-cast p1, Ljava/lang/Class;

    check-cast p2, Ljava/lang/Class;

    invoke-interface {p0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :pswitch_data_3a
    .packed-switch 0x0
        :pswitch_22  #00000000
        :pswitch_16  #00000001
        :pswitch_6  #00000002
    .end packed-switch
.end method
