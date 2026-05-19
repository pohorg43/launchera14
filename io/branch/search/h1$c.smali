.class public final Lio/branch/search/h1$c;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.LocalInterfaceRewriteKt"
    f = "LocalInterfaceRewrite.kt"
    l = {
        0xeb,
        0xfb
    }
    m = "localSearch"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public c:Ljava/lang/Object;

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:J


# direct methods
.method public constructor <init>(Ll4/d;)V
    .registers 2

    invoke-direct {p0, p1}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    iput-object p1, p0, Lio/branch/search/h1$c;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/h1$c;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/h1$c;->b:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p1, p0}, Lio/branch/search/h1;->a(Lio/branch/search/m;Lio/branch/search/BranchLocalSearchRequest;Lm7/j0;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
