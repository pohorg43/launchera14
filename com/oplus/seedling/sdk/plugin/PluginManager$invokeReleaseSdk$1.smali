.class final Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/plugin/PluginManager;->invokeReleaseSdk()V
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
        "Lh4/k<",
        "+",
        "Lh4/z;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "com.oplus.seedling.sdk.plugin.PluginManager$invokeReleaseSdk$1"
    f = "PluginManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public label:I

.field public final synthetic this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;


# direct methods
.method public constructor <init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ll4/d;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 3
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

    new-instance p1, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    invoke-direct {p1, p0, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;-><init>(Lcom/oplus/seedling/sdk/plugin/PluginManager;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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
            "Lh4/k<",
            "Lh4/z;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->label:I

    if-nez v0, :cond_63

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object p1, Ly8/c;->a:Ly8/c;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    const-string v2, "PluginManager"

    const-string v3, "Start invoke release sdk,step2"

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object p0, p0, Lcom/oplus/seedling/sdk/plugin/PluginManager$invokeReleaseSdk$1;->this$0:Lcom/oplus/seedling/sdk/plugin/PluginManager;

    :try_start_1e
    invoke-static {p0}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->access$loadInitManager(Lcom/oplus/seedling/sdk/plugin/PluginManager;)Lcom/oplus/seedling/sdk/manager/IInitManager;

    move-result-object p0

    if-eqz p0, :cond_2a

    invoke-interface {p0}, Lcom/oplus/seedling/sdk/manager/IInitManager;->releaseSdk()V

    sget-object p0, Lh4/z;->a:Lh4/z;

    goto :goto_2b

    :cond_2a
    const/4 p0, 0x0

    :goto_2b
    if-nez p0, :cond_3e

    const-string v2, "PluginManager"

    const-string v3, "releaseSdk failed via manager is null."

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xfc

    const/4 v11, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v11}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_3e
    sget-object p0, Lh4/z;->a:Lh4/z;
    :try_end_40
    .catchall {:try_start_1e .. :try_end_40} :catchall_41

    goto :goto_46

    :catchall_41
    move-exception p0

    invoke-static {p0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    :goto_46
    invoke-static {p0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v8

    if-eqz v8, :cond_5d

    sget-object v0, Ly8/c;->a:Ly8/c;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x7c

    const/4 v10, 0x0

    const-string v1, "PluginManager"

    const-string v2, "Exception happen for invoke release sdk "

    invoke-static/range {v0 .. v10}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_5d
    new-instance p1, Lh4/k;

    invoke-direct {p1, p0}, Lh4/k;-><init>(Ljava/lang/Object;)V

    return-object p1

    :cond_63
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
