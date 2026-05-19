.class final Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->callCardServiceProvider(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
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
    c = "com.oplus.seedling.sdk.cardservice.CardServiceEntranceHelper$callCardServiceProvider$1"
    f = "CardServiceEntranceHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $entranceAuthorityName:Ljava/lang/String;

.field public final synthetic $methodName:Ljava/lang/String;

.field public label:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ll4/d<",
            "-",
            "Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iput-object p3, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

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

    new-instance p1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;

    iget-object v0, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object p0, p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p0, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 30

    move-object/from16 v1, p0

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->label:I

    if-nez v0, :cond_173

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    invoke-static {v0}, Lw8/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->access$getUmsCardServiceUri$p()Landroid/net/Uri;

    move-result-object v0

    goto :goto_21

    :cond_1d
    invoke-static {}, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper;->access$getAssistantCardServiceUri$p()Landroid/net/Uri;

    move-result-object v0

    :goto_21
    move-object v3, v0

    sget-object v0, Ly8/c;->a:Ly8/c;

    iget-object v4, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v5, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "callCardServiceProvider,uri = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, ", methodName="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",authority = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-static {v6, v5, v4}, Landroidx/concurrent/futures/b;->a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    const-string v5, "CardServiceChannelHelper"

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    new-instance v15, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v15}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    iget-object v4, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$context:Landroid/content/Context;

    iget-object v14, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v5, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    :try_start_62
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/ContentResolver;->acquireUnstableContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v4

    iput-object v4, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Landroid/content/ContentProviderClient;

    const/4 v13, 0x0

    if-eqz v4, :cond_7d

    invoke-virtual {v4, v14, v5, v13}, Landroid/content/ContentProviderClient;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v4

    if-nez v4, :cond_78

    goto :goto_7d

    :cond_78
    move-object/from16 v16, v3

    move-object v13, v4

    move-object v3, v14

    goto :goto_a9

    :cond_7d
    :goto_7d
    const-string v5, "CardServiceChannelHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client is null,uri = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6
    :try_end_90
    .catchall {:try_start_62 .. :try_end_90} :catchall_f5

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    move-object v4, v0

    move-object/from16 v18, v13

    move/from16 v13, v16

    move-object/from16 v16, v3

    move-object v3, v14

    move-object/from16 v14, v17

    :try_start_a4
    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    move-object/from16 v13, v18

    :goto_a9
    const-string v4, "initEntranceChannel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_bd

    if-eqz v13, :cond_ba

    const-string v0, "initEntranceChannelResult"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_ba
    iput-boolean v5, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_f0

    :cond_bd
    const-string v4, "releaseEntranceChannel"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d0

    if-eqz v13, :cond_cd

    const-string v0, "releaseEntranceChannelResult"

    invoke-virtual {v13, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    :cond_cd
    iput-boolean v5, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_f0

    :cond_d0
    const-string v5, "CardServiceChannelHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not match method = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0xfc

    const/4 v14, 0x0

    move-object v4, v0

    invoke-static/range {v4 .. v14}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_f0
    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_f2
    .catchall {:try_start_a4 .. :try_end_f2} :catchall_f3

    goto :goto_fc

    :catchall_f3
    move-exception v0

    goto :goto_f8

    :catchall_f5
    move-exception v0

    move-object/from16 v16, v3

    :goto_f8
    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_fc
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_128

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v2, Landroid/content/ContentProviderClient;

    if-eqz v2, :cond_10b

    invoke-virtual {v2}, Landroid/content/ContentProviderClient;->close()V

    :cond_10b
    const/4 v2, 0x0

    iput-boolean v2, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    sget-object v3, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v2, "callCardServiceProvider failed,msg = "

    invoke-static {v2, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xfc

    const/4 v13, 0x0

    const-string v4, "CardServiceChannelHelper"

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_128
    sget-object v17, Ly8/c;->a:Ly8/c;

    iget-object v0, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$methodName:Ljava/lang/String;

    iget-object v1, v1, Lcom/oplus/seedling/sdk/cardservice/CardServiceEntranceHelper$callCardServiceProvider$1;->$entranceAuthorityName:Ljava/lang/String;

    iget-boolean v2, v15, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callCardServiceProvider "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", method= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",args = "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",callResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    const/16 v26, 0xfc

    const/16 v27, 0x0

    const-string v18, "CardServiceChannelHelper"

    invoke-static/range {v17 .. v27}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_173
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
