.class final Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "pantanal.content.base.IServiceListCenter$queryAndNotify$2$1"
    f = "IServiceListCenter.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entranceType:Ljava/lang/Integer;

.field public final synthetic $newList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field public label:I

.field public final synthetic this$0:Lpantanal/content/base/IServiceListCenter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lpantanal/content/base/IServiceListCenter<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/content/base/IServiceListCenter<",
            "TT;>;",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/lang/Integer;",
            "Ll4/d<",
            "-",
            "Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    iput-object p2, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$newList:Ljava/util/List;

    iput-object p3, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$entranceType:Ljava/lang/Integer;

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

    new-instance p1, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;

    iget-object v0, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    iget-object v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$newList:Ljava/util/List;

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$entranceType:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p0, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;-><init>(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 26

    move-object/from16 v0, p0

    sget-object v1, Lm4/a;->a:Lm4/a;

    iget v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->label:I

    if-nez v1, :cond_64

    invoke-static/range {p1 .. p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    iget-object v2, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$newList:Ljava/util/List;

    invoke-static {v1, v2}, Lpantanal/content/base/IServiceListCenter;->access$updateRecommendList(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;)V

    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$newList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_31

    sget-object v2, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v1}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0xfc

    const/4 v12, 0x0

    const-string v4, "list from ums is empty!"

    invoke-static/range {v2 .. v12}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->w$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    goto :goto_5a

    :cond_31
    sget-object v13, Ly8/c;->a:Ly8/c;

    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v1}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v14

    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$newList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "received data from ums,size = "

    const-string v3, ",begin notify observers!"

    invoke-static {v2, v1, v3}, Landroidx/constraintlayout/core/a;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0xf8

    const/16 v23, 0x0

    invoke-static/range {v13 .. v23}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    :goto_5a
    iget-object v1, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->this$0:Lpantanal/content/base/IServiceListCenter;

    iget-object v0, v0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;->$entranceType:Ljava/lang/Integer;

    invoke-static {v1, v0}, Lpantanal/content/base/IServiceListCenter;->access$notifyObserver(Lpantanal/content/base/IServiceListCenter;Ljava/lang/Integer;)V

    sget-object v0, Lh4/z;->a:Lh4/z;

    return-object v0

    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
