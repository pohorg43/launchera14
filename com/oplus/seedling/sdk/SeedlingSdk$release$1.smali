.class final Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/SeedlingSdk;->release()V
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
    c = "com.oplus.seedling.sdk.SeedlingSdk$release$1"
    f = "SeedlingSdk.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $method:Ljava/lang/String;

.field public final synthetic $startTime:J

.field public label:I


# direct methods
.method public constructor <init>(Ljava/lang/String;JLl4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "J",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$method:Ljava/lang/String;

    iput-wide p2, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$startTime:J

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ln4/j;-><init>(ILl4/d;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ll4/d;)Ll4/d;
    .registers 6
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

    new-instance p1, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$method:Ljava/lang/String;

    iget-wide v1, p0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$startTime:J

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;-><init>(Ljava/lang/String;JLl4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 22

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v1, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->label:I

    if-nez v1, :cond_68

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    sget-object v1, Ly8/c;->a:Ly8/c;

    iget-object v2, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$method:Ljava/lang/String;

    const-string v3, " Start release. in launch"

    invoke-static {v2, v3}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0xfc

    const/16 v19, 0x0

    const-string v3, "SeedlingSdkInterface"

    move-object v2, v1

    move-object v6, v13

    move v7, v14

    move v8, v15

    move/from16 v9, v16

    move-object/from16 v10, v17

    move/from16 v11, v18

    move-object/from16 v12, v19

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v2, Lcom/oplus/seedling/sdk/plugin/PluginManager;->Companion:Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager$Companion;->getSInstance()Lcom/oplus/seedling/sdk/plugin/PluginManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oplus/seedling/sdk/plugin/PluginManager;->release()V

    iget-object v2, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$method:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, v0, Lcom/oplus/seedling/sdk/SeedlingSdk$release$1;->$startTime:J

    sub-long/2addr v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " End release. in launch,cost "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "ms"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const-string v3, "SeedlingSdkInterface"

    move-object v2, v1

    move-object v6, v13

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_68
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
