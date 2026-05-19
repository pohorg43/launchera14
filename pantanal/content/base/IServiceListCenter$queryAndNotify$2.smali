.class final Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lpantanal/content/base/IServiceListCenter;->queryAndNotify(Ljava/lang/Integer;I)V
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIServiceListCenter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IServiceListCenter.kt\npantanal/content/base/IServiceListCenter$queryAndNotify$2\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,478:1\n1#2:479\n*E\n"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "pantanal.content.base.IServiceListCenter$queryAndNotify$2"
    f = "IServiceListCenter.kt"
    l = {
        0xc4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $entranceType:Ljava/lang/Integer;

.field public final synthetic $recomdType:I

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
.method public constructor <init>(Lpantanal/content/base/IServiceListCenter;ILjava/lang/Integer;Ll4/d;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lpantanal/content/base/IServiceListCenter<",
            "TT;>;I",
            "Ljava/lang/Integer;",
            "Ll4/d<",
            "-",
            "Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    iput p2, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$recomdType:I

    iput-object p3, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$entranceType:Ljava/lang/Integer;

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

    new-instance p1, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;

    iget-object v0, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    iget v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$recomdType:I

    iget-object p0, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$entranceType:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p0, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;-><init>(Lpantanal/content/base/IServiceListCenter;ILjava/lang/Integer;Ll4/d;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lm7/j0;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->invoke(Lm7/j0;Ll4/d;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_86

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-static {p1}, Lpantanal/content/base/IServiceListCenter;->access$getRegisteredEntrance(Lpantanal/content/base/IServiceListCenter;)Ljava/util/Set;

    move-result-object p1

    sget-object v3, Ly8/c;->a:Ly8/c;

    iget-object v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v1}, Lpantanal/content/base/IServiceListCenter;->getLogTag()Ljava/lang/String;

    move-result-object v4

    iget v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$recomdType:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "queryAndNotify, registeredEntrances = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ",recomdType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0xf8

    const/4 v13, 0x0

    invoke-static/range {v3 .. v13}, Lcom/oplus/pantanal/log/common/ILog$DefaultImpls;->i$default(Lcom/oplus/pantanal/log/common/ILog;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;ZIZLjava/lang/Throwable;ILjava/lang/Object;)V

    iget-object v1, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    invoke-virtual {v1}, Lpantanal/content/base/IServiceListCenter;->getServiceDao()Lpantanal/content/base/IServiceDao;

    move-result-object v1

    iget-object v3, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$entranceType:Ljava/lang/Integer;

    if-eqz v3, :cond_69

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result p1

    new-array v3, v2, [Ljava/lang/Integer;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    aput-object v5, v3, v4

    invoke-static {v3}, Ly0/b;->f([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    :cond_69
    iget v3, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$recomdType:I

    invoke-virtual {v1, p1, v3}, Lpantanal/content/base/IServiceDao;->getCurrentList(Ljava/util/Set;I)Ljava/util/List;

    move-result-object p1

    sget-object v1, Lm7/y0;->a:Lm7/y0;

    sget-object v1, Lr7/v;->a:Lm7/b2;

    new-instance v3, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;

    iget-object v4, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->this$0:Lpantanal/content/base/IServiceListCenter;

    iget-object v5, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->$entranceType:Ljava/lang/Integer;

    const/4 v6, 0x0

    invoke-direct {v3, v4, p1, v5, v6}, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2$1;-><init>(Lpantanal/content/base/IServiceListCenter;Ljava/util/List;Ljava/lang/Integer;Ll4/d;)V

    iput v2, p0, Lpantanal/content/base/IServiceListCenter$queryAndNotify$2;->label:I

    invoke-static {v1, v3, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_86

    return-object v0

    :cond_86
    :goto_86
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
