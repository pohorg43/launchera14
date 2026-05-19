.class public final Lio/branch/search/f1$i;
.super Ln4/j;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1;->a(Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;)Z
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
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl$zeroState$2"
    f = "KNetworkInterface.kt"
    l = {
        0x100,
        0x107
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Ljava/lang/Object;

.field public c:I

.field public final synthetic d:Lio/branch/search/f1;

.field public final synthetic e:Lio/branch/search/BranchZeroStateRequest;

.field public final synthetic f:Lio/branch/search/IBranchRemoteZeroStateEvents;


# direct methods
.method public constructor <init>(Lio/branch/search/f1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;Ll4/d;)V
    .registers 5

    iput-object p1, p0, Lio/branch/search/f1$i;->d:Lio/branch/search/f1;

    iput-object p2, p0, Lio/branch/search/f1$i;->e:Lio/branch/search/BranchZeroStateRequest;

    iput-object p3, p0, Lio/branch/search/f1$i;->f:Lio/branch/search/IBranchRemoteZeroStateEvents;

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

    const-string p1, "completion"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lio/branch/search/f1$i;

    iget-object v0, p0, Lio/branch/search/f1$i;->d:Lio/branch/search/f1;

    iget-object v1, p0, Lio/branch/search/f1$i;->e:Lio/branch/search/BranchZeroStateRequest;

    iget-object p0, p0, Lio/branch/search/f1$i;->f:Lio/branch/search/IBranchRemoteZeroStateEvents;

    invoke-direct {p1, v0, v1, p0, p2}, Lio/branch/search/f1$i;-><init>(Lio/branch/search/f1;Lio/branch/search/BranchZeroStateRequest;Lio/branch/search/IBranchRemoteZeroStateEvents;Ll4/d;)V

    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lio/branch/search/f1$i;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lio/branch/search/f1$i;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lio/branch/search/f1$i;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lio/branch/search/f1$i;->c:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_24

    if-eq v1, v3, :cond_18

    if-ne v1, v2, :cond_10

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_80

    :cond_10
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_18
    iget-object v1, p0, Lio/branch/search/f1$i;->b:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v3, p0, Lio/branch/search/f1$i;->a:Ljava/lang/Object;

    check-cast v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_3e

    :cond_24
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iget-object p1, p0, Lio/branch/search/f1$i;->d:Lio/branch/search/f1;

    iget-object v4, p0, Lio/branch/search/f1$i;->e:Lio/branch/search/BranchZeroStateRequest;

    iput-object v1, p0, Lio/branch/search/f1$i;->a:Ljava/lang/Object;

    iput-object v1, p0, Lio/branch/search/f1$i;->b:Ljava/lang/Object;

    iput v3, p0, Lio/branch/search/f1$i;->c:I

    invoke-virtual {p1, v4, p0}, Lio/branch/search/f1;->a(Lio/branch/search/BranchZeroStateRequest;Ll4/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3d

    return-object v0

    :cond_3d
    move-object v3, v1

    :goto_3e
    check-cast p1, Lio/branch/search/f5;

    instance-of v4, p1, Lio/branch/search/f5$b;

    if-eqz v4, :cond_63

    check-cast p1, Lio/branch/search/f5$b;

    invoke-virtual {p1}, Lio/branch/search/f5$b;->b()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    iget-object v4, p0, Lio/branch/search/f1$i;->e:Lio/branch/search/BranchZeroStateRequest;

    invoke-static {v4, p1}, Lio/branch/search/BranchRemoteZeroStateResult;->createFromJson(Lio/branch/search/BranchZeroStateRequest;Lorg/json/JSONObject;)Lh4/j;

    move-result-object p1

    iget-object v4, p1, Lh4/j;->a:Ljava/lang/Object;

    check-cast v4, Lio/branch/search/BranchRemoteZeroStateResult;

    iget-object p1, p1, Lh4/j;->b:Ljava/lang/Object;

    check-cast p1, Lio/branch/search/p0;

    invoke-virtual {p1}, Lio/branch/search/p0;->d()V

    new-instance p1, Lio/branch/search/f5$b;

    invoke-direct {p1, v4}, Lio/branch/search/f5$b;-><init>(Ljava/lang/Object;)V

    goto :goto_67

    :cond_63
    instance-of v4, p1, Lio/branch/search/f5$a;

    if-eqz v4, :cond_83

    :goto_67
    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    sget-object p1, Lm7/y0;->a:Lm7/y0;

    sget-object p1, Lr7/v;->a:Lm7/b2;

    new-instance v1, Lio/branch/search/f1$i$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lio/branch/search/f1$i$a;-><init>(Lio/branch/search/f1$i;Lkotlin/jvm/internal/Ref$ObjectRef;Ll4/d;)V

    iput-object v4, p0, Lio/branch/search/f1$i;->a:Ljava/lang/Object;

    iput-object v4, p0, Lio/branch/search/f1$i;->b:Ljava/lang/Object;

    iput v2, p0, Lio/branch/search/f1$i;->c:I

    invoke-static {p1, v1, p0}, Lm7/h;->e(Ll4/f;Lkotlin/jvm/functions/Function2;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_80

    return-object v0

    :cond_80
    :goto_80
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0

    :cond_83
    new-instance p0, Lh4/h;

    invoke-direct {p0}, Lh4/h;-><init>()V

    throw p0
.end method
