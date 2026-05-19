.class final Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;->doInitSdk(Lcom/oplus/seedling/sdk/callback/InitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/j;",
        "Lkotlin/jvm/functions/Function2<",
        "Lm7/j0;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.seedling.sdk.plugin.PluginManager$doInitSdk$1$2"
    f = "PluginManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $initCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

.field public final synthetic $installMonitorCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

.field public label:I

.field public final synthetic this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;",
            "Lcom/oplus/seedling/sdk/callback/InitCallback;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$installMonitorCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$initCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ll4/d<",
            "*>;)",
            "Ll4/d<",
            "Lh4/z;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$installMonitorCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$initCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;Lcom/oplus/seedling/sdk/callback/InitCallback;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lm7/j0;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->label:I

    if-nez v0, :cond_15

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$installMonitorCallback:Lcom/oplus/seedling/sdk/plugin/PluginManager$InstallMonitor;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$doInitSdk$1$2;->$initCallback:Lcom/oplus/seedling/sdk/callback/InitCallback;

    invoke-static {p1, v0, p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$invokeInitSdk(Lcom/oplus/seedling/sdk/plugin/PluginManager;Lcom/oplus/seedling/sdk/callback/InstallMonitorCallback;Lcom/oplus/seedling/sdk/callback/InitCallback;)V

    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_15
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
