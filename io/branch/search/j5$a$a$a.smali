.class public final Lio/branch/search/j5$a$a$a;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/j5$a$a;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.util.MethodDebouncer$$special$$inlined$map$1$2"
    f = "Coros.kt"
    l = {
        0x88
    }
    m = "emit"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/j5$a$a;


# direct methods
.method public constructor <init>(Lio/branch/search/j5$a$a;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/j5$a$a$a;->c:Lio/branch/search/j5$a$a;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lio/branch/search/j5$a$a$a;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/j5$a$a$a;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/j5$a$a$a;->b:I

    iget-object p1, p0, Lio/branch/search/j5$a$a$a;->c:Lio/branch/search/j5$a$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lio/branch/search/j5$a$a;->emit(Ljava/lang/Object;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
