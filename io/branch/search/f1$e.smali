.class public final Lio/branch/search/f1$e;
.super Ln4/c;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ln4/e;
    c = "io.branch.search.internal.interfaces.KNetworkInterfaceImpl"
    f = "KNetworkInterface.kt"
    l = {
        0x145
    }
    m = "makeGet"
.end annotation


# instance fields
.field public synthetic a:Ljava/lang/Object;

.field public b:I

.field public final synthetic c:Lio/branch/search/f1;


# direct methods
.method public constructor <init>(Lio/branch/search/f1;Ll4/d;)V
    .registers 3

    iput-object p1, p0, Lio/branch/search/f1$e;->c:Lio/branch/search/f1;

    invoke-direct {p0, p2}, Ln4/c;-><init>(Ll4/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 8

    iput-object p1, p0, Lio/branch/search/f1$e;->a:Ljava/lang/Object;

    iget p1, p0, Lio/branch/search/f1$e;->b:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lio/branch/search/f1$e;->b:I

    iget-object v0, p0, Lio/branch/search/f1$e;->c:Lio/branch/search/f1;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p0

    invoke-virtual/range {v0 .. v5}, Lio/branch/search/f1;->a(Lio/branch/search/t5;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ll4/d;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
