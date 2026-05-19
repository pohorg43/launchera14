.class public final Lio/branch/search/i1$d;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/i1;->a(JZLl4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.LocalJob"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0x162,
        0x167
    }
    m = "awaitFor"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/i1;

.field public d:Ljava/lang/Object;

.field public e:J


# direct methods
.method public constructor <init>(Lio/branch/search/i1;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/i1$d;->c:Lio/branch/search/i1;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    iput-object p1, p0, Lio/branch/search/i1$d;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/i1$d;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/i1$d;->b:I

    iget-object p1, p0, Lio/branch/search/i1$d;->c:Lio/branch/search/i1;

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2, p0}, Lio/branch/search/i1;->a(JZLl4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
