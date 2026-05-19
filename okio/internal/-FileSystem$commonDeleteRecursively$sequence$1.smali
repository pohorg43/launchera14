.class final Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;
.super Ln4/i;
.source ""

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/internal/-FileSystem;->commonDeleteRecursively(Lokio/FileSystem;Lokio/Path;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln4/i;",
        "Lkotlin/jvm/functions/Function2<",
        "Lj7/j<",
        "-",
        "Lokio/Path;",
        ">;",
        "Ll4/d<",
        "-",
        "Lh4/z;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ln4/e;
    c = "okio.internal.-FileSystem$commonDeleteRecursively$sequence$1"
    f = "FileSystem.kt"
    l = {
        0x4b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic $fileOrDirectory:Lokio/Path;

.field public final synthetic $this_commonDeleteRecursively:Lokio/FileSystem;

.field private synthetic L$0:Ljava/lang/Object;

.field public label:I


# direct methods
.method public constructor <init>(Lokio/FileSystem;Lokio/Path;Ll4/d;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokio/FileSystem;",
            "Lokio/Path;",
            "Ll4/d<",
            "-",
            "Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    iput-object p2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ln4/i;-><init>(ILl4/d;)V

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

    new-instance v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    iget-object v1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    iget-object p0, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    invoke-direct {v0, v1, p0, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;-><init>(Lokio/FileSystem;Lokio/Path;Ll4/d;)V

    iput-object p1, v0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public final invoke(Lj7/j;Ll4/d;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lj7/j<",
            "-",
            "Lokio/Path;",
            ">;",
            "Ll4/d<",
            "-",
            "Lh4/z;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->create(Ljava/lang/Object;Ll4/d;)Ll4/d;

    move-result-object p0

    check-cast p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;

    sget-object p1, Lh4/z;->a:Lh4/z;

    invoke-virtual {p0, p1}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lj7/j;

    check-cast p2, Ll4/d;

    invoke-virtual {p0, p1, p2}, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->invoke(Lj7/j;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 12

    sget-object v0, Lm4/a;->a:Lm4/a;

    iget v1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_15

    if-ne v1, v2, :cond_d

    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    goto :goto_32

    :cond_d
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_15
    invoke-static {p1}, Lh4/l;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->L$0:Ljava/lang/Object;

    move-object v3, p1

    check-cast v3, Lj7/j;

    iget-object v4, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$this_commonDeleteRecursively:Lokio/FileSystem;

    new-instance v5, Li4/h;

    invoke-direct {v5}, Li4/h;-><init>()V

    iget-object v6, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->$fileOrDirectory:Lokio/Path;

    const/4 v7, 0x0

    const/4 v8, 0x1

    iput v2, p0, Lokio/internal/-FileSystem$commonDeleteRecursively$sequence$1;->label:I

    move-object v9, p0

    invoke-static/range {v3 .. v9}, Lokio/internal/-FileSystem;->collectRecursively(Lj7/j;Lokio/FileSystem;Li4/h;Lokio/Path;ZZLl4/d;)Ljava/lang/Object;

    move-result-object p0

    if-ne p0, v0, :cond_32

    return-object v0

    :cond_32
    :goto_32
    sget-object p0, Lh4/z;->a:Lh4/z;

    return-object p0
.end method
