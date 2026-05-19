.class final Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/app/groupcard/utils/PocketCardIntentManager;->getJumpUrl(Landroid/content/Context;Lkotlin/jvm/functions/Function0;)V
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
    c = "pantanal.app.groupcard.utils.PocketCardIntentManager$getJumpUrl$1"
    f = "PocketCardIntentManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $callback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;"
        }
    .end annotation
.end field

.field public final synthetic $context:Landroid/content/Context;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I

.field public final synthetic this$0:Lpantanal/app/groupcard/utils/PocketCardIntentManager;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lpantanal/app/groupcard/utils/PocketCardIntentManager;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lh4/z;",
            ">;",
            "Landroid/content/Context;",
            "Lpantanal/app/groupcard/utils/PocketCardIntentManager;",
            "Ll4/d<",
            "-",
            "Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$callback:Lkotlin/jvm/functions/Function0;

    iput-object p2, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$context:Landroid/content/Context;

    iput-object p3, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->this$0:Lpantanal/app/groupcard/utils/PocketCardIntentManager;

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

    new-instance v0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;

    iget-object v1, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$callback:Lkotlin/jvm/functions/Function0;

    iget-object v2, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$context:Landroid/content/Context;

    iget-object p0, p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->this$0:Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    invoke-direct {v0, v1, v2, p0, p2}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;-><init>(Lkotlin/jvm/functions/Function0;Landroid/content/Context;Lpantanal/app/groupcard/utils/PocketCardIntentManager;Ll4/d;)V

    iput-object p1, v0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20

    move-object/from16 v1, p0

    const-string v0, "POCKET_LAST_URL"

    const-string v2, ""

    const-string v3, "POCKET_PRIORITY_URL"

    const-string v4, "com.oplus.pantanal.ums"

    sget-object v5, Lm4/a;->a:Lm4/a;

    iget v5, v1, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->label:I

    if-nez v5, :cond_8b

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v5, v1, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lm7/j0;

    iget-object v5, v1, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$context:Landroid/content/Context;

    iget-object v6, v1, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->this$0:Lpantanal/app/groupcard/utils/PocketCardIntentManager;

    :try_start_1b
    invoke-static {v5, v4, v3, v2}, Ly8/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-static {v6}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->access$getJumpUrlMap$p(Lpantanal/app/groupcard/utils/PocketCardIntentManager;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v3, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v5, v4, v0, v2}, Ly8/d;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v6}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->access$getJumpUrlMap$p(Lpantanal/app/groupcard/utils/PocketCardIntentManager;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v7, Ly8/c;->a:Ly8/c;

    const-string v8, "PocketCardIntentManager"

    invoke-static {v6}, Lpantanal/app/groupcard/utils/PocketCardIntentManager;->access$getJumpUrlMap$p(Lpantanal/app/groupcard/utils/PocketCardIntentManager;)Ljava/util/Map;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getJumpUrl jumpUrlMap:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0xfc

    const/16 v17, 0x0

    invoke-static/range {v7 .. v17}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->d$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    sget-object v0, Lh4/z;->a:Lh4/z;
    :try_end_5d
    .catchall {:try_start_1b .. :try_end_5d} :catchall_5e

    goto :goto_63

    :catchall_5e
    move-exception v0

    invoke-static {v0}, Lh4/l;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    :goto_63
    invoke-static {v0}, Lh4/k;->a(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_83

    sget-object v2, Ly8/c;->a:Ly8/c;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v3, "getJumpUrl error:"

    invoke-static {v3, v0}, La/b;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v3, "PocketCardIntentManager"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->e$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :cond_83
    iget-object v0, v1, Lpantanal/app/groupcard/utils/PocketCardIntentManager$getJumpUrl$1;->$callback:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_8b
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
